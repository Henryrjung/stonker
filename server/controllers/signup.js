const db = require('../models');

module.exports = function addUser(req, res) {
  console.log(req.body);
  db.user
    .create(req.body)
    .then(() => {
      res.redirect(307, 'auth/login/');
      // res.json(result);
    })
    .catch((err) => {
      res.status(401).json(err);
    });
};
