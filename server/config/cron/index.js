const Op = require('sequelize').Op;

const db = require('../../models');
const searchTrends = require('./searchTrends');
const createTrend = require('./createTrend');
const searchCompanies = require('./searchCompanies');

const cronJob = async function() {
  const today = new Date('2020-02-20');
  const company = await searchCompanies(today);
  console.log('company :>> ', company);
  if (company.symbol) {
    const trendData = await searchTrends(company.symbol, today);
    const dbTrendData = await createTrend(company, trendData, today);

    await db.Trend.create(dbTrendData);
    await db.Company.update(
      { checkedAt: today },
      { where: { id: company.id } }
    );
  }
};

module.exports = cronJob;
