angular.module('shortly.services', [])

.factory('Sites', function ($http) {
  getSites: function() {
    return $http({
      method: 'GET',
      url: '/api/sites'
    })
    .then(function (response) {
      return response.data;
    });
  },

  addSite: function(site) {
    return $http({
      method: 'POST',
      url: '/api/sites'
    })
    .then(function() {
      return response.data;
    })
  }
});

.factory('Products', function ($http) {
  getProducts: function() {
    return $http({
      method: 'GET',
      url: '/api/products'
    })
    .then(function (response) {
      return response.data;
    });
  },

  addProduct: function(product) {
    return $http({
      method: 'POST',
      url: '/api/products'
    })
    .then(function() {
      return response.data;
    })
  }
});

.factory('Auth', function($http) {
  signup: function() {
    return $http({
      method: 'POST',
      url: '/api/users/signup'
    })
  },

  login: function() {
    return $http({
      method: 'POST',
      url: '/api/users/login'
    })
  }
})
