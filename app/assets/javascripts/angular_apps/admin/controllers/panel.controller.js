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
        PanelService.allAssesments().then(function(data){
          $scope.assesments = data;
        }, function(error) {
          $scope.errors = error.data.errors;
        });
      };

      $scope.sendInvite = function(){

        $scope.invite['password'] = '12345678';
        $scope.invite['password_confirmation'] = '12345678';
        $scope.invite['type'] = 'user';
        $scope.invite['assesment_ids'] = [$scope.assesments[0]._id];

        var credentials = $scope.invite;

        var config = {
            headers: {
                'X-HTTP-Method-Override': 'POST'
            }
        };

        Auth.register(credentials, config).then(function(credentials) {
            $state.go('index');
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

    init();

    };

})();
