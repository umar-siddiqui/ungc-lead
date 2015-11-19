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
        }, function(error) {
          $scope.errors = error.data.errors;
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
        }, function(error) {
          $scope.errors = error.data.errors;
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
      }

      init();

    };

})();
