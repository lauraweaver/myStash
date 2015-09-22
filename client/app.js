angular.module('myStash', [
  'myStash.services',
  'myStash.products',
  'myStash.sites',
  'myStash.auth',
  'ngRoute'])


.config(function ($routeProvider, $httpProvider) {
  $routeProvider
    .when('/', {
      templateUrl: './products/products.html',
      controller: 'ProductsController'
    })
    .when('/#/login', {
      templateUrl: './authentication/login.html',
      controller: 'AuthController'
    })
    .when('/#/signup', {
      templateUrl: './authentication/signup.html',
      controller: 'AuthController'
    })
    .when('/sites', {
      templateUrl: './sites/sites.html',
      controller: 'SitesController'
    })
})
