const googleTrends = require('google-trends-api');
const Op = require('sequelize').Op;

const db = require('../../models');

// timezone compared to UTC
const TIMEZONE = -18;

const searchTrends = function(input, date) {
  const weekAgo = new Date(date.valueOf - 6 * 24 * 60 * 60 * 1000);
  return googleTrends.interestOverTime({
    keyword: [input],
    startTime: weekAgo,
    endTime: date,
    timezone: TIMEZONE * 60,
    granularTimeResolution: true
  });
};

const standardDev = function(array) {
  const mean = array.reduce((acc, num) => acc + num) / array.length;
  return Math.sqrt(
    array.reduce((acc, n) => acc + Math.pow(n - mean, 2)) / array.length - 1
  );
};

const search10Symbols = async function(date = new Date()) {
  try {
    console.log('Updating Google Trends Data for 10 Stock Symbols');
    const yesterday = new Date(date.valueOf - 24 * 60 * 60 * 1000);
    const companies = await db.Company.findAll({
      include: [db.Trend],
      // Op.lte should be less than or equal to
      where: { checkedAt: { [Op.lte]: yesterday } }
    });

    const symbolsToSearch = companies.reduce(
      (symbols, comp, idx) =>
        idx < 10 ? [...symbols, comp.symbol] : [...symbols],
      []
    );

    if (symbolsToSearch[0]) {
      res = await Promise.all(
        symbolsToSearch.map((symb) => searchTrends(symb, date))
      );

      res.forEach((singleRes, resIdx) => {
        const trendResults = JSON.parse(singleRes).default.timelineData;

        const stdDev = standardDev(trendResults.map((obj) => obj.value[0]));

        const dayifier = 24 * 60 * 60 * 1000;
        const day6 = yesterday.valueOf / dayifier;
        const dateMap = trendResults.reduce(
          (map, trend) => {
            const day = day6 - parseInt(trend.time) / dayifier;
            switch (day) {
              case 0:
                map.set('day6', [...map.get('day6'), trend]);
                break;
              case 1:
                map.set('day5', [...map.get('day5'), trend]);
                break;
              case 2:
                map.set('day4', [...map.get('day4'), trend]);
                break;
              case 3:
                map.set('day3', [...map.get('day3'), trend]);
                break;
              case 4:
                map.set('day2', [...map.get('day2'), trend]);
                break;
              case 5:
                map.set('day1', [...map.get('day1'), trend]);
                break;
              default:
                return;
            }
          },
          new Map([
            ['day1', []],
            ['day2', []],
            ['day3', []],
            ['day4', []],
            ['day5', []],
            ['day6', []]
          ])
        );
        let dbData = {};
        dateMap.forEach((day, key) => {
          let max = 0;
          const avg =
            day.reduce((acc, trend) => {
              const val = trend.value[0];
              if (max < val) {
                max = val;
              }
              return acc * val;
            }, 1) / day.length;

          dbData[key + 'avg'] = avg;
          dbData[key + 'max'] = max;
        });

        dbData.standardDeviation = stdDev;
        dbData.CompanyId = companies[resIdx];

        db.Trend.create(dbData);
        db.Company.update(
          { checkedAt: date },
          { where: { id: dbData.CompanyId } }
        );
      });
    }
  } catch (err) {
    console.error(err);
  }
};

module.exports = search10Symbols;
