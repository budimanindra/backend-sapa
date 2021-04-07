const friendModel = require('../models/friends')
const response = require('../helpers/response')

exports.getFriendList = async (req, res) => {
  const { id } = req.userData
  try {
    const friendList = await friendModel.getUserFriends(id)
    if (!friendList) {
      return response(res, 200, true, 'This user has no friends')
    } else {
      return response(res, 200, true, 'Friend list', friendList)
    }
  } catch (err) {
    return response(res, 500, false, 'Server error')
  }
}

exports.getFriendListPagination = async (req, res) => {
  const {
    page = 1,
    search = '',
    sort = 'ASC',
    limit = 8,
    by = 'username'
  } = req.query

  const { id } = req.userData

  try {
    const startData = limit * page - limit
    const totalData = await friendModel.getUserFriendsCount(id)
    const totalDataSearch = await friendModel.getUserFriendsCountSearch({
      keyword: search,
      sort,
      offset: startData,
      limit,
      by,
      id: id
    })
    const totalPages = Math.ceil(totalData / limit)

    try {
      const results = await friendModel.getUserFriendsPagination({
        keyword: search,
        sort,
        offset: startData,
        limit,
        by,
        id: id
      })

      const modifiedTotalData = req.query.search ? totalDataSearch : totalData
      const modifiedTotalPage = req.query.search
        ? Math.ceil(modifiedTotalData / limit)
        : totalPages

      if (results.length < 1) {
        return response(
          res,
          200,
          true,
          'This user has no friends',
          results,
          modifiedTotalData,
          modifiedTotalPage,
          page,
          req
        )
      } else {
        return response(
          res,
          200,
          true,
          'Successfully to get user friends',
          results,
          modifiedTotalData,
          modifiedTotalPage,
          page,
          req
        )
      }
    } catch (err) {
      console.log(err)
      return response(res, 500, false, 'Failed to get all user friends, server error1')
    }
  } catch (err) {
    console.log(err)
    return response(res, 500, false, 'Failed to get all user friends, server error2')
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
