( function() {
  'use strict';

  angular.module('ungc.session')
  .controller('SessionController', [
    'Auth', '$scope', '$window', '$location',
    SessionController
  ]);

  function SessionController(Auth, $scope, $window, $location) {
    // Check on load if user signed in
    Auth.currentUser().then(function(user) {
      $scope.currentUser = user;
      $scope.isAuthenticated = true;
      if ($window.location.pathname == '/' && user.type == 'admin') {
        $window.location.href = '/admin';
      };
    }, function(error) {
      // Log on console to check out what the error is.
      $window.location.href = "/authentication#/sign_in";
    });

    $scope.redirectDashboard = function (){
      var url = $scope.currentUser.type == 'admin' ? '/admin' : '/';
      $window.location.href = url;
    }

    $scope.$on('devise:login', function(event, currentUser) {
      $scope.isAuthenticated = true;
      // You can get data of current user (getting user's name and etc.)
    });

    $scope.$on('devise:new-session', function(event, currentUser) {
      $scope.isAuthenticated = true;
    });

    $scope.$on('devise:logout', function(event, oldCurrentUser) {
      $scope.isAuthenticated = false;
    });

    $scope.$on('devise:new-registration', function(event, user) {
      $scope.isAuthenticated = true;
    });

    $scope.logout = function() {
      Auth.logout().then(function(oldUser) {
        $window.location.href = ("/authentication#/sign_in");
      }, function(error) {
        // An error occurred logging out.
      });
    }

  }

})();
