( function() {
  'use strict';

  angular
    .module('ungc.admin')
    .service('PanelService',[
      'PromiseFactory', 'UtilityFactory',
      PanelService
    ]);

    function PanelService(PromiseFactory, Utils) {

      this.allAssesments = function() {
        var requestDetails = {
          url: '/assesments/all_assesments.json',
          method: 'GET'
        };
        return PromiseFactory.generateHttpPromise(requestDetails);
      };

      this.allUsers = function() {
        var requestDetails = {
          url: '/users.json',
          method: 'GET'
        };
        return PromiseFactory.generateHttpPromise(requestDetails);
      };

      this.newUser = function(user) {

        var requestDetails = {
          url: '/admin/users.json',
          method: "POST",
          data: { user: user }
        };
        return PromiseFactory.generateHttpPromise(requestDetails);
      };

    }

})();
