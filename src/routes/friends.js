const routes = require('express').Router()
const friendsController = require('../controllers/friends')
const authorization = require('../middlewares/auth')

// routes.get('/friends/', authorization.authCheck, friendsController.getFriendList)
routes.get('/friends', authorization.authCheck, friendsController.getFriendListPagination)
routes.post('/friends/', authorization.authCheck, friendsController.addFriend)

module.exports = routes
