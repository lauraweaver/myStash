var Promise = require("bluebird");
var Sequelize = require('sequelize');
var db = require('./db');
var bcrypt = require('bcrypt-nodejs');

module.exports = {
  
  signup: function(request, response) {
    var username = request.body.username;
    var password = request.body.password;
    var session_id = request.sessionID;
    
    encryptPassword(password, function(hashedPassword) {
      password = hashedPassword
    })

    checkUserExists(request, function(user) {
      if (user !== null) {
        response.redirect('/login')
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

  login: function(request, response) {
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
  checkStatus: function(request, response) {
    User.findOne({where: {sessionId: sessionID}}).then(function(user) {
      if (user === null) {
        res.redirect('/login');
      }
    })
  },
  logout: function(request, response) {
    request.session.destroy(function(){
      response.redirect('/login');
    });
  },

  // Helper Functions

  encryptPassword: function(password, cb) {
    bcrypt.genSalt(10, function (err, salt) {
      if (err) { return next(err) }
      
      bcrypt.hash(password, salt, null, function (err, hash) {
        if (err) { return console.log('Error: ', err) }
        cb(hash)
        //!!!
        // user.salt = salt;
  },

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
