( function() {
  'use strict';

  angular
    .module('ungc.admin')
    .controller('ReportController',[
      '$scope', 'PanelService',
      ReportController
    ]);

    function ReportController($scope, PanelService) {

      function init(){
        PanelService.allAssesments().then(function(data){
          $scope.assesments = data;
        }), function(errorResponse) {
          $scope.errors = [];
          $scope.errors[0] = errorResponse.data.error;
        };

        PanelService.allUsers().then(function(data){
          $scope.users = data;
        }), function(errorResponse) {
          $scope.errors = [];
          $scope.errors[0] = errorResponse.data.error;
        };

      };

    init();

    };

})();