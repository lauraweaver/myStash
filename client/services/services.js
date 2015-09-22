angular.module('myStash.services', [])

.factory('Sites', function ($http) {
  var getSites = function() {
    return $http({
      method: 'GET',
      url: '/api/sites'
    })
    .then(function (response) {
      return response.data;
    });
  };

  var addSite = function(site) {
    return $http({
      method: 'POST',
      url: '/api/sites'
    })
    .then(function() {
      return response.data;
    })
  };

  return {
    getSites: getSites,
    addSite: addSite
  };
})

.factory('Products', function ($http) {
  var getProducts = function() {
    return $http({
      method: 'GET',
      url: './api/products'
    })
    .then(function (response) {
      return response.data;
    })
  }

  var addProduct = function(product) {
    return $http({
      method: 'POST',
      url: '/api/products'
    })
    .then(function() {
      return response.data;
    })
  }
  return {
    getProducts: getProducts,
    addProduct: addProduct
  }
})

.factory('Auth', function($http) {
  var signup = function() {
    return $http({
      method: 'POST',
      url: '/api/users/signup'
    })
  };

  var login = function() {
    return $http({
      method: 'POST',
      url: '/api/users/login'
    })
  }
  return {
    login: login,
    signup: signup
  };
})
