( function() {
  'use strict';

  angular
    .module('ungc.admin')
    .controller('PanelController',[
      '$scope', '$window', 'Auth', 'PanelService',
      PanelController
    ]);

    function PanelController($scope, $window, Auth, PanelService) {

      function init(){
        PanelService.allAssesments().then(function(data){
          $scope.assesments = data;
        }), function(error) {
          alert('Something went wrong!');
        };
      };

      $scope.sendInvite = function(){

        $scope.invite['password'] = '123456789';
        $scope.invite['password_confirmation'] = '123456789';
        $scope.invite['type'] = 'user';
        $scope.invite['assesment_ids'] = [$scope.assesments[0]._id];

        var credentials = $scope.invite;

        var config = {
            headers: {
                'X-HTTP-Method-Override': 'POST'
            }
        };

        Auth.register(credentials, config).then(function(credentials) {
            $window.location.href = ('/admin#/index');
        }, function(error) {
            alert('Something went wrong');
        });
      };

      $scope.inviteUser = function(){
        $window.location.href = ('/admin#/invite');
      };

      $scope.assesmentReport = function(){
        $window.location.href = ('/admin#/report');
      };

      $scope.editAssesment = function() {
        alert('Edit');
      };

    init();

    };

})();