( function() {
  'use strict';

  angular
    .module('ungc.session')
    .controller('ReportController', [
      '$scope', '$window', '$state', '$http', '$stateParams',
      ReportController
    ]);

  function ReportController($scope, $window, $state, $http, $stateParams) {

    function init(){
      currentGraph();
    }

    function currentGraph(){

      function successCallback(response) {
        // $scope.current_graph = response.data['current_graph'];
        drawDynamicTable(response.data['current_graph']);
        console.log(response);
      }

      function errorCallback(response) {
        alert('Error')
      }

      return $http({
        method: 'GET',
        url: '/answers/current_graph.json',
        params: {
          assesment_id: $stateParams.assesment_id
        }
      }).then(successCallback, errorCallback);

    }

    function drawDynamicTable(test) {
      var MaxRowLength = 0;
      var MaxColumbLength = test.length;

      _.each(test, function(stage) {
        var listLength = stage.list.length;
        if (listLength > MaxRowLength) MaxRowLength = listLength;
      });

      console.log("MaxRowLength: ", MaxRowLength);
      console.log("MaxColumbLength: ", MaxColumbLength);

      var myTableDiv = document.getElementsByClassName('graph')[0];

      var table = document.createElement('TABLE');
      table.border = '1';

      var tableBody = document.createElement('TBODY');
      table.appendChild(tableBody);

      var count = MaxRowLength;
      var tr = document.createElement('TR');

      tableBody.appendChild(tr);

      // Skipping two row space at the top of table
      for (j = 0; j < 2; j++) {
        var tr = document.createElement('TR');
        tableBody.appendChild(tr);

        for (i = 0; i < MaxColumbLength; i++) {
          var td = document.createElement('TD');
          td.className = "blank"
          tr.appendChild(td)
        }
      }

      // Drawing dynamic table
      for (var i = 0; i < MaxRowLength; i++) {
        var tr = document.createElement('TR');
        tableBody.appendChild(tr);

        for (var j = 0; j < MaxColumbLength; j++) {
          var stage = test[j];

          var td = document.createElement('TD');
          if (count == _.filter(stage.list, function(col) {
              return !col.disable
            }).length) {
            var block = _.filter(stage.list, function(col) {
              return !col.disable
            })[0]
            td.appendChild(document.createTextNode(block.label));
            td.className = block.type;
            td.setAttribute("title", block.full_label);
            block.disable = true;
            tr.appendChild(td);
          } else {
            td.className = "blank"
            tr.appendChild(td);
          }
        }
        count--;
      }

      // Putting labels to columbs
      var tr = document.createElement('TR');
      tableBody.appendChild(tr);
      for (i = 0; i < MaxColumbLength; i++) {
        var td = document.createElement('TD');
        td.appendChild(document.createTextNode(test[i].stage));
        tr.appendChild(td);
      }

      myTableDiv.appendChild(table);
    }

    init();
  }

})();
