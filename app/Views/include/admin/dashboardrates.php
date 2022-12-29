<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-6">
        <!-- AREA CHART -->
        <div class="card card-primary">
          <div class="card-header">
            <h3 class="card-title">Destinations</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
            </div>
          </div>
          <div class="card-body">
            <div class="chart">
              <canvas id="areaChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
            </div>
          </div>
        </div>
        <!-- DONUT CHART -->
        <div class="card card-danger">
          <div class="card-header">
            <h3 class="card-title">Accomodations</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
            </div>
          </div>
          <div class="card-body">
            <canvas id="donutChart" style="min-height: 250px; height: 300px; max-height: 300px; max-width: 100%;"></canvas>
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <!-- LINE CHART -->
        <div class="card card-info">
          <div class="card-header">
            <h3 class="card-title">Restaurants</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
            </div>
          </div>
          <div class="card-body">
            <div class="chart">
              <canvas id="lineChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<?= $this->include('include/admin/end')?>
<script>
$(function () {
  /* ChartJS
  * -------
  * Here we will create a few charts using ChartJS
  */
  //--------------
  //- AREA CHART -
  //--------------
  // Get context with jQuery - using jQuery's .get() method.
  var areaChartCanvas = $('#areaChart').get(0).getContext('2d')
  var areaChartData = {
    labels  : ['Calapan City', 'Baco', 'San Teodoro', 'Puerto Galera', 'Naujan', 'Victoria', 'Socorro', 'Pola', 'Pinamalayan', 'Gloria', 'Bansud', 'Bongabong', 'Roxas','Mansalay', 'Bulalacao'],
    datasets: [{
      label               : 'Digital Goods',
      backgroundColor     : 'rgba(60,141,188,0.9)',
      borderColor         : 'rgba(60,141,188,0.8)',
      pointRadius          : false,
      pointColor          : '#3b8bba',
      pointStrokeColor    : 'rgba(60,141,188,1)',
      pointHighlightFill  : '#fff',
      pointHighlightStroke: 'rgba(60,141,188,1)',
      data                : [28, 48, 40, 19, 86, 27, 90, 56, 27, 38, 88, 94, 65, 53, 58]
    },
    {
      label               : 'Electronics',
      backgroundColor     : 'rgba(210, 214, 222, 1)',
      borderColor         : 'rgba(210, 214, 222, 1)',
      pointRadius         : false,
      pointColor          : 'rgba(210, 214, 222, 1)',
      pointStrokeColor    : '#c1c7d1',
      pointHighlightFill  : '#fff',
      pointHighlightStroke: 'rgba(220,220,220,1)',
      data                : [65, 59, 80, 81, 56, 55, 40, 65, 74, 83, 94, 34, 27, 18, 15]
    },
  ]
}
var areaChartOptions = {
  maintainAspectRatio : false,
  responsive : true,
  legend: {
    display: false
  },
  scales: {
    xAxes: [{
      gridLines : {
        display : false,
      }
    }],
    yAxes: [{
      gridLines : {
        display : false,
      }
    }]
  }
}
// This will get the first returned node in the jQuery collection.
new Chart(areaChartCanvas, {
  type: 'line',
  data: areaChartData,
  options: areaChartOptions
})
//-------------
//- LINE CHART -
//--------------
var lineChartCanvas = $('#lineChart').get(0).getContext('2d')
var lineChartOptions = $.extend(true, {}, areaChartOptions)
var lineChartData = $.extend(true, {}, areaChartData)
lineChartData.datasets[0].fill = false;
lineChartData.datasets[1].fill = false;
lineChartOptions.datasetFill = false
var lineChart = new Chart(lineChartCanvas, {
  type: 'line',
  data: lineChartData,
  options: lineChartOptions
})
//-------------
//- DONUT CHART -
//-------------
// Get context with jQuery - using jQuery's .get() method.
var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
var donutData        = {
  labels: [
    'Calapan City', 'Baco', 'San Teodoro', 'Puerto Galera', 'Naujan', 'Victoria', 'Socorro', 'Pola', 'Pinamalayan', 'Gloria', 'Bansud', 'Bongabong', 'Roxas','Mansalay', 'Bulalacao',
  ],
  datasets: [{
    data: [700,500,400,600,300,100, 200, 800, 50, 800, 100, 150, 280, 370, 590],
    backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de', 'red', 'blue', 'orange', 'green','brown','cyan','pink','gold','indigo' ],
  }
]}
var donutOptions     = {
  maintainAspectRatio : false,
  responsive : true,
}
//Create pie or douhnut chart
// You can switch between pie and douhnut using the method below.
new Chart(donutChartCanvas, {
  type: 'doughnut',
  data: donutData,
  options: donutOptions
})
//-------------
//- PIE CHART -
//-------------
// Get context with jQuery - using jQuery's .get() method.
var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
var pieData        = donutData;
var pieOptions     = {
  maintainAspectRatio : false,
  responsive : true,
}
//Create pie or douhnut chart
// You can switch between pie and douhnut using the method below.
new Chart(pieChartCanvas, {
  type: 'pie',
  data: pieData,
  options: pieOptions
})
//-------------
//- BAR CHART -
//-------------
var barChartCanvas = $('#barChart').get(0).getContext('2d')
var barChartData = $.extend(true, {}, areaChartData)
var temp0 = areaChartData.datasets[0]
var temp1 = areaChartData.datasets[1]
barChartData.datasets[0] = temp1
barChartData.datasets[1] = temp0
var barChartOptions = {
  responsive              : true,
  maintainAspectRatio     : false,
  datasetFill             : false
}
new Chart(barChartCanvas, {
  type: 'bar',
  data: barChartData,
  options: barChartOptions
})
//---------------------
//- STACKED BAR CHART -
//---------------------
var stackedBarChartCanvas = $('#stackedBarChart').get(0).getContext('2d')
var stackedBarChartData = $.extend(true, {}, barChartData)
var stackedBarChartOptions = {
  responsive              : true,
  maintainAspectRatio     : false,
  scales: {
    xAxes: [{
      stacked: true,
    }],
    yAxes: [{
      stacked: true
    }]
  }
}
new Chart(stackedBarChartCanvas, {
  type: 'bar',
  data: stackedBarChartData,
  options: stackedBarChartOptions
})
})
</script>
