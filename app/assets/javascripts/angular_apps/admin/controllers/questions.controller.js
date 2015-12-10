( function() {
  'use strict';

  angular
    .module('ungc.admin')
    .controller('QuestionsController', [
      '$scope', '$window', '$stateParams', '$http', '$state',
      QuestionsController
    ]);

  function QuestionsController($scope, $window, $stateParams, $http, $state) {

    function init(){
      $scope.answers = [];
      getSectionQuestions();
      $scope.sections = $scope.sections || getSection();
    }

    function getSectionQuestions(){

      function successCallback(response) {
        $scope.questions = response.data['questions'];
      }

      function errorCallback(response) {
        alert('Error')
      }

      return $http({
        method: 'GET',
        url: '/sections/' + $stateParams.section_id + '/questions.json'
      }).then(successCallback, errorCallback);
    }

    function saveQuestions(){

      function successCallback(response) {
        alert('Section Questions Saved');
        $state.go('sections');
      }

      function errorCallback(response) {
        alert('Error');
      }

      function loaderLogic() {
        $scope.loading = false;
      }
      $scope.loading = true;

      return $http({
        method: 'POST',
        url: '/questions/update_all.json',
        data: {
          questions: $scope.questions,
          section: $scope.section,
          section_id: $stateParams.section_id
        }
      }).then(successCallback, errorCallback).finally(loaderLogic);
    }

    function getSection(){
      function successCallback(response) {
        $scope.section = response.data;
      }

      function errorCallback(response) {
        alert('Error')
      }

      return $http({
        method: 'GET',
        url: '/sections/' + $stateParams.section_id + '.json'
      }).then(successCallback, errorCallback);
    }

    $scope.save = function() {
      saveQuestions();
    }

    init();
  }

})();
