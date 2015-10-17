( function() {
  'use strict';

  angular
    .module('ungc.authentication')
    .controller('HomeController',[
      '$scope',
      HomeController
    ]);

    function HomeController($scope) {
      $scope.things = ['Angular', 'Rails 4.1', 'UI Router', 'Together!!'];
    }

})();
