openhut = angular.module('openhut', ['ngRoute', 'IndexCtrl'])

openhut.config(['$routeProvider', ($routeProvider) -> 
	$routeProvider.when('/restaurant', {
		templateUrl: '/assets/restaurants/show.html', 
		controller: 'RestaurantCtrl'
	}).otherwise({
		templateUrl: '/assets/home/index.html',
		controller: 'IndexCtrl'
	})
])