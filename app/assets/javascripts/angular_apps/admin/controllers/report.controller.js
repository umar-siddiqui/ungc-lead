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
        // PanelService.allUsers().then(function(data){
        //   $scope.users = data;
        // }), function(error) {
        //   alert('Something went wrong!');
        // };
      };

    init();

    };

})();