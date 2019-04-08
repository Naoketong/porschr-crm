var express = require('express');
var router = express.Router();
var userController = require('./../controllers/user.js');//第五步引入
var authController = require('./../controllers/auth.js');//第六步引入
var clueController = require('./../controllers/clue');//第七步引入
/* GET users listing. */

//第五步引入
router.post('/user' , userController.insert);
router.put('/user/:id' , userController.update);
//第六步引入
router.post('/login' , authController.login);
router.post('/clue' , clueController.insert);//第七步引入
//第八步引入
router.put('/clue/:id' , clueController.update);
router.post('/clue/:id/log', clueController.addLog);
//第五步引入
// router.get('/admin/user', userController.show);
// router.get('/admin/user/create', userController.renderUserCreate);
// router.get('/admin/user/:id/edit', userController.edit);

module.exports = router;
