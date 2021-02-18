module.exports = function(sequelize, DataTypes) {
  const TopHits = sequelize.define('top_hits', {
    symbol: {
      type: DataTypes.STRING,
      allowNull: false,
      unique: true,
      validate: {
        notEmpty: true
      },
      indicator: DataTypes.INTIGER
    }
  });
  return TopHits;
};
