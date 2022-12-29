<title>Etour Guide: OrMin Travel Guide</title>

<?= $this->include('include/admin/top')?>

<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
  <div class="wrapper">
    <?= $this->include('include/admin/navbar')?>

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <?= $this->include('include/admin/logo')?>

      <div class="sidebar">
        <?= $this->include('include/admin/sidebar')?>
        <?= $this->include('include/admin/dashboardmenu')?>
      </div>

    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <?= $this->include('include/admin/dashboardheader')?>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
          <?= $this->include('include/admin/dashboardcontent')?>

          <div class="card-body">
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
                <div class="row">
                  <div class="col-12">
                    <div class="card">
                      <div class="card-header">
                        <h3 class="card-title">List of Destinations</h3>
                      </div>
                      <div class="card-body">
                        <div class="col-md-12">

                          <?php if($destinations):?>
                            <table id="example1" class="table table-bordered table-striped">
                              <thead>
                                <tr>
                                  <th>ID</th>
                                  <th>Name</th>
                                  <th>Location</th>
                                  <th>Image</th>
                                  <th>Description</th>
                                  <th>Latitude</th>
                                  <th>Longitude</th>
                                  <th>Fare</th>
                                </tr>
                                <?php foreach ($destinations as $destination):?>
                                </thead>
                                <tr>
                                  <td><?=$destination['id']?></td>
                                  <td><?=$destination['name']?></td>
                                  <td><?=$destination['location']?></td>
                                  <td><?=$destination['image']?></td>
                                  <td><?=$destination['description']?></td>
                                  <td><?=$destination['latitude']?></td>
                                  <td><?=$destination['longitude']?></td>
                                  <td><?=$destination['fare']?></td>
                                </tr>
                              <?php endforeach; ?>
                            </table>
                          <?php endif; ?>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark"></aside>
  <?= $this->include('include/admin/footer')?>

</div>

<?= $this->include('include/admin/end')?>

<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
  });
</script>
</body>
