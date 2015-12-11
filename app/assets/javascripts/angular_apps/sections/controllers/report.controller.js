( function() {
  'use strict';

  angular
    .module('ungc.session')
    .controller('ReportController', [
      '$scope', '$window', '$state', '$http', '$stateParams', '$log', 'highchartsNG',
      ReportController
    ]);

  function ReportController($scope, $window, $state, $http, $stateParams, $log, highchartsNG) {

    var $$ctrlScope = {};

    function init(){
      currentGraph();
      fetchReport();
    }

    function currentGraph(){

      function successCallback(response) {
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

    function fetchReport(){

      return $http({
        method: 'GET',
        url: '/answers/report.json',
        params: {
          assesment_id: $stateParams.assesment_id
        }
      }).then(successCallback, errorCallback);

      function successCallback(response) {
        loadSectionData(response.data.report);
        initHighChart(response.data.function_priorities, response.data.functional_snapshot);
      }

      function errorCallback(response) {
        alert('Error')
      }
    }

    function generateReportPdf(){
      $scope.loading = true;

      var css = $('.cssDiv').data('cssDiv');

      var content = $('.mainBody').html();
      content = content.replace(new RegExp('src=\"','g'), 'src=\"' + $(location).attr('origin') + '/');
      css = css.replace(/background:;|src:[ ]+;/g, '');
      content = '<!DOCTYPE html><html><head><meta charset="utf-8" />' + css + '</head><body>' + content + '<body></html>'

      return $http({
        method: 'POST',
        url: '/sections/report_pdf.json',
        data: {
          content: content
        }
      }).then(successCallback, errorCallback);

      function successCallback(response) {
        $scope.loading = false;
        $log.info(response.data);
      }

      function errorCallback(response) {
        $scope.loading = false;
        alert('Error')
      }
    }

    $scope.exportToPdf = generateReportPdf;

    function loadSectionData(sections){
      var readinessSections = [];
      var functionsSections = {};
      angular.forEach(sections, function(section) {
        if(section.business_function){
          var bfname = section.business_function.name
          functionsSections[bfname] = functionsSections[bfname] || []
          functionsSections[bfname].push(section)
          return
        }
        readinessSections.push(section)
      });
      $scope.readinessSections = readinessSections;
      $scope.functionsSections = functionsSections;
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

    function initHighChart(functionPriorities, functionalSnapshot) {

      highchartsNG.ready(function(){
        $scope.functionalPriority = {
          chart: {
              type: 'bar'
          },
          title: {
              text: 'Function Priority'
          },
          xAxis: {

              categories: functionPriorities.section_names,
              labels: {

                  style: {

                      textOverflow: 'none'
                  }
              }
          },
          yAxis: {
              min: 0,
             tickInterval: 1,
              showLastLabel:false,
              title:
              {
                  text: 'Influence'
              }
          },
          legend: {
              reversed: true
          },
          plotOptions: {
              series: {
                  stacking: 'normal'
              }
          },
          series: [{
              name: 'Acheiving Sustainability Goals',
               color: 'rgba(65,170,196,1)',
              data: functionPriorities.achieving_sustainability_goals
          }, {
              name: 'Historical Value Creation',
                color: 'rgba(189,182,156,1)',
              data: functionPriorities.historical_value_creation
          }]
        };

        $scope.functionalSnapshot = {

          chart: {
            polar: true,
            type: 'line'
          },

          title: {
            text: 'Functional Snapshot',
            x: -80
          },

          pane: {
            size: '80%'
          },

          xAxis: {
            categories: functionalSnapshot.function_section_names,
            tickmarkPlacement: 'on',
            lineWidth: 0
          },

          yAxis: {
            gridLineInterpolation: 'polygon',
            lineWidth: 0,
            min: 0,
            max: 6,
            tickInterval: 1,
            labels: {
              format: 'Stage {value}'
            },
            showFirstLabel: false
          },

          legend: {
            align: 'right',
            verticalAlign: 'top',
            y: 70,
            layout: 'vertical'
          },
          series: [{
            type: 'column',
            name: 'Priority',
            data: functionalSnapshot.priority,
            pointPlacement: 'on',
            color: 'rgba(112,193,179,.5)'
          }, {
            name: 'Strategic',
            data: functionalSnapshot.strategic,
            pointPlacement: 'on',
            color: 'rgba(242,95,92,1)'
          }, {
            name: 'Operational',
            data: functionalSnapshot.operational,
            pointPlacement: 'on',
            color: 'rgba(255,224,102,1)'
          }, {
            name: 'Cultural',
            data: functionalSnapshot.cultural,
            pointPlacement: 'on',
            color: 'rgba(36,123,160,1)'
          }]

        };

        // Patch :: directive failing to load module feature
        $('#chart1').highcharts($scope.functionalSnapshot);
        $('#chart2').highcharts($scope.functionalPriority);

      },this);

    }



    init();
  }

})();
