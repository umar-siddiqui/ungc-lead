( function() {
  'use strict';

  angular
    .module('ungc.common')
    .directive('alertBar',[
      AlertBar
    ]);

    function AlertBar() {

      var linker = function($scope, element, attr) {
        $scope.closeAlert = function () {
          $scope.errorList = [];
        };
      };

      return {
        restrict: 'AE',

        scope: {
          errorType: '@',
          errorList: '='
        },

        link: linker,

        template:
          '<div class="alert alert-{{ errorType }}" ng-if="errorList.length">' +
            '<button type="button" class="close" ng-click="closeAlert()">&times;</button>' +
            '<div ng-repeat="er in errorList track by $index">{{ er }}</div>' +
          '</div>'
      };
    };

})();
