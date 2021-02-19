const standardDev = function(array) {
  const mean = array.reduce((acc, num) => acc + num) / array.length;
  return Math.sqrt(
    array.reduce((acc, n) => acc + Math.pow(n - mean, 2)) / array.length - 1
  );
};

const createTrend = async function(company, trends, date = new Date()) {
  console.log('createTrend');
  const stdDev = standardDev(trendResults.map((obj) => obj.value[0]));

  const dayifier = 24 * 60 * 60;
  const day6 = date / (dayifier * 1000);
  const dateMap = trendResults.reduce(
    (map, trend) => {
      const day = Math.trunc(day6 - parseInt(trend.time) / dayifier);
      switch (day) {
        case 0:
          map.set('day6', [...map.get('day6'), trend]);
          return map;
        case 1:
          map.set('day5', [...map.get('day5'), trend]);
          return map;
        case 2:
          map.set('day4', [...map.get('day4'), trend]);
          return map;
        case 3:
          map.set('day3', [...map.get('day3'), trend]);
          return map;
        case 4:
          map.set('day2', [...map.get('day2'), trend]);
          return map;
        case 5:
          map.set('day1', [...map.get('day1'), trend]);
          return map;
        default:
          map.set('day7', [trend]);
          return map;
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
        return acc + val;
      }, 1) / day.length;

    dbData[key + 'avg'] = avg.toFixed(3);
    dbData[key + 'max'] = max;
  });

  dbData.standardDeviation = stdDev.toFixed(3);
  return dbData;
};

module.exports = createTrend;
