var express = require('express');
var router = express.Router();

/* GET wait teams. */
router.get('/', function(req, res, next) {
  res.render('screen/index', {});
});

/* next is show scores */
router.get('/wait_teams', function(req, res, next) {
  res.render('screen/wait_teams', {});
});

/* next is black_card or end game */
router.get('/show_scores', function(req, res, next) {
  res.render('screen/show_scores', {});
});

/* next is show results */
router.get('/show_black_card', function(req, res, next) {
  res.render('screen/show_black_card', {});
});

/* next is show scores */
router.get('/show_results', function(req, res, next) {
  res.render('screen/show_results', {});
});

/* next is home */
router.get('/end_game', function(req, res, next) {
  res.render('screen/end_game', {});
});

module.exports = router;