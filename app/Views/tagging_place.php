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
              <li><a href="<?= site_url('TagPlaceController/tagging_place') ?>"class="nav-link active">
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
                <h1 class="m-0">Tagging Place</h1>
              </div>
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">Tagging</li>
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
                                <th>Tag ID</th>
                                <th>Description</th>
                                <th>Location ID</th>
                                <th>Picture ID</th>
                                <th>User ID</th>
                                <th>Status</th>
                              </tr>
                            </thead>
                            <?php if($tag_place):?>
                              <?php foreach ($tag_place as $tag):?>
                                <tr>
                                  <td><?=$tag['id']?></td>
                                  <td><?=$tag['description']?></td>
                                  <td><?=$tag['location_id']?></td>
                                  <td><?=$tag['picture_id']?></td>
                                  <td><?=$tag['user_id']?></td>
                                  <td><?=$tag['status']?></td>
                                  <td class="project-actions text-right">
                                    <a class="btn btn-success btn-sm" onclick=" "href="<?= site_url('tag_insert') ?>">
                                    Approved
                                  </a>
                                  <a class="btn btn-danger btn-sm" href="#">
                                    Decline
                                  </a>
                                </td>
                              </tr>
                            <?php endforeach; ?>
                          <?php endif; ?>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-12">
                  <div class="card">
                    <div class="card-body">
                      <div class="col-md-12">
                        <table id="example2" class="table table-bordered table-striped">
                          <thead>
                            <tr>
                              <th>ID</th>
                              <th>Destination ID</th>
                              <th>Image</th>
                              <th>Uploaded By</th>
                              <th>Status</th>
                            </tr>
                          </thead>
                          <?php if($images):?>
                            <?php foreach ($images as $img):?>
                              <tr>
                                <td><?=$img['id']?></td>
                                <td><?=$img['destination_id']?></td>
                                <td><?=$img['image']?></td>
                                <td><?=$img['uploaded_by']?></td>
                                <td><?=$tag['status']?></td>
                                <td class="project-actions text-right">
                                  <a href="<?= site_url('tag_insert') ?>">
                                  Approved
                                </a>
                                <a class="btn btn-danger btn-sm" href="#">
                                  Decline
                                </a>
                              </td>
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

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark"></aside>

  <?= $this->include('include/admin/footer')?>
  <?= $this->include('include/admin/end')?>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready( function () {
      $('#users-list').DataTable();
  } );
</script>
</body>
