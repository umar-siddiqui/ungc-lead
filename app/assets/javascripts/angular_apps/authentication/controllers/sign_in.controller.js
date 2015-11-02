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
          console.log('Hi Admin');
          $window.location.href = 'admin#/';
          alert('ADMIN Successfully signed in!')
        } else{
          $window.location.href = '/dashboard#/';
          alert('Successfully signed in user!')
        };
      }, function(error) {
        console.info('Error in authenticating user!');
        console.log(error);
        alert('Error in signing in user!');
      });
    }

    init();
  }

})();
