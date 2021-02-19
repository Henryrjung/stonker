const router = require('express').Router();
const authRoutes = require('./auth');
const tophits = require('./tophits');

router.use('/auth', authRoutes);
router.use('/tophits', tophits);
module.exports = router;
