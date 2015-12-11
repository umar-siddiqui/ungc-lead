( function() {
  'use strict';

  angular
    .module('ungc.dashboard')
    .controller('DashboardController',[
      '$scope', '$window', 'DashboardService',
      DashboardController
    ]);

    function DashboardController($scope, $window, DashboardService) {

      $scope.start = start;

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

      function start(){
        $scope.loading = true;

        DashboardService.createReport().then(function(data){
          $window.location.href = '/sections';
        }, function(error) {
          $scope.errors = error.data.errors;
        });
      }
    }
})();
