( function() {
  'use strict';

  angular.module('ungc.sections', [
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

  function config($stateProvider, $urlRouterProvider, $httpProvider) {
    $stateProvider
      .state('sections', {
        url: '/',
        templateUrl: 'sections/sections.html',
        controller: 'SectionsController'
      });

    $urlRouterProvider.otherwise('/');
  }

})();
