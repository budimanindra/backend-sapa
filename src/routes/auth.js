const routes = require('express').Router()
const authController = require('../controllers/auth')
const authorization = require('../middlewares/auth')

routes.post('/login', authController.login)
routes.post('/register', authorization.isFieldsEmpty,
  authorization.isFieldsLength, authController.register)
routes.post('/', authorization.authCheck, authController.deleteAccount)

module.exports = routes
