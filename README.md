# SAPA BACKEND APP WITH NODE AND MYSQL
This is non-optimized minimal backend app with MySQL and node. This app designed to handle the backend of Sapa Real Time Chat App

## Requirements
- NodeJS v12 LTS
- XAMPP

## How To Setting the Database
- Instal XAMPP
- Run apache and mySQL module
- Open localhost/phpmyadmin
- Make database 'backend-sapa'
- Import 'sapa.sql' to the database

## How To Run This App
- Make sure you had clone this repo
- Copy environment from `.env.example` to `.env`
- Configure your `.env` file according to your MySQL credentials
- Open your terminal in this project and run 
  ```
  npm i
  ```
- And then
  ```
  npx nodemon
  ```

## API SPECS
- POST    http://localhost:PORT/auth/login Route for login to an account
- POST    http://localhost:PORT/auth/register Route for register an account
- POST    http://localhost:PORT/auth Route for delete user account

- GET     http://localhost:PORT/chat/:receiver Route for get chat from a selected user
- POST    http://localhost:PORT/chat Route for send a massage

- GET     http://localhost:PORT/friends Route for get friend list
- POST    http://localhost:PORT/friends Route for add friend

- GET     http://localhost:PORT/profile/ Route for get logged in user details
- PATCH   http://localhost:PORT/profile/update-profile-details Route for edit profile details
- PATCH   http://localhost:PORT/update-profile-photo Route for edit profile photo