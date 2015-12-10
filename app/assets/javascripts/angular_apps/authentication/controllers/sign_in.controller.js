( function() {
  'use strict';

  angular
    .module('ungc.authentication')
    .controller('SignInController',[
      '$scope', 'Auth', '$window', 'AuthenticationService',
      SignInController
    ]);

  function SignInController($scope, Auth, $window, AuthenticationService) {

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
      }, function(errorResponse) {
        $scope.errors = [];
        $scope.errors[0] = errorResponse.data.error || [];
      });
    }

    $scope.forgotPassword = function() {

      loaderLogic();

      AuthenticationService.forgotPassword($scope.credentials.email).then(function(data) {
        $window.location.href = '/authentication#/sign_in';
      }, function(errorResponse) {
        $scope.loading = false;
        $scope.errors = errorResponse.data.errors || [];
      });

    };

    function loaderLogic() {
      $scope.loading = true;
    };

    init();
  }

})();
