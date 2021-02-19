const Op = require('sequelize').Op;
const db = require('../../models');

const searchCompanies = function(date) {
  console.log('searchCompanies');
  const dayBefore = new Date(date - 24 * 60 * 60 * 1000);
  console.log('dayBefore :>> ', dayBefore);
  db.Company.findOne({
    include: [db.Trend],
    // Op.lte should be less than or equal to
    where: { checkedAt: { [Op.lte]: dayBefore } }
  });
};
module.exports = searchCompanies;
