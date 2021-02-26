const router = require('express').Router();
const topHitsController = require('../../controllers/tophitsController');

router.route('/').get(topHitsController.findAll);

router.route('/:id').get(topHitsController.findOne);

module.exports = router;
