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
      }, function(error) {
        $scope.errors = error.data.errors;
      });

      DashboardService.getCurrentUserCompany().then(function(data){
        $scope.company = data;
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    }
})();
