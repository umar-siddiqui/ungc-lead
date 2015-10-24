( function() {
  'use strict';

  angular.module('ungc.adminpanel', [
    'ngAnimate',
    'ui.router',
    'templates',
    'Devise',
    'ungc.session'
  ])
  .config([
    '$stateProvider',
    '$urlRouterProvider',
    config
  ]);

  function config($stateProvider, $urlRouterProvider) {
    $stateProvider
      .state('index', {
        url: '/',
        templateUrl: 'admin/index.html',
        controller: 'AdminpanelController'
      });

    $urlRouterProvider.otherwise('/');
  }

})();
