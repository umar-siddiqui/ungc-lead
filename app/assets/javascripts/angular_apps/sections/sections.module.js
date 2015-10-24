( function() {
  'use strict';

  angular.module('ungc.sections', [
    'ngAnimate',
    'ui.router',
    'templates',
    'Devise',
    'ui.tree',
    'ungc.session'
  ])
  .config([
    '$stateProvider',
    '$urlRouterProvider',
    config
  ]);

  function config($stateProvider, $urlRouterProvider) {
    $stateProvider
      .state('sections', {
        url: '/',
        templateUrl: 'sections/sections.html',
        controller: 'SectionsController'
      });

    $stateProvider
      .state('sections.questions', {
        url: '/:section_id/questions',
        templateUrl: 'sections/questions.html',
        controller: 'QuestionsController'
      });

    $stateProvider
      .state('report', {
        url: '/report',
        templateUrl: 'sections/report.html',
        controller: 'ReportController'
      });

    $urlRouterProvider.otherwise('/');
  }

})();
