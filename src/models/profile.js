const db = require('../helpers/db')

exports.updateUserDetails = (data, id) => {
  return new Promise((resolve, reject) => {
    const key = Object.keys(data)
    const value = Object.values(data)
    const query = db.query(`
      UPDATE users 
      SET ${key.map((item, index) => `${item}="${value[index]}"`)}
      WHERE id=${id}`, (err, res, field) => {
      if (err) reject(err)
      resolve(res)
    })
    console.log(query.sql)
  })
}

exports.updateUserPhoto = (data) => {
  return new Promise((resolve, reject) => {
    db.query(`
        UPDATE users
        SET photo = '${data.photo}'
        WHERE id=${data.id}
      `, (err, res, field) => {
      if (err) reject(err)
      resolve(res)
    })
  })
}

exports.getUsersByIdAsync = (id) => {
  return new Promise((resolve, reject) => {
    const query = db.query(`
      SELECT * FROM users WHERE id=${id}
    `, (err, res, field) => {
      if (err) reject(err)
      resolve(res)
    })
    console.log(query.sql)
  })
}
