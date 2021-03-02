const db = require('../models');

// define models for top hits controller
module.exports = {
  createComment: function({ body }, res) {
    db.Comment.create(body)
      .then((comment) => res.json(comment))
      .catch((err) => res.status(401).json(err));
  },
  findCommentsByHits: function({ params }, res) {
    console.log('findCommentByHits');
    db.Comment.findAll({
      include: [db.user],
      where: { TopHitsId: params.id }
    })
      .then((comments) => {
        console.log('comments :>> ', comments);
        res.json(comments);
      })
      .catch((err) => res.status(400).json(err));
  }
};
