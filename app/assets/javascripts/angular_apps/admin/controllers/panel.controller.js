( function() {
  'use strict';

  angular
    .module('ungc.admin')
    .controller('PanelController',[
      '$scope', '$state', 'Auth', 'PanelService',
      PanelController
    ]);

    function PanelController($scope, $state, Auth, PanelService) {

      function init(){

      $scope.loading = false;

        PanelService.allAssesments().then(function(data){
          $scope.assesments = data;
        }, function(errorResponse) {
          $scope.errors = errorResponse.data.error;
        });
      };

      $scope.sendInvite = function(){

        loaderLogic();

        $scope.invite['password'] = '12345678';
        $scope.invite['password_confirmation'] = '12345678';
        $scope.invite['type'] = 'user';
        $scope.invite['assesment_ids'] = [$scope.assesments[0]._id];

        var credentials = $scope.invite;

        PanelService.newUser(credentials).then(function(credentials) {
          $state.go('home');
        }, function(errorResponse) {
          $scope.loading = false;
          $scope.errors = errorResponse.data.errors || [];
        });
      };

      $scope.inviteUser = function(){
        $state.go('invite');
      };

      $scope.assesmentReport = function(){
        $state.go('report');
      };

      $scope.editAssesment = function() {
        $state.go('sections');
      };

      function loaderLogic() {
        $scope.loading = true;
      };

      init();

    };

})();
