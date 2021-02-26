module.exports = function login(req, res) {
  const { password, ...userObj } = req.user.dataValues;
  res.json(userObj);
};
