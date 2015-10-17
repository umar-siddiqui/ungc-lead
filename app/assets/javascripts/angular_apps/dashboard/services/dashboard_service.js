( function() {
  'use strict';

  angular
    .module('ungc.dashboard')
    .service('DashboardService',[
      'PromiseFactory', 'UtilityFactory',
      DashboardService
    ]);

    function DashboardService(PromiseFactory, Utils) {

      this.getAssesments = function() {
        var requestDetails = {
          url: '/dashboard.json',
          method: 'GET'
        };
        return PromiseFactory.generateHttpPromise(requestDetails);
      };
    }

})();