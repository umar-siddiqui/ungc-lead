( function() {
  'use strict';

  angular.module('ungc.admin', [
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
      .state('home', {
        url: '/',
        templateUrl: 'admin/index.html',
        controller: 'PanelController'
      });

    $stateProvider
      .state('invite', {
        url: '/invite',
        templateUrl: 'admin/invite.html',
        controller: 'PanelController'
      });

    $stateProvider
      .state('report', {
        url: '/report',
        templateUrl: 'admin/report.html',
        controller: 'ReportController'
      });

    $urlRouterProvider.otherwise('/');
  }

})();
