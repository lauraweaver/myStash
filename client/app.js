angular.module('myStash', [
  'ui.bootstrap', 
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
    .when('/#/sites', {
      templateUrl: './sites/sites.html',
      controller: 'sitesController'
    })
})
// .run(function ($rootScope, $location, Auth) {
//   app.run(function(editableOptions) {
//     editableOptions.theme = 'bs3'; // bootstrap3 theme. Can be also 'bs2', 'default'
//   });
// });

.controller('mainController', function($scope) {
  // $scope.data = {};

  // $scope.tabs = [
  //     { title:'Home', content:'Dynamic content 1' },
  //     { title:'Sites', content:'Dynamic content 2' }
  //   ];
  });

//   $scope.getProducts();
// }
