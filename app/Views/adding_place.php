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
              <li><a href="<?= site_url('/adding_place') ?>"class="nav-link active">
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
                <!-- <h1 class="m-0"> Place</h1> -->
              </div>
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">Adding</li>
                </ol>
              </div>
            </div>
          </div>
        </div>

        <!-- Main content -->
        <section class="content">
          <div class="container-fluid">
                    <div class="row">
                      <!-- left column -->
                      <div class="col-md-12">
                <!-- general form elements -->
                <div class="card card-primary">
                  <div class="card-header">
                    <h3 class="card-title">Adding Data</h3>
                  </div>
                  <!-- /.card-header -->
                  <!-- form start -->

                        <form class="" action="/actionInsert" method="post">
                            <input type="hidden" name="id" value="<?=$destination['id']?>">
                          <div class="card-body">
                            <div class="form-row">
                              <div class="form-group col-md-8">
                                <p class="text-info">Name</p>
                                <input class="form-control" type="text" name="name" placeholder="Input the name" value="<?=$destination['name']?>">
                              </div>

                              <div class="form-group col-md-4">
                                <p class="text-info">Category</p>
                                <select class="custom-select" name="category" value="<?=$destination['category']?>">
                                  <option>Choose...</option>
                                  <option>Destination</option>
                                  <option>Hotel</option>
                                  <option>Restaurant</option>
                                  <option>Pasalubong Center</option>
                                  <option>Products</option>
                                </select>
                              </div>
                            </div>

                            <div class="form-row">
                              <div class="form-group col-md-8">
                                <p class="text-info">Barangay</p>
                                <input type="text" class="form-control" name="location" placeholder="Input the barangay location" value="<?=$destination['location']?>">
                              </div>

                              <div class="form-group col-md-4">
                                <p class="text-info">Municipality</p>
                                <select class="custom-select" name="place" value="<?=$destination['place']?>">
                                  <option value="Calapan City">Calapan City</option>
                                  <option value="Baco">Baco</option>
                                  <option value="San Teodoro">San Teodoro</option>
                                  <option value="Puerto Galera">Puerto Galera</option>
                                  <option value="Naujan">Naujan</option>
                                  <option value="Victoria">Victoria</option>
                                  <option value="Socorro">Socorro</option>
                                  <option value="Pola">Pola</option>
                                  <option value="Pinamalayan">Pinamalayan</option>
                                  <option value="Gloria">Gloria</option>
                                  <option value="Bansud">Bansud</option>
                                  <option value="Bongabong">Bongabong</option>
                                  <option value="Roxas">Roxas</option>
                                  <option value="Mansalay">Mansalay</option>
                                  <option value="Bulalacao">Bulalacao</option>
                                </select>
                              </div>
                            </div>

                            <div class="form-row">
                              <div class="form-group col-md-6">
                                <p class="text-info">Latitude</p>
                                <input type="text" class="form-control" name="latitude" placeholder="Input the latitude" value="<?=$latitude['latitude']?>">
                              </div>

                              <div class="form-group col-md-6">
                                <p class="text-info">Longitude</p>
                                <input type="text" class="form-control" name="longitude" placeholder="Input the longitude" value="<?=$longitude['longitude']?>">
                              </div>
                            </div>

                            <!-- textarea -->
                            <div class="form-group">
                              <p class="text-info">Description</p>
                              <textarea name="description" class="form-control" rows="3" placeholder="Write something..."></textarea value="<?=$destination['description']?>">
                              </div>

                              <div class="form-group">
                                <p class="text-info">Image</p>
                                <input type="file" id="image" name="image" accept="image/*" value="<?=$destination['image']?>">
                              </div>



                              <div class="row">
                                <?php if($destination): ?>
                                  <input type="submit" name="update" value="Update">
                                <?php else: ?>
                                  <div class="modal-footer">
                                    <button type="submit" class="btn btn-primary" name="submit" value="Submit">Submit</button>
                                  <?php endif; ?>
                                </div>
                              </div>
                            </div>
                            </form>

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
