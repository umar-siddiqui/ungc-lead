( function() {
  'use strict';

  angular
    .module('ungc.authentication')
    .service('AuthenticationService',[
      'PromiseFactory', 'UtilityFactory',
      AuthenticationService
    ]);

    function AuthenticationService(PromiseFactory, Utils) {

      this.forgotPassword = function(email) {

        var requestDetails = {
          url: '/admin/users/generate_new_password_email',
          method: "POST",
          data: { email : email }
        };
        return PromiseFactory.generateHttpPromise(requestDetails);
      };

    }

})();
