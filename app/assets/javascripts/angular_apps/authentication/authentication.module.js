( function() {
  'use strict';

  angular.module('ungc.authentication', [
    'ngAnimate',
    'ui.router',
    'templates',
    'Devise',
    'ungc.session'
  ])
  .config([
    '$stateProvider',
    '$urlRouterProvider',
    '$httpProvider',
    config
  ]);

  function config($stateProvider, $urlRouterProvider) {
    $stateProvider
      .state('home', {
        url: '/',
        templateUrl: 'authentication/home.html',
        controller: 'HomeController'
      });

    $stateProvider
      .state('sign_in', {
        url: '/sign_in',
        templateUrl: 'authentication/sign_in.html',
        controller: 'SignInController'
      });

    $urlRouterProvider.otherwise('/');
  }

})();
