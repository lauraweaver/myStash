var Promise = require("bluebird");
var Sequelize = require('sequelize');
var db = require('./db');

module.exports = {
  checkUser: function(username, password, )

  attemptSignup: function(request, response) {

    var username = request.body.username;
    var password = request.body.password;
    var session_id = request.sessionID;

    db.User.create({
      username: username,
      password: password,
      sessionId: session_id
    });
  },

  loadSignup: function(request, response) {

  },
  attemptSignup: function(request, response) {},
  checkStatus: function(request, response) {},
  logout: function(request, response) {}

}
