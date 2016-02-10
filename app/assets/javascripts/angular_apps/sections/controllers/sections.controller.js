( function() {
  'use strict';

  angular
    .module('ungc.sections')
    .controller('SectionsController', [
      '$scope', '$window', '$state', '$http', '$timeout', '$stateParams', 'highchartsNG',
      SectionsController
    ]);

  function SectionsController($scope, $window, $state, $http, $timeout, $stateParams, highchartsNG) {

    $scope.markDone = markDone;
    var $$ctrlScope = {};
    $scope.checkIfSectionsDoneForFS = checkIfSectionsDoneForFS;

    function init(){
      $scope.errors = [];
      getSectionTree();
    }

    function getSectionTree(){

      function successCallback(response) {
        $scope.sections = response.data['sections'];
        markDone($scope.sections);
      }

      function errorCallback(response) {
        alert('Something went wrong')
      }

      return $http({
        method: 'GET',
        url: '/sections.json',
        params: {
          assesment_id: $stateParams.assesment_id
        }
      }).then(successCallback, errorCallback);

    }

    function updateReportState(){
      $scope.loading = true;

      function successCallback(response) {
        $window.location.href = '/';
        $scope.loading = false;
      }

      function errorCallback(response) {
        alert('Something went wrong')
      }

      return $http({
        method: 'PUT',
        url: 'reports/update_report.json',
        params: {
          assesment_id: $stateParams.assesment_id
        },
        data: {
          status: 'completed'
        }
      }).then(successCallback, errorCallback);

    }

    $scope.fetchQuestions = function (section){
      $scope.errors = [];
      if(section.name == 'Functional Assessment' && !checkIfSectionsDone([$scope.sections[0], $scope.sections[1]], true)){
        $scope.errors
              .push('Please complete the Readiness and Functional Priority sections before attempting Functional Assessment Sections');
        return $scope.$apply();
      }

      $scope.section = section;
      $state.go('sections.questions', { section_id: section._id });
    };

    function checkIfSectionsDoneForFS(section) {
      return checkIfSectionsDone([$scope.sections[0], $scope.sections[1]], true);
    }

    function checkIfSectionsDone(sections, flag){
      angular.forEach(sections, function(section){
        if (!section.submitted) { return flag = false; };
        checkIfSectionsDone(section.sections, flag)
      });
      return flag;
    }

    function markDone(sections){
      angular.forEach(sections, function(section){
        markDone(section.sections)
        if (section.submitted) return;
        if (section.questions_count == 0) {
          section.submitted = _.every(section.sections, function(section) {
            return section.submitted == true;
          });
        };
      });
    }

    function checkIfRequiredNumberDone(section, no){
      var result = _.countBy(section.sections, function(section) {
        return section.submitted;
      });
      return angular.isUndefined(result[true]) || result[true] < no ? false : true;
    }

    $scope.concluded = function(){
      var sectionsDone = checkIfSectionsDone([$scope.sections[0], $scope.sections[1]], true);
      var requiredNumberDone = checkIfRequiredNumberDone($scope.sections[2], 3);
      $scope.errors = [];
      if(!sectionsDone || !requiredNumberDone)
        return $scope.errors
                     .push('Please complete the Readiness and Functional Priority sections and at least 3 Functional Assessments before concluding.');
      updateReportState();
    }

    function fetchReport(){
      $scope.loading = true;

      return $http({
        method: 'GET',
        url: '/answers/report.json'
      }).then(successCallback, errorCallback);

      function successCallback(response) {
        $scope.loading = false;
        initHighChart(response.data.function_priorities, response.data.functional_snapshot);
      }

      function errorCallback(response) {
        $scope.loading = false;
        alert('Error')
      }
    }

    function initHighChart(functionPriorities, functionalSnapshot) {

      highchartsNG.ready(function(){
        $scope.functionalPriority = {
          chart: {
              type: 'bar',
              events: {
                load: functionalPriorityLoaded
              }
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
              name: 'Achieving Sustainability Goals',
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
            type: 'line',
            events: {
              load: functionalSnapshotLoaded
            }
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

    function functionalPriorityLoaded(){
      $$ctrlScope.functionalPriorityLoaded = true;
      if($$ctrlScope.functionalSnapshotLoaded == true){
        $timeout(function() {
          $scope.loading = false;
        }, 5000);
      }
    }

    function functionalSnapshotLoaded(){
      $$ctrlScope.functionalSnapshotLoaded = true;
      if($$ctrlScope.functionalPriorityLoaded == true){
        $timeout(function() {
          $scope.loading = false;
        }, 5000);
      }
    }

    init();

    $scope
      .$on('onSelectNode', function (event, section) {
        $scope.fetchQuestions(section)
        if(section.name == 'Functional Assessment') fetchReport();
      });
  }

})();
