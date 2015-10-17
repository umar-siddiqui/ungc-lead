( function() {
  'use strict';

  angular
    .module('ungc.dashboard')
    .controller('DashboardController',[
      '$scope', 'DashboardService',
      DashboardController
    ]);

    function DashboardController($scope, DashboardService) {

      DashboardService.getAssesments().then(function(data){
        $scope.myAssesments = data.dashboard;
      }), function(error) {
        alert('Something went wrong!');
      };
    }

})();
