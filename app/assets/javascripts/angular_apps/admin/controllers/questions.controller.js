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
        data: { questions: $scope.questions }
      }).then(successCallback, errorCallback).finally(loaderLogic);
    }

    $scope.save = function() {
      saveQuestions();
    }

    init();
  }

})();
