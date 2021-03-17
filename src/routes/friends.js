const routes = require('express').Router()
const friendsController = require('../controllers/friends')
const authorization = require('../middlewares/auth')

routes.get('/', authorization.authCheck, friendsController.getFriendList)
routes.post('/', authorization.authCheck, friendsController.addFriend)

module.exports = routes
