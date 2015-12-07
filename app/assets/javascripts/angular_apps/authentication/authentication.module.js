( function() {
  'use strict';

  angular.module('ungc.authentication', [
    'ngAnimate',
    'ui.router',
    'templates',
    'Devise',,
    'ungc.session',
    'ungc.common'
  ])
  .config([
    '$stateProvider',
    '$urlRouterProvider',
    '$httpProvider',
    config
  ]);

  function config($stateProvider, $urlRouterProvider) {

    $stateProvider
      .state('sign_in', {
        url: '/sign_in',
        templateUrl: 'authentication/sign_in.html',
        controller: 'SignInController'
      });

    $stateProvider
      .state('forgot_password', {
        url: '/forgot_password',
        templateUrl: 'authentication/forgot_password.html',
        controller: 'SignInController'
      });
  }

})();
