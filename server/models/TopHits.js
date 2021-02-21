module.exports = function(sequelize, DataTypes) {
  const TopHit = sequelize.define('top_hits', {
    symbol: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
      validate: {
        notEmpty: true
      }
    },
    indicator: DataTypes.INTEGER
  });

  TopHit.associate = function(models) {
    TopHit.belongsTo(models.Company, {
      foreignKey: {
        allowNull: true
      }
    });
  };

  return TopHit;
};
