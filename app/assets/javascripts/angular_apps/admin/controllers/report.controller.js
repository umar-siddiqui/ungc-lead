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
        }), function(error) {
          $scope.errors = error.data.errors;
        };

        PanelService.allUsers().then(function(data){
          $scope.users = data;
        }), function(error) {
          $scope.errors = error.data.errors;
        };

      };

    init();

    };

})();