module.exports = function(sequelize, DataTypes) {
  const TopHit = sequelize.define('top_hits', {
    indicator: DataTypes.FLOAT(5, 2)
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
