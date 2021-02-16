const googleTrends = require('google-trends-api');
const Op = require('sequelize').Op;

const db = require('../../models');

// timezone compared to UTC
const TIMEZONE = -18;

const searchTrends = function(input, date = new Date()) {
  const weekAgo = new Date(date.valueOf - 6 * 24 * 60 * 60 * 1000);
  return googleTrends.interestOverTime({
    keyword: [input],
    startTime: weekAgo,
    endTime: date,
    timezone: TIMEZONE * 60,
    granularTimeResolution: true
  });
};

const search10Symbols = async function(date) {
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
    await Promise.all(symbolsToSearch.map((symb) => searchTrends(symb, date)));
  }
};
