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

  let trendResults = [];
  if (symbolsToSearch[0]) {
    res = await Promise.all(
      symbolsToSearch.map((symb) => searchTrends(symb, date))
    );
    trendResults = res.default.timelineData;
  }
  const stdDev = standardDev(trendResults.map(obj => obj.value[0]));

};

module.exports = search10Symbols;
