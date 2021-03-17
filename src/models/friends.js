const db = require('../helpers/db')

exports.getUsersFriend = (id) => {
  return new Promise((resolve, reject) => {
    const query = db.query(`
    SELECT ur.idUser2, u.username, u.phone, u.status, u.DOB, u.photo FROM users_relation ur
    INNER JOIN  users u ON ur.idUser2 = u.id
    WHERE idUser1 = ${id}
    `
    , (err, res, field) => {
      if (err) reject(err)
      resolve(res)
    })
    console.log(query.sql)
  })
}

exports.getUsersByUserNameAsync = (username) => {
  return new Promise((resolve, reject) => {
    const query = db.query(`
    SELECT * FROM users WHERE username='${username}'
  `, (err, res, field) => {
      if (err) reject(err)
      resolve(res)
    })
    console.log(query.sql)
  })
}

exports.checkAlreadyFriend = (data) => {
  return new Promise((resolve, reject) => {
    const query = db.query(`
    SELECT * FROM users_relation WHERE idUser1 = ${data.idUser1} AND idUser2 = ${data.idUser2}
  `, (err, res, field) => {
      if (err) reject(err)
      resolve(res)
    })
    console.log(query.sql)
  })
}

exports.addFriend = (data) => {
  return new Promise((resolve, reject) => {
    const query = db.query(`
    INSERT INTO users_relation
    (${Object.keys(data).join()})
    VALUES
    (${Object.values(data).map(item => `"${item}"`).join(',')})
    `, (err, res, field) => {
      if (err) reject(err)
      resolve(res)
    })
    console.log(query.sql)
  })
}

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
