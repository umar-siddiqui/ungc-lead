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
        url: '/:id/questions',
        templateUrl: 'sections/questions.html',
        controller: 'QuestionsController'
      });

    $urlRouterProvider.otherwise('/');
  }

})();
