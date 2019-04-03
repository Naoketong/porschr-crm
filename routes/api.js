var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');//第五步引入
/* GET users listing. */


router.post('/user' , userController.insert);
router.put('/user/:id' , userController.update);
//第五步引入
// router.get('/admin/user', userController.show);
// router.get('/admin/user/create', userController.renderUserCreate);
// router.get('/admin/user/:id/edit', userController.edit);

module.exports = router;
