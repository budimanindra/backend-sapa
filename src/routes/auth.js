const routes = require('express').Router()
const authController = require('../controllers/auth')
const authorization = require('../middlewares/auth')

routes.post('/login', authController.login)
routes.post('/register', authController.register)
routes.delete('/', authorization.authCheck, authController.deleteAccount)

module.exports = routes
