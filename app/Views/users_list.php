<title>Etour Guide: OrMin Travel Guide</title>

<?= $this->include('include/admin/top')?>

<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
  <div class="wrapper">
    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
      <img class="animation__wobble" src="<?= base_url('im/picadmin.png') ?>" alt="eTour Guide" height="100" width="100">
    </div>

    <?= $this->include('include/admin/navbar')?>

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <?= $this->include('include/admin/logo')?>

      <div class="sidebar">
        <?= $this->include('include/admin/sidebar')?>

        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <li class="nav-item menu-open">
              <li><a href="<?= site_url('/admin') ?>"class="nav-link">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>Dashboard</p></a>
              </li>
            </li>
            <li class="nav-item">
              <li><a href="<?= site_url('/adding_place') ?>"class="nav-link">
                <i class="nav-icon fas fa-map-marked-alt"></i>
                <p>Adding Data</p></a>
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
              <li><a href="<?= site_url('/users_list') ?>"class="nav-link active">
                <i class="nav-icon fas fa-user"></i>
                <p>Users</p></a>
              </li>
            </li>
            <li class="nav-item">
              <li><a href="<?= site_url('/admin_account') ?>"class="nav-link">
                <i class="nav-icon fas fa-user-circle"></i>
                <p>Account</p></a>
              </li>
            </li>
            <li class="nav-item">
              <li><a href="<?= site_url('/logout') ?>"class="nav-link">
                <i class="nav-icon fas fa-sign-out-alt"></i>
                <p>Logout</p></a>
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
                  <h1>Users</h1>
                </div>
                <div class="col-sm-6">
                  <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Users</li>
                  </ol>
                </div>
              </div>
            </div>
          </section>
          <!-- Main content -->
          <section class="content">
            <div class="container-fluid">
              <div class="row">
                <div class="col-12">
                  <div class="card">
                    <div class="card-header">
                      <h3 class="card-title">List of Users</h3>
                    </div>
                    <div class="card-body">
                      <div class="col-md-12">
                        <?php if($users):?>
                          <table id="example1" class="table table-bordered table-striped">
                            <thead>
                              <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Password</th>
                                <th>Status</th>
                                <th>Token</th>
                                <th>Created at</th>
                              </tr>
                              <?php foreach ($users as $user):?>
                              </thead>
                              <tr>
                                <td><?=$user['id']?></td>
                                <td><?=$user['name']?></td>
                                <td><?=$user['email']?></td>
                                <td><?=$user['password']?></td>
                                <td><?=$user['status']?></td>
                                <td><?=$user['token']?></td>
                                <td><?=$user['created_at']?></td>
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
          </section>
        </div>

        <?= $this->include('include/admin/footer')?>
        <!-- Control Sidebar -->
        <aside class="control-sidebar control-sidebar-dark"></aside>
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
</html>
