module.exports = function(sequelize, DataTypes) {
  const Company = sequelize.define('Company', {
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
      type: DataTypes.DATE,
      validate: {
        isDate: true
      }
    }
  });

  Company.associate = function(models) {
    Company.hasMany(models.Trend, {
      onDelete: 'cascade'
    });
  };

  Company.associate = function(models) {
    Company.hasMany(models.top_hits, {
      onDelete: 'set null'
    });
  };

  return Company;
};
