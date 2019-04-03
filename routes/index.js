var express = require('express');
var router = express.Router();
// var api = require('../controllers/user.js');
var userController = require('./../controllers/user.js');//第五步引入

/* GET home page. */

// router.get('/admin/user/create', userController.renderUserCreate);
// router.get('/admin/user/:id/edit', userController.edit);

router.get('/', function(req, res, next) {
  res.render('index');
});


router.get('/admin/user', userController.show);
// router.get('/admin/user', userController.update);


router.get('/layout', function(req, res, next) {
  res.render('admin_layout');
});

router.get('/admin/login', function(req, res, next) {
  res.render('admin/login');
});

// router.get('/admin/user', function(req, res, next) {
//   res.render('admin/user');
// });

router.get('/admin/user/create', function(req, res, next) {
  res.render('admin/user_create');
});

router.get('/admin/user/:id/edit', function(req, res, next) {
  res.render('admin/user_edit');
});

router.get('/admin/clue', function(req, res, next) {
  res.render('admin/clue');
});

router.get('/admin/clue/:id', function(req, res, next) {
  res.render('admin/clue_log');
});





module.exports = router;
