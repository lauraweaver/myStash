var Promise = require("bluebird");
var Sequelize = require('sequelize');
var db = require('../db');
var bcrypt = require('bcrypt');

module.exports = {
  //post request
  signup: function(request, response) {
    var username = request.body.username;
    var password = request.body.password;
    
    checkUserExists(username, function(user) {
      if (user !== null) {
        response.redirect('/#/login')
      } else {
        hashPassword(password, function(err, hashedPassword) {
          if (err) {
            response.send(500)
          } else {
            db.models.User.create({
              username: username,
              password: hashedPassword
            }).then(function(createdUser) {
              response.session.userId = createdUser.id
              response.redirect('/')
            });
          }
        })
      }
    })
  },
  //post request
  login: function(request, response) {
    var username = request.body.username
    var password = request.body.password

    checkUserExists(username, function(user) {
      if (user !== null) {
        bcrypt.compare(password, user.password, function(err, result) {
          if (err || result === false) {
            response.redirect('/#/login');
          } else {
            request.session.userId = user.id
            response.redirect('/')
          }
        })  
      } else {
        response.redirect('/#/signup')
      }
    })
  },
  //post request
  logout: function(request, response) {
    request.session.destroy(function(err){
      response.redirect('/#/login');
    });
  },

  // Helper Functions

  hashPassword: function(password, cb) {
    bcrypt.hash(password, 10, cb)
  },

  checkUserExists: function(username, cb) {
    db.models.User.findOne({where: {name: username}}).then(function(user) {
      cb(user)
    })
  }
}
