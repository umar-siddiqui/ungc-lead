( function() {
  'use strict';

  angular
    .module('ungc.session')
    .directive('onNodeSelect', onNodeSelect);

  function onNodeSelect() {
    return {
      restrict: 'A',
      link: function (scope, element, attr) {

        element.on('click', function(event) {
          event.preventDefault();
          scope.$emit('onSelectNode', scope.node);
        });
      }
    };
  }

})();