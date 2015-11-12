( function() {
  'use strict';

  angular
    .module('ungc.admin')
    .controller('SectionsController', [
      '$scope', '$window', '$state', '$http', '$stateParams',
      SectionsController
    ]);

  function SectionsController($scope, $window, $state, $http, $stateParams) {

    function init(){
      getSectionTree();
    }

    function getSectionTree(){

      function successCallback(response) {
        $scope.sections = response.data['sections'];
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
      if(section.submitted) return;
      $scope.section = section;
      $state.go('sections.questions', { section_id: section._id });
    };

    init();

    $scope
      .$on('onSelectNode', function (event, section) {
        $scope.fetchQuestions(section)
      });
  }

})();
