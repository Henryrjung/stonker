const db = require('../../models');

const checkHit = (company, newTrend) => {
  if (newTrend.day6max === 100) {
    const lastTrend =
      company.dataValues.Trends[company.dataValues.Trends.length - 1];
    // day1max is left out because it cannot be compared to newTrend
    const lastTrendMaxes = [
      lastTrend.day2max,
      lastTrend.day3max,
      lastTrend.day4max,
      lastTrend.day5max,
      lastTrend.day6max
    ];
    const lastMax = { max: 0, index: 0 };
    lastTrendMaxes.forEach((max, idx) => {
      if (lastMax.max < max) {
        lastMax.max = max;
        lastMax.index = idx;
      }
    });
    const diff = lastMax.max - newTrend[`day${lastMax.index}max`];
    const amount = diff / lastTrend.standardDeviation - 1;
    if (amount > 0) {
      const rating = Math.trunc(amount * 10 + 1);
      db.TopHit.create({ symbol: company.symbol, indicator: rating });
    }
  }
};

module.exports = checkHit;
