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
      $scope.errors = [];
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

    function updateReportState(){
      $scope.loading = true;

      function successCallback(response) {
        $window.location.href = '/';
        $scope.loading = false;
      }

      function errorCallback(response) {
        alert('Something went wrong')
      }

      return $http({
        method: 'PUT',
        url: 'reports/update_report.json',
        params: {
          assesment_id: $stateParams.assesment_id
        },
        data: {
          status: 'completed'
        }
      }).then(successCallback, errorCallback);

    }

    $scope.fetchQuestions = function (section){
      $scope.section = section;
      $state.go('sections.questions', { section_id: section._id });
    };

    function checkIfSectionDone(sections){
      angular.forEach(sections, function(section){
        if (!section.submitted) { return $scope.canConclude = false; };
        checkIfSectionDone(section.sections)
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

    function checkIfRequiredNumberDone(section, no){
      var result = _.countBy(section.sections, function(section) {
        return section.submitted;
      });
      $scope.canConclude = angular.isUndefined(result[true]) || result[true] < no ? false : true;
    }

    $scope.concluded = function(){
      checkIfSectionDone([$scope.sections[0], $scope.sections[1]]);
      checkIfRequiredNumberDone($scope.sections[2], 3);
      $scope.errors = [];
      if(!$scope.canConclude) return $scope.errors.push('Please complete the Readiness and Functional Priority sections and at least 3 Functional Assessments before concluding.');
      updateReportState();
    }

    init();

    $scope
      .$on('onSelectNode', function (event, section) {
        $scope.fetchQuestions(section)
      });
  }

})();
