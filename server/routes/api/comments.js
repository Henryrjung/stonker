const router = require('express').Router();
const commentsController = require('../../controllers/commentsController');

router.route('/').post(commentsController.createComment);

module.exports = router;
