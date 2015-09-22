var Promise = require("bluebird");
var Sequelize = require('sequelize');
var db = require('../db');

module.exports = {
  getProducts: function(request, response) {
    db.Product.findAll().then(function(products) {
      response.json(products)
    })
  },

  addProduct: function(request, response) {
    var name = request.body.name
    var color = request.body.color || NULL
    var size = request.body.size || NULL
    var categoryId = 'do query'
    var makerId = 'do query'

    db.Product.create({
      name: name,
      color: color,
      size: size,
      CategoryId: categoryId,
      MakerId: makerId
    }).then(function() {
      db.Product.findOne({where: { name: name }}).then(
        function(product) {
          response.json(product)
        }
      )
    })
  },

  deleteProduct: function(request, response) {
    var name = request.body.name
    db.Product.destroy({where: { name: name }}).then(function() {
      console.log('Deleted')
    })
  }
}
