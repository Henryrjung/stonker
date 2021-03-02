const db = require('../models');

// define models for top hits controller
module.exports = {
  findAll: function(req, res) {
    db.top_hits
      .findAll({ include: [db.Company] })
      .then((dbModel) => res.json(dbModel))
      .catch((err) => res.status(422).json(err));
  },

  findOne: function(req, res) {
    if (req.params.id) {
      db.top_hits
        .findAll({
          include: [db.Company],
          where: { id: req.params.id }
        })
        .then((dbModel) => res.json(dbModel))
        .catch((err) => res.status(422).json(err));
    }
  }
};
