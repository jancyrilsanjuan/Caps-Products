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
      <?= $this->include('include/admin/dashboardcontent')?>
      <?= $this->include('include/admin/dashboardrates')?>
    </div>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark"></aside>

    <?= $this->include('include/admin/top')?>
    <?= $this->include('include/admin/footer')?>
    <?= $this->include('include/admin/end')?>

  </div>
</body>
