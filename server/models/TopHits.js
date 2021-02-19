module.exports = function(sequelize, DataTypes) {
  const TopHit = sequelize.define('TopHit', {
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
  return TopHit;
};
