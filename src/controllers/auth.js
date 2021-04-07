const userModel = require('../models/users')
const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')
const { APP_KEY } = process.env
const response = require('../helpers/response')

exports.login = async (req, res) => {
  const { email, password } = req.body
  const existingUser = await userModel.getUsersByConditionAsync({ email })
  if (existingUser.length > 0) {
    const compare = await bcrypt.compare(password, existingUser[0].password)
    if (compare) {
      const { id } = existingUser[0]
      const token = jwt.sign({ id }, APP_KEY)
      console.log('ini id')
      console.log({ id })
      console.log(token)
      return response(res, 200, true, 'Login success', token)
    }
  }
  return response(res, 401, false, 'Wrong email or password')
}

exports.register = async (req, res) => {
  const { email, username, password } = req.body
  const isEmailExists = await userModel.getUsersByConditionAsync({ email })
  const isUsernameExists = await userModel.getUsersByConditionAsync({ username })
  console.log(isEmailExists.length)
  console.log(isUsernameExists.length)
  if (isEmailExists.length < 1 && isUsernameExists.length < 1) {
    const salt = await bcrypt.genSalt()
    const encryptedPassword = await bcrypt.hash(password, salt)
    const createUser = await userModel.createUserAsync({ email, username, password: encryptedPassword })
    if (createUser.insertId > 0) {
      const { insertId } = createUser
      const id = insertId
      const token = jwt.sign({ id }, APP_KEY)
      console.log('ini insert id')
      console.log({ insertId })
      console.log('ini id')
      console.log({ id })
      return response(res, 200, true, 'Register success!', token)
    } else {
      return response(res, 400, false, 'Register Failed!')
    }
  } else {
    return response(res, 400, false, 'Register Failed, username or email already exists!')
  }
}

exports.deleteAccount = async (req, res) => {
  const { id } = req.userData
  const { password } = req.body
  const existingUser = await userModel.getUsersByIdAsync(id)
  // console.log(existingUser)
  if (existingUser.length > 0) {
    console.log((password, existingUser[0].password))
    const compare = await bcrypt.compare(password, existingUser[0].password)
    if (compare) {
      try {
        const deleteAccount = await userModel.deleteUserById(id)
        if (deleteAccount.affectedRows > 0) {
          return response(res, 200, true, 'Account deleted successfully')
        } else {
          return response(res, 400, false, 'Failed to delete account')
        }
      } catch (err) {
        return response(res, 500, false, 'Failed to delete account, server error')
      }
    } else {
      return response(res, 400, false, 'Wrong user password')
    }
  } else {
    return response(res, 400, false, 'Theres no account to delete')
  }
}
