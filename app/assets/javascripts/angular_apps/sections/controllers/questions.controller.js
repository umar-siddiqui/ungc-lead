( function() {
  'use strict';

  angular
    .module('ungc.sections')
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

    function saveAnswer(){

      function successCallback(response) {
        $scope.section.submitted = true;
        $scope.markDone($scope.sections);
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
        url: '/answers.json',
        data: { answers: $scope.answers }
      }).then(successCallback, errorCallback).finally(loaderLogic);
    }

    $scope.initAnswer = function(question) {
      return {
        question_id: question._id,
        section_id: $scope.section._id,
        assesment_id: $scope.section.assesment_id
      }
    }

    $scope.save = function() {
      saveAnswer();
    }

    init();
  }

})();
