( function() {
  'use strict';

  angular.module('ungc.reports', [
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
      .state('report', {
        url: '/',
        templateUrl: 'reports/generate_report.html',
        controller: 'ReportController'
      });

    $urlRouterProvider.otherwise('/');
  }

})();