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
          url: '/assesments.json',
          method: 'GET'
        };
        return PromiseFactory.generateHttpPromise(requestDetails);
      };

      this.getCurrentUserCompany = function() {
        var requestDetails = {
          url: '/companies/current_user_company.json',
          method: 'GET'
        };
        return PromiseFactory.generateHttpPromise(requestDetails);
      };

      this.createReport = function() {
        var requestDetails = {
          url: '/reports.json',
          method: 'POST'
        };
        return PromiseFactory.generateHttpPromise(requestDetails);
      };
    }

})();
