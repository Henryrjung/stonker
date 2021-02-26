const router = require('express').Router();
const authRoutes = require('./auth');
const tophits = require('./tophits');
const signup = require('./signup');

router.use('/auth', authRoutes);
router.use('/signup', signup);
router.use('/tophits', tophits);
module.exports = router;
