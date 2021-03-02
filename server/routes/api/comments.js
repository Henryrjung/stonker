const router = require('express').Router();
const commentsController = require('../../controllers/commentsController');

router.route('/:id').get(commentsController.findCommentsByHits);

router.route('/').post(commentsController.createComment);

module.exports = router;
