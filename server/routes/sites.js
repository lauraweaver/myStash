var sites = require('../controllers/sites.js');

module.exports = function (router) {
  router.route('/sites')
    .get(function(request, response) {
      sites.loadAllLinks
    })
    .post(function(request, response) {
      sites.addLink
    })
}
