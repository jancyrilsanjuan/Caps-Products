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
              <li><a href="<?= site_url('/adding_place') ?>"class="nav-link">
                <i class="nav-icon fas fa-map-marked-alt"></i>
                <p>Adding Data</p></a>
              </li>
            </li>
            <li class="nav-item">
              <li><a href="<?= site_url('/review_rating') ?>"class="nav-link active">
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
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0">Review and Rating</h1>
            </div>
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Review & Rating</li>
              </ol>
            </div>
          </div>
        </div>
      </div>
      <!-- Main content -->
      <section class="content">
        <div class="card-body">
          <div class="tab-content">
            <div class="tab-pane active" id="tab_1">
              <div class="row">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                      <div class="col-md-12">
                        <table id="example2" class="table table-bordered table-striped">
                          <thead>
                            <tr>
                              <th>Review ID</th>
                              <th>Destination ID</th>
                              <th>User ID</th>
                              <th>Username</th>
                              <th>User Rating</th>
                              <th>User Review</th>
                            </tr>
                          </thead>
                          <?php if($review_table):?>
                            <?php foreach ($review_table as $review):?>
                              <tr>
                                <td><?=$review['review_id']?></td>
                                <td><?=$review['destination_id']?></td>
                                <td><?=$review['user_id']?></td>
                                <td><?=$review['user_name']?></td>
                                <td><?=$review['user_rating']?></td>
                                <td><?=$review['user_review']?></td>
                              </tr>
                            <?php endforeach; ?>
                          <?php endif; ?>
                        </table>
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
    <aside class="control-sidebar control-sidebar-dark"></aside>

    <?= $this->include('include/admin/footer')?>

  </div>
<?= $this->include('include/admin/end')?>
</body>
