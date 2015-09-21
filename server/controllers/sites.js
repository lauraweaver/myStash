var Promise = require("bluebird");
var Sequelize = require('sequelize');
var db = require('./db')

module.exports = {
  getSites: function(request, response) {
    db.Site.findAll().then(function(sites) {
      response.json(sites)
    })
  },

  addSite: function(request, response) {
    var name = request.body.name
    var url = request.body.url

    db.Site.create({
      name: name,
      url: url
    }).then(function() {
      db.Site.findOne({where: { name: name }}).then(
        function(site) {
          response.json(site)
        }
      )
    })
  },

  deleteSite: function(request) {
    var name = request.body.name
    db.site.destroy(where: { name: name }).then(function() {
      console.log('Deleted')
    })
  }
}
