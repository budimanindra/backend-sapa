const upload = require('../helpers/upload').single('photo')
const multer = require('multer')
const bcrypt = require('bcrypt')
const profileModel = require('../models/profile')
const response = require('../helpers/response')

exports.updateUserDetails = async (req, res) => {
  const { id } = req.userData
  const {
    email, password, fullName, phoneNumber
  } = req.body
  try {
    const row = await profileModel.getUsersByIdAsync(id)
    const user = row[0]
    if (!user) {
      return response(res, 400, false, 'Failed to edit profile, unknown user id')
    } else {
      const salt = await bcrypt.genSalt()
      const encryptedPassword = await bcrypt.hash(password, salt)
      const editedUser = {
        ...user,
        email: email || user.email,
        password: password ? encryptedPassword : user.password,
        fullName: fullName || user.fullName,
        phoneNumber: phoneNumber || user.phoneNumber
      }
      try {
        const updateProfile = await profileModel.updateUserDetails(editedUser, id)
        if (!updateProfile) {
          return response(res, 400, false, 'Failed to edit profile')
        } else {
          return response(res, 200, true, 'Successfully to edit profile', {
            ...editedUser,
            password: 'secret'
          })
        }
      } catch (err) {
        return response(res, 500, false, 'Failed to edit profile')
      }
    }
  } catch (err) {
    return response(res, 500, false, 'Failed to edit profile')
  }
}

exports.updatePhoto = async (req, res) => {
  upload(req, res, async err => {
    const { id } = req.userData
    if (err instanceof multer.MulterError) {
      return response(res, 400, false, 'Please upload image with jpg, jpeg, or png extension')
    } else if (err) {
      return response(res, 400, false, 'Please upload image with jpg, jpeg, or png extension')
    }
    try {
      const Data = {
        id: id,
        photo: `${req.file.destination}/${req.file.filename}` || null
      }
      console.log(Data)
      const result = await profileModel.updateUserPhoto(Data)
      console.log(result)
      return response(res, 200, true, 'Successfully update photo profile')
    } catch (err) {
      return response(res, 400, false, 'File cannot be empty')
    }
  })
}

exports.getUserDetails = async (req, res) => {
  const { id } = req.userData
  try {
    const row = await profileModel.getUsersByIdAsync(id)
    const user = row[0]
    if (!user) {
      return response(res, 404, false, 'Failed to get user profile, unknown user id')
    } else {
      return response(res, 200, true, 'Successfully get user profile', {
        ...user,
        password: 'secret'
      })
    }
  } catch (err) {
    return response(res, 500, false, 'Failed to get profile, server error')
  }
}
