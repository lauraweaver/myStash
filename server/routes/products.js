var products = require('../controllers/products.js')

module.exports = function(router) {
  router.route('/products')
    .get(function(request, response) {
      products.getProducts
    })
    .post(function(request, response) {
      products.addProduct
    })
    .delete(function(request, response) {
      products.deleteProduct
    })
}
