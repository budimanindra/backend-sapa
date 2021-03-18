const chatModel = require('../models/chat')
const response = require('../helpers/response')

// exports.sendChat = async (req, res) => {
//   const { id } = req.userData
//   try {
//     const friendList = await friendModel.getUsersFriend(id)
//     if (!friendList) {
//       return response(res, 200, true, 'This user has no friends')
//     } else {
//       return response(res, 200, true, 'Friend list', friendList)
//     }
//   } catch (err) {
//     return response(res, 500, false, 'Server error')
//   }
// }

exports.getChat = async (req, res) => {
  const { id } = req.userData
  const { receiver } = req.params
  console.log(receiver)
  const results = await chatModel.getChat(id, receiver)
  return response(res, 200, true, 'chat list', results)
}

exports.sendChat = async (req, res) => {
  const { id } = req.userData
  const { receiver, message } = req.body
  const results = await chatModel.sendChat(id, receiver, message)
  if (results.insertId > 0) {
    const chat = await chatModel.getChatById(results.insertId)
    req.socket.emit(`${id}-${receiver}`, chat[0])
  }
  return response(res, 200, true, 'Chat sent')
}

// exports.sendChat2 = async (req, res) => {
//   const { id } = req.userData
//   const { receiver, message } = req.body
//   const results = await chatModel.sendChat(id, receiver, message)
//   if (results.insertId > 0) {
//     const chat = await chatModel.getChatById(results.insertId)
//     req.socket.emit(`${id}-${receiver}`, chat[0])
//   }
//   return response(res, 200, true, 'Chat sent')
// }
