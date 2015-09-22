angular.module('myStash.products', [])

.controller('ProductsController', function ($scope, Products) {
  $scope.data = {};

  $scope.getProducts = function () {
    Products.getProducts()
    .then(function (data) {
      $scope.data.products = data;
    })
    .catch(function (error) {
      console.error('Error: ', error);
    });
  };

  $scope.getProducts();
});
