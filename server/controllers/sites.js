var Promise = require("bluebird");
var Sequelize = require('sequelize');
var db = require('../db');

module.exports = {
  getSites: function(request, response) {
    // if (!request.session.userId) {
    //   return response.redirect('#/login')
    // }
    
    db.models.Site.findAll().then(function(sites) {
      response.json(sites)
    })
  },

  addSite: function(request, response) {
    if (!request.session.userId) {
      return response.redirect('#/login')
    }

    var name = request.body.name
    var url = request.body.url

    db.models.Site.create({
      name: name,
      url: url
    }).then(function() {
      db.models.Site.findOne({where: { name: name }}).then(
        function(site) {
          response.json(site)
        }
      )
    })
  },

  deleteSite: function(request) {
    if (!request.session.userId) {
      return response.redirect('#/login')
    }

    var name = request.body.name
    db.models.Site.destroy({where: { name: name }}).then(function() {
      console.log('Deleted')
    })
  }
}
