( function() {
  'use strict';

  angular
    .module('ungc.session')
    .controller('QuestionsController', [
      '$scope', '$window', '$stateParams',
      QuestionsController
    ]);

  function QuestionsController($scope, $window, $stateParams) {
    console.log($stateParams);
    $scope.section_id = $stateParams.id;
  }

})();
