( function() {
  'use strict';

  angular
    .module('ungc.session')
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
        console.log(response);
      }

      function errorCallback(response) {
        alert('Error')
      }

      return $http({
        method: 'GET',
        url: '/sections.json',
        params: {
          assesment_id: $stateParams.assesment_id || '562262cd2227cb669c000000'
        }
      }).then(successCallback, errorCallback);

    }

    $scope.fetchQuestions = function (section){
      $state.go('sections.questions', { section_id: section.id });
    };

    init();

    $scope
      .$on('onSelectNode', function (event, section) {
        $scope.fetchQuestions(section)
      });
  }

})();
