( function() {
  'use strict';

  angular
    .module('ungc.sections')
    .controller('SectionsController', [
      '$scope', '$window', '$state', '$http', '$stateParams',
      SectionsController
    ]);

  function SectionsController($scope, $window, $state, $http, $stateParams) {

    $scope.markDone = markDone;

    function init(){
      getSectionTree();
      $scope.canConclude = true;
    }

    function getSectionTree(){

      function successCallback(response) {
        $scope.sections = response.data['sections'];
        markDone($scope.sections);
      }

      function errorCallback(response) {
        alert('Something went wrong')
      }

      return $http({
        method: 'GET',
        url: '/sections.json',
        params: {
          assesment_id: $stateParams.assesment_id
        }
      }).then(successCallback, errorCallback);

    }

    $scope.fetchQuestions = function (section){
      $scope.section = section;
      $state.go('sections.questions', { section_id: section._id });
    };

    function validateConclude(sections){
      angular.forEach(sections, function(section){
        if (!section.submitted) { return $scope.canConclude = false; };
        validateConclude(section.sections)
      });
    }

    function markDone(sections){
      angular.forEach(sections, function(section){
        markDone(section.sections)
        if (section.submitted) return;
        if (section.questions_count == 0) {
          section.submitted = _.every(section.sections, function(section) {
            return section.submitted == true;
          });
        };
      });
    }

    $scope.concluded = function(){
      validateConclude($scope.sections);
      console.log('######################');
      console.log($scope.canConclude);
      if(!$scope.canConclude) return alert('Please attempt all questions');
      $state.go('report');
    }

    init();

    $scope
      .$on('onSelectNode', function (event, section) {
        $scope.fetchQuestions(section)
      });
  }

})();
