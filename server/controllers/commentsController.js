const db = require('../models');

// define models for top hits controller
module.exports = {
  createComment: function({ body }, res) {
    db.Comment.create(body)
      .then((comment) => res.json(comment))
      .catch((err) => res.status(401).json(err));
  },
  findCommentsByHits: function({ id }, res) {
    db.Comment.findAll({ where: { topHitsId: id }, include: [db.User] })
      .then((comments) => res.json(comments))
      .catch((err) => res.status(400).json(err));
  }
};
