const db = require('../models');

// define models for top hits controller
module.exports = {
  findAll: function(req, res) {
    db.top_hits
      .findAll()
      .then((dbModel) => res.json(dbModel))
      .catch((err) => res.status(422).json(err));
  }
};
