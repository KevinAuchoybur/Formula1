//Isolation du code avec une fct anonyme
(function(){

var app = angular.module('f1', []); //Déclaration de l'appli
app.controller('searchController' ,['$scope','getService', function($scope, getService){ //Déclaration du controller + func
$scope.search = ''; //search est vide


	$scope.getDrivers = function (){
	 // Si search a ete renseingé requette http, sinon renvoi des 6 derniers pilotes
	var req = getService.hasParameters($scope.search); //Transmission d'une chaine vide
	req.then(function(response) {

		$scope.drivers = response.data;
	});//Récup les données


	};

	//Appel de la méthode getCourses() au chargement de la page
	$scope.getDrivers();

	}]);
	
	app.factory('getService', ['$http', function($http){

		return {

			hasParameters : function(search) {

				if(search.length){

					//search.php
					var req = $http.get('php/search.php', {params:{search:search}});

				}else{

					var req = $http.get('php/drivers.php')
					//drivers.php


				}

				return req;

			}
		};

	}]);

})();