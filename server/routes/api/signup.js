const router = require('express').Router();
const signup = require('../../controllers/signup');

router.route('/').get(signup);

module.exports = router;
