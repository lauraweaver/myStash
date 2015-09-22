angular.module('myStash.sites', [])

.controller('SitesController', function ($scope, Sites) {
  $scope.data = {};
  
  $scope.getSites = function () {
    Sites.getSites()
    .then(function (data) {
      $scope.data.sites = data;
    })
    .catch(function (error) {
      console.error('Error: ', error);
    });
  };

  $scope.getSites();
});
