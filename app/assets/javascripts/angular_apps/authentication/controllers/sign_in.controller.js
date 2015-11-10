( function() {
  'use strict';

  angular
    .module('ungc.authentication')
    .controller('SignInController',[
      '$scope', 'Auth', '$window',
      SignInController
    ]);

  function SignInController($scope, Auth, $window) {

    function init(){
      $scope.credentials = { email: '', password: '' };
    }

    $scope.signIn = function() {
      // Code to use 'angular-devise' component
      Auth.login($scope.credentials).then(function(user) {
        if(user.type == 'admin'){
          $window.location.href = 'admin#/';
        } else{
          $window.location.href = '/dashboard#/';
        };
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    }

    init();
  }

})();
