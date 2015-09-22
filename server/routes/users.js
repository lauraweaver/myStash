var users = require('../controllers/users')  

module.exports = function (router) {
  router.route('/users/signup')
    .post(users.signup);

  router.route('/users/login')
    .post(users.login);

  router.route('/users/signedin')
    .get(users.checkStatus)

  router.route('/users/logout')
    .post(users.logout);
}
