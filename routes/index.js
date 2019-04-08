var express = require('express');
var router = express.Router();
// var api = require('../controllers/user.js');
var userController = require('./../controllers/user.js');//第五步引入
var authController = require('./../controllers/auth.js');//第六步引入
var authMiddleware = require('./../middlewares/auth.js');
var clueController = require('./../controllers/clue.js');//第七步引入

/* GET home page. */

// router.get('/admin/user/create', userController.renderUserCreate);
// router.get('/admin/user/:id/edit', userController.edit);

router.get('/', function(req, res, next) {
  res.render('index');
});


router.get('/admin/user',authMiddleware.mustLogin, userController.show);
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

router.get('/admin/user/create',authMiddleware.mustLogin, function(req, res, next) {
  res.render('admin/user_create');
});

router.get('/admin/user/:id/edit',authMiddleware.mustLogin, function(req, res, next) {
  res.render('admin/user_edit');
});

// router.get('/admin/clue',authMiddleware.mustLogin, function(req, res, next) {
//   res.render('admin/clue');
// });
router.get('/admin/clue', clueController.show);//第七步引入

// router.get('/admin/clue/:id',authMiddleware.mustLogin, function(req, res, next) {
//   res.render('admin/clue_log');
// });
router.get('/admin/clue/:id', clueController.log);//第八步引入


router.get('/admin/login', authController.renderLogin);//第六步引入



router.get('/admin/user', authMiddleware.mustLogin, authMiddleware.mustRoot, userController.show);
router.get('/admin/user/create', authMiddleware.mustLogin, authMiddleware.mustRoot, userController.renderUserCreate);
router.get('/admin/user/:id/edit', authMiddleware.mustLogin, authMiddleware.mustRoot, userController.edit);

module.exports = router;
