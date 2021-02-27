const db = require('../models');

// define models for top hits controller
module.exports = {
  createComment: function(req, res) {
    db.Comment.create(req.body)
      .then((comment) => res.json(comment))
      .catch((err) => res.status(401).json(err));
  }
};
