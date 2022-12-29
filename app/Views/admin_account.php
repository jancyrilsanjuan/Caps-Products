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
                <p>Adding Place</p></a>
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
      <div class="container">
        <div class="row">
          <div class="col-12 col-sm8- offset-sm-2 col-md-6 offset-md-3 mt-5 pt-3 pb-3 bg-white from-wrapper">
            <div class="container">
              <h3><?= $users['name'] ?></h3>
              <hr>
              <?php if (session()->get('success')): ?>
                <!-- <div class="alert alert-success" role="alert">
                  <?= session()->get('success') ?>
                </div> -->
              <?php endif; ?>
              <form class="" action="/user_account" method="post">
                <div class="row">
                  <div class="col-12 col-sm-6">
                    <div class="form-group">
                     <label for="name">Name</label>
                     <input type="text" class="form-control" name="name" id="name" value="<?= set_value('name', $users['name']) ?>">
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-group">
                     <label for="email">Email address</label>
                     <input type="text" class="form-control" readonly id="email" value="<?= $users['email'] ?>">
                    </div>
                  </div>
                  <div class="col-12 col-sm-6">
                    <div class="form-group">
                     <label for="password">Password</label>
                     <input type="password" class="form-control" name="password" id="password" value="">
                   </div>
                 </div>
                 <div class="col-12 col-sm-6">
                   <div class="form-group">
                    <label for="confirmpassword">Confirm Password</label>
                    <input type="password" class="form-control" name="confirmpassword" id="confirmpassword" value="">
                  </div>
                </div>
                <?php if (isset($validation)): ?>
                  <div class="col-12">
                    <div class="alert alert-danger" role="alert">
                      <?= $validation->listErrors() ?>
                    </div>
                  </div>
                <?php endif; ?>
                </div>

                <div class="row">
                  <div class="col-12 col-sm-4">
                    <button type="submit" class="btn btn-primary">Update</button>
                  </div>

                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark"></aside>

    <?= $this->include('include/admin/top')?>
    <?= $this->include('include/admin/footer')?>
    <?= $this->include('include/admin/end')?>

  </div>
</body>
