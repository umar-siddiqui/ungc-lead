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
        $scope.myAssesments = data;
      }), function(error) {
        alert('Something went wrong!');
      };

      DashboardService.getCurrentUserCompany().then(function(data){
        $scope.company = data;
      }), function(error) {
        alert('Something went wrong!');
      };
    }
})();
