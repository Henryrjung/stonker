module.exports = function(sequelize, DataTypes) {
  const Comment = sequelize.define('Comment', {
    comments: DataTypes.STRING(600)
  });

  Comment.associate = function(models) {
    Comment.belongsTo(models.top_hits, {
      foreignKey: {
        allowNull: true
      }
    }),
      Comment.belongsTo(models.user, {
        foreignKey: {
          allowNull: true
        }
      });
  };

  return Comment;
};
