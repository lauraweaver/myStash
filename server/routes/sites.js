var sites = require('../controllers/sites.js');

module.exports = function (router) {
  router.route('/sites')
    .get(sites.getSites)
    .post(sites.addSite)
}
