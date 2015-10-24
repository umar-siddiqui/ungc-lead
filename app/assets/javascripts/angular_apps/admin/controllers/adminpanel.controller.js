( function() {
  'use strict';

  angular
    .module('ungc.adminpanel')
    .controller('AdminpanelController',[
      '$scope', 'AdminpanelService',
      AdminpanelService
    ]);

    function AdminpanelController($scope, AdminpanelService) {

      AdminpanelService.allAssesments().then(function(data){
        $scope.assesments = data;
        console.log(data);
      }), function(error) {
        alert('Something went wrong!');
      };
    }


})();