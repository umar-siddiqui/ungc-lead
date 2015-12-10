( function() {
  'use strict';

  angular
    .module('ungc.sections')
    .controller('QuestionsController', [
      '$scope', '$window', '$stateParams', '$http', '$state', '$timeout', '$q',
      QuestionsController
    ]);

  function QuestionsController($scope, $window, $stateParams, $http, $state, $timeout, $q) {

    function init(){
      $scope.answers = [];
      $q.all([
        getSectionQuestions(),
        getSectionAnswers()
      ]).then(successCallback, errorCallback);

      function successCallback(responses) {
        $scope.questions = responses[0].data['questions'];
        $scope.answers = responses[1].data;
      }

      function errorCallback(responses) {
        alert('Error')
      }

    }

    function getSectionQuestions(){
      return $http({
        method: 'GET',
        url: '/sections/' + $stateParams.section_id + '/questions.json'
      })
    }

    function getSectionAnswers(){
      return $http({
        method: 'GET',
        url: '/answers/show_all?section_id=' + $stateParams.section_id
      })
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

    $scope.initAnswer = function(question,answer) {
      answer.question_id = question._id,
      answer.section_id = $scope.section._id,
      answer.assesment_id = $scope.section.assesment_id
    }

    $scope.save = function(questionForm) {
      if(questionForm.$invalid) return alert('Please answer all mandatory questions marked with *');
      saveAnswer();
    }

    init();
  }

})();
