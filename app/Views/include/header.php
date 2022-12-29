<header>
  <div class="header-area ">
    <div id="sticky-header" class="main-header-area">
      <div class="container-fluid">
        <div class="header_bottom_border">
          <div class="row align-items-center">
            <div class="col-xl-2 col-lg-2">
              <div class="logo">
                <a href="index.html">
                  <img src="<?= base_url('im/logo etour.png') ?>" alt="">
                </a>
              </div>
            </div>
            <div class="col-xl-6 col-lg-6">
              <div class="main-menu  d-none d-lg-block">
                <nav>
                  <ul id="navigation">
                    <li><a href="<?= site_url('/') ?>">Home</a></li>
                    <li><a href="#">About <i class="ti-angle-down"></i></a>
                      <ul class="submenu">
                        <li><a href="<?= site_url('/about') ?>">About</a></li>
                        <li><a href="<?= site_url('/traveladvisory') ?>">Travel Advisory</a></li>
                      </ul>
                    </li>
                    <li><a href="<?= site_url('/destination') ?>">Destinations</a></li>
                    <li><a href="#">Pages <i class="ti-angle-down"></i></a>
                      <ul class="submenu">
                        <li><a href="<?= site_url('/pasalubongcenter') ?>">Pasalubong Centers</a></li>
                        <li><a href="<?= site_url('/restaurants') ?>">Restaurants</a></li>
                        <li><a href="<?= site_url('/hotels') ?>">Accomodations</a></li>
                        <?php
                        if($logged):
                          ?>
                          <li><a href="<?= site_url('/category') ?>">Recommender</a></li>
                        <?php endif; ?>
                      </ul>
                    </li>
                    <li><a href="<?= site_url('/contact') ?>">Contact</a></li>
                    <li><a href="#">Account <i class="ti-angle-down"></i></a>
                      <ul class="submenu">
                      <?php
                      if($logged):
                        ?>
                    <li><a href="<?= site_url('/user_account') ?>">Account</a></li>
                  <?php endif; ?>
                    <?php
                    if($logged):
                      ?>
                      <li><a href="<?= site_url('/logout') ?>">Logout</a></li>
                    <?php else: ?>
                      <li><a href="<?= site_url('/signin') ?>">Login</a></li>
                    <?php endif; ?>
                  </ul>
                </li>
                </nav>
              </div>
            </div>
            <div class="col-xl-4 col-lg-4 d-none d-lg-block">
              <div class="social_wrap d-flex align-items-center justify-content-end">
              </div>
            </div>
            <div class="seach_icon">
              <a data-toggle="modal" data-target="#exampleModalCenter" href="#">
                <i class="fa fa-search"></i>
              </a>
            </div>
            <div class="col-12">
              <div class="mobile_menu d-block d-lg-none"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>
