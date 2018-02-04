var App = angular.module('fiT', []);

App.controller('c', function($scope, $http) {
  $http.get('../json/f1.json')
       .then(function(res){
          $scope.f1team = res.data;                
        });
});