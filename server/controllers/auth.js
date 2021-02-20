// controller
const db = require('../models');

module.exports = {
  addUser: (req, res) => {
    console.log('---------------controller--------');
    console.log(req.body);
    db.user
      .create(req.body)
      .then((result) => {
        //res.redirect('/home');
        res.json(result);
      })
      .catch((err) => {
        res.status(401).json(err);
      });
  },
  login: (req, res) => {
    res.json(req.user);
  }
};
