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
      let lastTrendAvgs = new Map();
      for (let i = 6; i > daysDiff; i--) {
        lastTrendAvgs.set(i, lastTrend[`day${i}avg`]);
      }
      const topAvg = { avg: 0, day: 0 };
      lastTrendAvgs.forEach((avg, key) => {
        if (topAvg.avg < avg) {
          topAvg.avg = avg;
          topAvg.day = key;
        }
      });

      let percentage = 15;
      if (lastTrend.standardDeviation * 2 > percentage) {
        percentage = lastTrend.standardDeviation * 2;
      }

      const minimumHitReq = topAvg.avg - percentage;
      const compAvg = newTrend[`day${topAvg.day - daysDiff}avg`];
      if (compAvg < minimumHitReq) {
        const rating = minimumHitReq / (compAvg < 1 ? 1 : compAvg);
        db.top_hits.create({
          CompanyId: company.dataValues.id,
          indicator: rating
        });
      }
    }
  }
};

module.exports = checkHit;
