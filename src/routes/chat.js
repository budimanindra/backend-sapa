const routes = require('express').Router()
const chatController = require('../controllers/chat')
const authorization = require('../middlewares/auth')

routes.get('/:receiver', authorization.authCheck, chatController.getChat)
routes.post('/', authorization.authCheck, chatController.sendChat)

module.exports = routes
