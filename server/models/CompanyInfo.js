module.exports = function(sequelize, DataTypes) {
  const CompanyInfo = sequelize.define('CompanyInfo', {
    symbol: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
      validate: {
        notEmpty: true
      }
    },

    company: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        notEmpty: true
      }
    },

    sector: DataTypes.STRING,

    checkedAt: {
      type: DataTypes.Date,
      validate: {
        isDate: true
      }
    }
  });
};
