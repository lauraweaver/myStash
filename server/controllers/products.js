var Promise = require("bluebird");
var Sequelize = require('sequelize');
var db = require('../db');

module.exports = {
  getProducts: function(request, response) {
    // if (!request.session.userId) {
    //   return response.redirect('/#/login')
    // }

    db.models.Product.findAll({include: [{model: db.models.Category}, {model: db.models.Maker}]})
      .then(function(products) {
        response.json(products)
      })
  },

  addProduct: function(request, response) {
    if (!request.session.userId) {
      return response.redirect('/#/login')
    }

    var name = request.body.name
    var color = request.body.color || null
    var size = request.body.size || null
    var categoryId = 'do query'
    var makerId = 'do query'

    db.models.Product.create({
      name: name,
      color: color,
      size: size,
      CategoryId: categoryId,
      MakerId: makerId
    }).then(function() {
      db.models.Product.findOne({where: { name: name }}).then(
        function(product) {
          response.json(product)
        }
      )
    })
  },

  deleteProduct: function(request, response) {
    if (!request.session.userId) {
      return response.redirect('/#/login')
    }
    var name = request.body.name
    db.models.Product.destroy({where: { name: name }}).then(function() {
      console.log('Deleted')
    })
  }
}
