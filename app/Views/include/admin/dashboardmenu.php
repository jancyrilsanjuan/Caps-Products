<!-- Sidebar Menu -->
<nav class="mt-2">
  <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
    <li class="nav-item menu-open"><a href="<?= site_url('/admin') ?>"class="nav-link active">
      <i class="nav-icon fas fa-tachometer-alt"></i>
      <p>Dashboard</p></a>
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
      <li><a href="<?= site_url('/tagging_place') ?>"class="nav-link">
        <i class="nav-icon fa fa-tags"></i>
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
