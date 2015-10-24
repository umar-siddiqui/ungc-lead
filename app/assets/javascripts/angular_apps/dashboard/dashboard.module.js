( function() {
  'use strict';

  angular.module('ungc.dashboard', [
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
        templateUrl: 'dashboard/index.html',
        controller: 'DashboardController'
      });

    $stateProvider
      .state('show', {
        url: '/show',
        templateUrl: 'dashboard/show.html',
        controller: 'DashboardController'
      });

    $stateProvider
      .state('dashboard_video', {
        url: '/dashboard_video',
        templateUrl: 'dashboard/dashboard_video.html'
      });

    $urlRouterProvider.otherwise('/');
  }

})();
