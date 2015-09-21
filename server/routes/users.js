var users = require('../controllers/users')  

module.exports = function (router) {
  router.route('users/signup')
    .get(function(request, response) {
      users.loadSignup
    })
    .post(function(request, response) {
      users.attemptSignup
    });

  router.route('users/login')
    .post(function(request, response) {
      users.attemptLogin
    });

  router.route('users/signedin')
    .get(function(request, response) {
      users.checkStatus
    })

  router.route('users/logout')
    .post(function(request, response) {
      users.attemptLogin
    });
}
