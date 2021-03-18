const routes = require('express').Router()
const profileController = require('../controllers/profile')
const authorization = require('../middlewares/auth')

routes.get('/', authorization.authCheck, profileController.getUserDetails)
routes.patch('/update-profile-details', authorization.authCheck, profileController.updateUserDetails)
routes.patch('/update-profile-photo', authorization.authCheck, profileController.updatePhoto)
routes.patch('/update-profile-username', authorization.authCheck, profileController.updateUsername)
routes.patch('/update-profile-password', authorization.authCheck, profileController.updatePassword)
routes.patch('/update-profile-email', authorization.authCheck, profileController.updateEmail)

module.exports = routes
