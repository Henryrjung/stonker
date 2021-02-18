const router = require('express').Router();
const topHitsController = require('../../controllers/tophitsController');

router.route('/').get(topHitsController.findAll);
