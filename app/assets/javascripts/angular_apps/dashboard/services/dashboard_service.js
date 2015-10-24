( function() {
  'use strict';

  angular
    .module('ungc.dashboard')
    .service('DashboardService',[
      'PromiseFactory', 'UtilityFactory',
      DashboardService
    ]);

    function DashboardService(PromiseFactory, Utils) {

      this.getAssesments = function(id) {
        var requestDetails = {
          url: '/assesments.json',
          method: 'GET'
        };
        return PromiseFactory.generateHttpPromise(requestDetails);
      };
    }

})();