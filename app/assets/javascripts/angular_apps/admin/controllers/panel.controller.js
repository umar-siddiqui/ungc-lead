( function() {
  'use strict';

  angular
    .module('ungc.admin')
    .controller('PanelController',[
      '$scope', '$rootScope', '$window', 'Auth', 'PanelService',
      PanelController
    ]);

    function PanelController($scope, $rootScope, $window, Auth, PanelService) {

      function init(){
        PanelService.allAssesments().then(function(data){
          $scope.assesments = data;
        }), function(error) {
          alert('Something went wrong!');
        };
      };

      $scope.sendInvite = function(){

        var credentials = {
            name: $scope.invite.name,
            email: $scope.invite.email,
            type: 'user',
            password: '123456789',
            password_confirmation: '123456789'
        };
        var config = {
            headers: {
                'X-HTTP-Method-Override': 'POST'
            }
        };

        Auth.register(credentials, config).then(function(registeredUser) {
            console.log(registeredUser);
            $window.location.href = ("/admin#/index");
        }, function(error) {
            alert('Something went wrong');
        });
      };

      $scope.inviteUser = function(assesment){
        $rootScope.assesment = assesment;
        $window.location.href = ("/admin#/invite");
      };

      $scope.assesmentReport = function(assesment){
        //$rootScope.assesment = assesment;
        $window.location.href = ("/admin#/report");
      };

      $scope.editAssesment = function() {
        alert('Edit');
      };

    init();

    };

})();