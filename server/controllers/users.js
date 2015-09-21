var Promise = require("bluebird");
var Sequelize = require('sequelize');
var db = require('./db');
var bcrypt = require('bcrypt-nodejs');

module.exports = {
  
  attemptSignup: function(request, response) {
    var username = request.body.username;
    var password = request.body.password; /*!!!need to encrypt password*/
    var session_id = request.sessionID;
    
    checkUserExists(request, function(user) {
      if (user !== null) {
        response.redirect('/')
      } else {
        db.User.create({
          username: username,
          password: password,
          sessionId: session_id
        }).then(function() {
          response.redirect('/signedIn')
        });
      }
    })
  },

  attemptLogin: function(request, response) {
    checkUserExists(request, function(user) {
      if (user !== null) {
        bcrypt.compare(password, user.password, function(err, result) {
          if (err) { console.log(err) }
          if (result === false) {
            res.redirect('/login');
          } else {
            user.updateAttributes({sessionId: sessionID}).then(function() {
              res.redirect('/')
            })
          }
        })  
    })
  },
  checkStatus: function(request, response) {},
  logout: function(request, response) {},

  // Helper Functions

  checkUserSession: function(request, cb) {
    db.User.findOne({where: {sessionId: request.sessionID}})
    .then(function(user) { 
      if (user !== null) {
        cb(model); 
      } else {
        cb(null);
      }
    })
    .catch(function() {
      console.log('catch');
      cb(null);
    });
  },

  checkUserExists: function(request, cb) {
    db.User.findOne({where: {name: request.username}}).then(function(user) {
      cb(user)
    })
  }


}
