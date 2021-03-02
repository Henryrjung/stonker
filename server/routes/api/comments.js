const router = require('express').Router();
const commentsController = require('../../controllers/commentsController');

router.route('/').post(commentsController.createComment);

router.route('/:id').get(commentsController.findCommentsByHits);

module.exports = router;
