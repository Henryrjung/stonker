module.exports = function(sequelize, DataTypes) {
  const CompanyInfo = sequelize.define('company_info', {
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
      type: DataTypes.DATEONLY,
      validate: {
        isDate: true
      }
    }
  });
};
