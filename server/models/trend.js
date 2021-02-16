module.exports = function(sequelize, DataTypes) {
  const Trend = sequelize.define('Trend', {
    //note, day1 should be the oldest date that was searched, signifying a week ago.
    day1avg: {
      type: DataTypes.FLOAT(6, 3),
      allowNull: false
    },
    day1max: {
      type: DataTypes.INTEGER(3),
      allowNull: false
    },
    day2avg: {
      type: DataTypes.FLOAT(6, 3),
      allowNull: false
    },
    day2max: {
      type: DataTypes.INTEGER(3),
      allowNull: false
    },
    day3avg: {
      type: DataTypes.FLOAT(6, 3),
      allowNull: false
    },
    day3max: {
      type: DataTypes.INTEGER(3),
      allowNull: false
    },
    day4avg: {
      type: DataTypes.FLOAT(6, 3),
      allowNull: false
    },
    day4max: {
      type: DataTypes.INTEGER(3),
      allowNull: false
    },
    day5avg: {
      type: DataTypes.FLOAT(6, 3),
      allowNull: false
    },
    day5max: {
      type: DataTypes.INTEGER(3),
      allowNull: false
    },
    day6avg: {
      type: DataTypes.FLOAT(6, 3),
      allowNull: false
    },
    day6max: {
      type: DataTypes.INTEGER(3),
      allowNull: false
    },
    standardDeviation: {
      type: DataTypes.FLOAT(6, 3),
      allowNull: false
    }
  });
};
