( function() {
  'use strict';

  angular
    .module('ungc.dashboard')
    .controller('DashboardController',[
      '$scope',
      DashboardController
    ]);

    function DashboardController($scope) {
      $scope.things = ['Data Entry', 'Update', 'View Report!!'];
    }

})();