( function() {
  'use strict';

  angular
    .module('ungc.dashboard')
    .controller('DashboardController',[
      '$scope', '$http',
      DashboardController
    ]);

    function DashboardController($scope, $http) {
      $http.get("/dashboard.json").success(function(data){
        $scope.myAssesments = data.dashboard;
      }), function(error) {
        alert('Something went wrong!');
      };
    }

})();
