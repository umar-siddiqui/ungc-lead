( function() {
  'use strict';

  angular
    .module('ungc.session')
    .controller('ReportController', [
      '$scope', '$window', '$state', '$http', '$stateParams',
      ReportController
    ]);

  function ReportController($scope, $window, $state, $http, $stateParams) {

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
        url: '/sections/report.json',
        params: {
          assesment_id: $stateParams.assesment_id
        }
      }).then(successCallback, errorCallback);

    }

    init();
  }

})();
