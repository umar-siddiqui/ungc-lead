( function() {
  'use strict';

  angular.module('ungc.admin', [
    'ngAnimate',
    'ui.router',
    'templates',
    'Devise',
    'ngSanitize',
    'ui.tree',
    'ungc.session',
    'ungc.common'
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

    $stateProvider
      .state('sections', {
        url: '/sections',
        templateUrl: 'admin/sections.html',
        controller: 'SectionsController'
      });

    $stateProvider
      .state('sections.questions', {
        url: '/:section_id/questions',
        templateUrl: 'admin/questions.html',
        controller: 'QuestionsController'
      });

    $urlRouterProvider.otherwise('/');
  }

})();
