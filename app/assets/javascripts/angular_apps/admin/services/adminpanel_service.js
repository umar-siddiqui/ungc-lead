( function() {
  'use strict';

  angular
    .module('ungc.adminpanel')
    .service('AdminpanelService',[
      'PromiseFactory', 'UtilityFactory',
      AdminpanelService
    ]);

    function AdminpanelService(PromiseFactory, Utils) {

      this.allAssesments = function() {
        var requestDetails = {
          url: '/admin/adminpanel.json',
          method: 'GET'
        };
        return PromiseFactory.generateHttpPromise(requestDetails);
      };
    }

})();