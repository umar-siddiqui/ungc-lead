( function() {
  'use strict';

  angular
    .module('ungc.dashboard')
    .factory('UtilityFactory',[
      '$window', '$location',
      UtilityFactory
    ]);

    function UtilityFactory($window, $location) {

      var factory = {}

      factory.log = function() {

        var _time      = new Date();
        var time       = ( _time.getHours()
          + ":" + _time.getMinutes()
          + ":" + _time.getSeconds()
          + ":" + _time.getMilliseconds());
        var LOG_PREFIX = "[TREENI] - " + time;
        var args       = Array.prototype.slice.call( arguments );
        args.unshift( LOG_PREFIX + " ::" );

        window.console &&
        ( window.console.log.apply
          ? window.console.log.apply( window.console, args )
          : window.console.log( Array.prototype.slice.call( args, 0 ).join(" "))
          )
      };

      factory.round10 = function(value, exp) {

        var type = 'round';

        // If the exp is undefined or zero...
        if (typeof exp === 'undefined' || +exp === 0) {
          return Math[type](value);
        }
        value = +value;
        exp = +exp;
        // If the value is not a number or the exp is not an integer...
        if (isNaN(value) || !(typeof exp === 'number' && exp % 1 === 0)) {
          return NaN;
        }
        // Shift
        value = value.toString().split('e');
        value = Math[type](+(value[0] + 'e' + (value[1] ? (+value[1] - exp) : -exp)));
        // Shift back
        value = value.toString().split('e');
        return +(value[0] + 'e' + (value[1] ? (+value[1] + exp) : exp));
      };

      /**
        * @param msg: string
        * @param type: error | alert | success, default: alert
        * @param cname: classname, default: alert
        * return notification object
        *
        */

      factory.notifier = function (msg, type, cname) {
        return {
          type: type || 'alert',
          msg: msg,
          cname: cname || type || 'alert'
        }
      };

      factory.redirectTo = function (url) {
        $window.location.href = url;
      };

      factory.currentUrlParams = function () {
        // This function is anonymous, is executed immediately and
        // the return value is assigned to QueryString!
        var query_string = {};
        var query = window.location.search.substring(1);
        var vars = query.split("&");

        for (var i=0;i<vars.length;i++) {
          var pair = vars[i].split("=");
              // If first entry with this name
          if (typeof query_string[pair[0]] === "undefined") {
            query_string[pair[0]] = pair[1];
              // If second entry with this name
          } else if (typeof query_string[pair[0]] === "string") {
            var arr = [ query_string[pair[0]], pair[1] ];
            query_string[pair[0]] = arr;
              // If third or later entry with this name
          } else {
            query_string[pair[0]].push(pair[1]);
          }
        }
          return query_string;
      };

      factory.partition = function (array, index, upto) {
        return _.first(_.rest(array, index), upto)
      };

      factory.treeToArray = function arrayFromTree(tree, array, prelvl, parIndex) {

        var lvl = prelvl || 0
          , index = array.length;

        array.push({ id: tree.id, name: tree.name, lvl: lvl, parentIndex: parIndex });
        if(tree.children[0]) {
          for(var i = 0 ;i < tree.children.length; i++) {
            arrayFromTree( tree.children[i] ,array, lvl + 1, index);
          };
        }

      };

      return factory;
    }

})();
