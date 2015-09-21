var users = require('../controllers/users')  

module.exports = function (router) {
  router.route('users/signup')
    .get(users.loadSignup)
    .post(users.attemptSignup);

  router.route('users/login')
    .post(users.attemptLogin);

  router.route('users/signedin')
    .get(users.checkStatus)

  router.route('users/logout')
    .post(users.attemptLogin);
}
