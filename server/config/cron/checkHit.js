const db = require('../../models');

const checkHit = (company, newTrend) => {
  if (newTrend.day6max === 100) {
    const lastTrend = company.dataValues.Trends.reduce((acc, trend) =>
      acc.createdAt < trend.createdAt ? trend : acc
    );
    const daysDiff = Math.round(
      (newTrend.createdAt - lastTrend.createdAt) / (24 * 60 * 60 * 1000)
    );
    if (daysDiff < 6) {
      // this will exclude days which lastTrend and newTrend don't have in common
      let lastTrendMaxes = new Map();
      for (let i = 6; i > daysDiff; i--) {
        lastTrendMaxes.set(i, lastTrend[`day${i}max`]);
      }
      const lastMax = { max: 0, day: 0 };
      lastTrendMaxes.forEach((max, key) => {
        if (lastMax.max < max) {
          lastMax.max = max;
          lastMax.day = key;
        }
      });
      const diff = lastMax.max - newTrend[`day${lastMax.day - daysDiff}max`];

      // a hit will only be generated if the previous high (that they have in common) changes by
      // more than double the standard deviation or 15, whichever is greater.
      let divisor = 15;
      if (lastTrend.standardDeviation * 2 > divisor) {
        divisor = lastTrend.standardDeviation * 2;
      }
      const rating = (diff / divisor).toFixed(2);
      if (rating > 1) {
        db.top_hits.create({
          CompanyId: company.dataValues.id,
          indicator: rating
        });
      }
    }
  }
};

module.exports = checkHit;
