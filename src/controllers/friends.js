const friendModel = require('../models/friends')
const response = require('../helpers/response')

exports.getFriendList = async (req, res) => {
  const { id } = req.userData
  try {
    const friendList = await friendModel.getUsersFriend(id)
    if (!friendList) {
      return response(res, 200, true, 'This user has no friends')
    } else {
      return response(res, 200, true, 'Friend list', friendList)
    }
  } catch (err) {
    return response(res, 500, false, 'Server error')
  }
}

exports.addFriend = async (req, res) => {
  const { id } = req.userData
  const { username } = req.body
  const existingUser = await friendModel.getUsersByUserNameAsync(username)
  if (existingUser.length > 0) {
    const alreadyFriend = await friendModel.checkAlreadyFriend({ idUser1: id, idUser2: existingUser[0].id })
    if (alreadyFriend.length > 0) {
      return response(res, 200, true, 'You already add this user')
    }
    await friendModel.addFriend({ idUser1: id, idUser2: existingUser[0].id })
    await friendModel.addFriend({ idUser2: id, idUser1: existingUser[0].id })
    return response(res, 200, true, 'Add friend success')
  } else {
    return response(res, 404, false, 'User not found')
  }
}
