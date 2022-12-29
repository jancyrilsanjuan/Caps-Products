<title>Etour Guide: OrMin Travel Guide</title>

<?= $this->include('include/admin/top')?>

<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
  <div class="wrapper">
    <div class="preloader flex-column justify-content-center align-items-center">
      <img class="animation__wobble" src="<?= base_url('im/picadmin.png') ?>" alt="eTour Guide" height="100" width="100">
    </div>

    <?= $this->include('include/admin/navbar')?>

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <?= $this->include('include/admin/logo')?>

      <div class="sidebar">
        <?= $this->include('include/admin/sidebar')?>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <li class="nav-item menu-open">
              <li><a href="<?= site_url('/admin') ?>"class="nav-link">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>Dashboard</p></a>
              </li>
            </li>
            <li class="nav-item">
              <li><a href="<?= site_url('/rates') ?>"class="nav-link active">
                <i class="nav-icon fas fa-star"></i>
                <p>Rates</p></a>
              </li>
            </li>
            <li class="nav-item">
              <li><a href="<?= site_url('/review_rating') ?>"class="nav-link">
                <i class="nav-icon fas fa-star"></i>
                <p>Review and Rating</p></a>
              </li>
            </li>
            <li class="nav-item">
              <li><a href="<?= site_url('TagPlaceController/tagging_place') ?>"class="nav-link">
                <i class="nav-icon fas fa-tags"></i>
                <p>Tagging Place</p></a>
              </li>
            </li>
            <li class="nav-item">
              <li><a href="<?= site_url('/users_list') ?>"class="nav-link">
                <i class="nav-icon fas fa-user"></i>
                <p>Users</p></a>
              </li>
            </li>
          </ul>
        </nav>
      </div>
    </aside>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1>Rates</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Rates</li>
            </ol>
          </div>
        </div>
      </div>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6">
            <!-- AREA CHART -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Destinations</h3>
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
  </div>

  <?= $this->include('include/admin/footer')?>
  <aside class="control-sidebar control-sidebar-dark"></aside>

</div>

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
]}
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
  datasets: [
    {
      data: [700,500,400,600,300,100, 200, 800, 50, 800, 100, 150, 280, 370, 590],
      backgroundColor : ['#f56954', '#00a65a', '#f39c12', '#00c0ef', '#3c8dbc', '#d2d6de', 'red', 'blue', 'orange', 'green','brown','cyan','pink','gold','indigo' ],
    }
  ]
}
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
//--------------------
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
</body>
