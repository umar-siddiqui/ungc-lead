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
      $scope.canPublish = true;
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
      console.log(angular.element('#questionsDiv')[0].scrollTop)
      angular.element('#questionsDiv')[0].scrollTop = 0;
      $scope.section = section;
      $state.go('sections.questions', { section_id: section._id });
    };

    function checkPublishable(sections){
      angular.forEach(sections, function(section){
        if (!section.submitted) { return $scope.canPublish = false; };
        checkPublishable(section.sections)
      });
    }

    $scope.checkCanPublish = function(){
      checkPublishable($scope.sections);
      console.log('######################');
      console.log($scope.canPublish);
    }

    init();

    $scope
      .$on('onSelectNode', function (event, section) {
        $scope.fetchQuestions(section)
      });
  }

})();
