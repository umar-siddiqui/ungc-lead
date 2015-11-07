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

      var myTableDiv = document.getElementsByClassName('graph')[0];

      var table = document.createElement('TABLE');
      table.border = '0';

      var tableBody = document.createElement('TBODY');
      table.appendChild(tableBody);

      var count = MaxRowLength;
      var tr = document.createElement('TR');

      tableBody.appendChild(tr);

      // Skipping one row space at the top of table
      for (j = 0; j < 1; j++) {
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

      //Adding a separator (horizontal rule) between labels and graph
      var tr = document.createElement('TR');
      tableBody.appendChild(tr);
      var td = document.createElement('TD');
      td.setAttribute('colspan','' + MaxColumbLength);
      td.innerHTML = "<hr/>";
      td.className = "line";
      tr.appendChild(td);



      // Putting labels to columbs
      var tr = document.createElement('TR');
      tableBody.appendChild(tr);
      for (i = 0; i < MaxColumbLength; i++) {
        var td = document.createElement('TD');
        td.appendChild(document.createTextNode('Stage ' + test[i].stage));
        td.className = "rowlabel";
        tr.appendChild(td);
      }

       // Putting descriptions under labels
      var tr = document.createElement('TR');
      tableBody.appendChild(tr);

        var td = document.createElement('TD');
        td.appendChild(document.createTextNode('Non-Compliance'));
        td.className = "rowlabeldesc";
        tr.appendChild(td);

        var td = document.createElement('TD');
        td.appendChild(document.createTextNode('Compliance'));
        td.className = "rowlabeldesc";
        tr.appendChild(td);

        var td = document.createElement('TD');
        td.appendChild(document.createTextNode('Optimization'));
        td.className = "rowlabeldesc";
        tr.appendChild(td);

        var td = document.createElement('TD');
        td.appendChild(document.createTextNode('Value Proposition'));
        td.className = "rowlabeldesc";
        tr.appendChild(td);

        var td = document.createElement('TD');
        td.appendChild(document.createTextNode('Mission and Vision'));
        td.className = "rowlabeldesc";
        tr.appendChild(td);

      //Adding an image for the legend of the graph
      var tr = document.createElement('TR');
      tableBody.appendChild(tr);
      var td = document.createElement('TD');
      td.setAttribute('colspan','' + MaxColumbLength);
      td.innerHTML = "<img src=\"images/graphlegend.png\"/>";
      td.className = "legend";
      tr.appendChild(td);


      myTableDiv.appendChild(table);
    }

    init();
  }

})();
