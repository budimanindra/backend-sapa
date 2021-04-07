const db = require('../helpers/db')

exports.getChat = (id, receiver) => {
  return new Promise((resolve, reject) => {
    const query = db.query(`
    SELECT * FROM chat_history WHERE sender_id=${id} AND receiver_id = ${receiver} OR sender_id = ${receiver} AND receiver_id = ${id}  ORDER BY createdAt DESC
  `, (err, res, field) => {
      if (err) reject(err)
      resolve(res)
    })
    console.log(query.sql)
  })
}

// ORDER BY createdAt DESC

exports.sendChat = (senderId, receiverId, message) => {
  return new Promise((resolve, reject) => {
    const query = db.query(`
    INSERT INTO chat_history
    (sender_id, receiver_id, message)
    VALUES
    (${senderId}, ${receiverId}, '${message}')
    `, (err, res, field) => {
      if (err) reject(err)
      resolve(res)
    })
    console.log(query.sql)
  })
}

exports.getChatById = (id) => {
  return new Promise((resolve, reject) => {
    const query = db.query(`
        SELECT * FROM chat_history WHERE id=${id}
      `, (err, res, field) => {
      if (err) reject(err)
      resolve(res)
    })
    console.log(query.sql)
  })
}
