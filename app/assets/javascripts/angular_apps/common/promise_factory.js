( function() {
  'use strict';

  angular
    .module('ungc.dashboard')
    .factory('PromiseFactory',[
      '$http', '$q', '$log',
      PromiseFactory
    ]);

    function PromiseFactory($http, $q, $log) {

      var factory = {}

      factory.generateHttpPromise = function (requestDetails) {
        var deferred = $q.defer();

        $http(requestDetails).success(function (data, status, fnc, httpObj) {
          deferred.resolve(data, status, fnc, httpObj);
        }).error(function (data, status, fnc, httpObj) {
          var errorResponse = {
            data: data,
            status: status
          };
          deferred.reject(errorResponse);
        });

        return deferred.promise;
      };

      return factory;
    }

})();
