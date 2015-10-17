( function() {
  'use strict';

  angular
    .module('ungc.session', [])
    .config([
      '$httpProvider',
      config
    ]);

  function config($httpProvider) {

    $httpProvider
      .defaults.headers
      .common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
  }

})();
