const db = require('../models');

// define models for top hits controller
module.exports = {
  createComment: function(req, res) {
    db.Comment.create(req.body)
      .then((comment) => res.json(comment))
      .catch((err) => res.status(401).json(err));
  },
  findCommentsByHits: function({ params }, res) {
    db.Comment.findAll({
      include: [db.user],
      where: { topHitId: params.id }
    })
      .then((comments) => {
        res.json(comments);
      })
      .catch((err) => res.status(400).json(err));
  }
};
