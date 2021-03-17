const express = require('express')
const bodyParser = require('body-parser')
const morgan = require('morgan')
const cors = require('cors')
const dotenv = require('dotenv')

dotenv.config()
const { APP_PORT } = process.env
const app = express()

app.use(bodyParser.urlencoded({ extended: false }))
app.use(morgan('dev'))
app.use(cors('*'))

app.use('/uploads', express.static('uploads'))
app.use('/auth', require('./src/routes/auth'))
app.use('/profile', require('./src/routes/profile'))
app.use('/friends', require('./src/routes/friends'))

app.get('/', (request, response) => {
  return response.json({
    success: true,
    message: 'Backend is running well'
  })
})

app.listen(APP_PORT, () => {
  console.log(`App is running on port ${APP_PORT}`)
})