const router = require('express').Router();
const authRoutes = require('./auth');
const tophits = require('./tophits');
const signup = require('./signup');
const comments = require('./comments');

router.use('/auth', authRoutes);
router.use('/signup', signup);
router.use('/tophits', tophits);
router.use('/comments', comments);
module.exports = router;
