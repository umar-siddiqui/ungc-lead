( function() {
  'use strict';

  angular.module('ungc.sections', [
    'ngAnimate',
    'ui.router',
    'templates',
    'Devise',
    'ngSanitize',
    'ui.tree',
    'ungc.session',
    'highcharts-ng'
  ])
  .config([
    '$stateProvider',
    '$urlRouterProvider',
    'highchartsNGProvider',
    config
  ]);

  function config($stateProvider, $urlRouterProvider, highchartsNGProvider) {
    // lazyload hightchart
    highchartsNGProvider.lazyLoad([highchartsNGProvider.HIGHCHART, "modules/exporting.js", "highcharts-more.js"]);

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
