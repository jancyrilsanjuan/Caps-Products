<title>Etour Guide: OrMin Travel Guide</title>

<?= $this->include('include/top')?>

<body>

  <?= $this->include('include/header')?>

  <div class="row">
    <div class="col-5">
      <?php if($logged): ?>
      <h3>Hello, <?= session()->get('name') ?></h3>
      <?php endif; ?>
    </div>
  </div>

  <!-- slider_area -->
  <div class="slider_area">
    <div class="slider_active owl-carousel">
      <div class="single_slider  d-flex align-items-center slider_bg_1 overlay">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-xl-12 col-md-12">
              <div class="slider_text text-center">
                <h3>Roxas</h3>
                <p></p>
                <a href="<?= site_url('DestinationController/morrox') ?>" class="boxed-btn3">Explore Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="single_slider  d-flex align-items-center slider_bg_2 overlay">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-xl-12 col-md-12">
              <div class="slider_text text-center">
                <h3>Puerto Galera</h3>
                <p></p>
                <a href="<?= site_url('DestinationController/morpue') ?>" class="boxed-btn3">Explore Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="single_slider  d-flex align-items-center slider_bg_3 overlay">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-xl-12 col-md-12">
              <div class="slider_text text-center">
                <h3>Pinamalayan</h3>
                <p></p>
                <a href="<?= site_url('DestinationController/morpin') ?>" class="boxed-btn3">Explore Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="single_slider  d-flex align-items-center slider_bg_4 overlay">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-xl-12 col-md-12">
              <div class="slider_text text-center">
                <h3>Victoria</h3>
                <p></p>
                <a href="<?= site_url('DestinationController/morvic') ?>" class="boxed-btn3">Explore Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="single_slider  d-flex align-items-center slider_bg_5 overlay">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-xl-12 col-md-12">
              <div class="slider_text text-center">
                <h3>Bulalacao</h3>
                <p></p>
                <a href="#" class="boxed-btn3">Explore Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- START POPULAR PRODUCTS -->
  <!-- popular_destination_area_start  -->
  <div class="popular_destination_area">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-6">
          <div class="section_title text-center mb_70">
            <h3>Popular Local Products </h3>
            <p>Oriental Mindoro is a major contributor/supplier of agricultural commodities not only in MIMAROPA and Southern Visayas but also in the country. True to its vision “By 2025, Oriental Mindoro is a food base exporting high value agri-products, the preferred agri-ecotourism destination in MIMAROPA and with an environment conducive for Investments and in line with its mission "to promote the well-being of an empowered citizenry prospering under a climate resilient green growth economy through a proactive, accountable and participatory governance, the Provincial Government makes every effort in formulating plans, programs and activities parallel to the development and promotion of its resource based enterprises</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productcalapan') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/calapan/product3/sumansalihiya.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Calapan City</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productbaco') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/baco/product/stuffedpastillas.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Baco</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productbaco') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/santeodoro/product 4/gingerpowder.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">San Teodoro</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productpue') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/puertogalera/SAMAHANG PANGKABUHAYAN NG MGA TAGA-DULANGAN/sumansalihiya.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Puerto Galera</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productnau') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/naujan/product3/bananachips.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Naujan</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productvic') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/victoria/product4/calamansiconcentrate.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Victoria  </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productsoc') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/socorro/product/bananachips.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Socorro</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productpola') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/pola/product2/virgincoconutoil.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Pola</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productpin') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/pinamalayan/product5/cassavacake.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Pinamalayan</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productglo') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/gloria/product/bukopie.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Gloria</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productban') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/bansud/product2/longganisa.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Bansud  </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productbong') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/bongabong/product/organicbrownrice.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Bongabong</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productrox') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/roxas/product/cantonnoodle.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Roxas</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productman') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/mansalay/product/bagoong.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Mansalay</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('ProductController/productbul') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/products/bulalacao/product/seaweedpickles.jpg') ?>" alt="" style="height: 200px;" >
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Bulalacao</p>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
  <!-- END POPULAR PRODUCTS -->
  <!-- popular_destination_area_start  -->
  <!-- POPULAR PLACES -->
  <div class="popular_destination_area">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-6">
          <div class="section_title text-center mb_70">
            <h3>Popular Destination</h3>
            <p>Oriental Mindoro is home to pristine islands, incredible beaches and untouched nature.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morcal') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/calapan.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Calapan City</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morbaco') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/baco.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Baco</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morsan') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/santeodoro.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">San Teodoro</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morpue') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/puerto.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Puerto Galera</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/mornau') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/naujan.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Naujan</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morvic') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/victoria.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Victoria  </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morsoc') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/socorro.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Socorro</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morpola') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/pola.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Pola</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morpin') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/pinamalayan.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Pinamalayan</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morglo') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/gloria.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Gloria</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morban') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/bansud.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Bansud  </p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morbong') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/bongabong.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Bongabong</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morrox') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/roxas.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Roxas</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morman') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/mansalay.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Mansalay</p>
              </div>
            </div>
          </a>
        </div>
        <div class="col-lg-4 col-md-6">
          <a href="<?= site_url('DestinationController/morbul') ?>">
            <div class="single_destination">
              <div class="thumb">
                <img src="<?= base_url('im/destination/bulalacao.jpg') ?>" alt="">
              </div>
              <div class="content">
                <p class="d-flex align-items-center">Bulalacao</p>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>

  <!-- popular_destination_area_end  -->
  <div class="popular_places_area">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-6">
          <div class="section_title text-center mb_70">
            <h3>Popular Places</h3>
            <p>The perfect place to begin is exactly where you are right now.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <!-- foreach -->
        <?php foreach ($destinations as $des): ?>
          <div class="col-lg-4 col-md-6">
            <div class="single_place">
              <div class="thumb">
                <img src="<?= base_url('im/destination/'. $des['image']) ?>" alt="">
              </div>
              <div class="place_info">
                <a href="/test1/<?=$des['id']?>"><h3><?=$des['name']?></h3></a>
                <i class="ti-pin mr-2" <p><?=$des['location']?></p></i>
              </div>
              <div class="rating_days d-flex justify-content-between">
                <span class="d-flex justify-content-center align-items-center">
                  <?php for($x = 0; $x <= $des['ave']; $x++) :?>
                    <i class="fa fa-star checked"></i>
                  <?php endfor?>
                  <?= $des['count'] ?> Review
                </span>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
        <!-- end foreach -->
      </div>
      <div class="row">
        <div class="col-lg-12">
          <a>
            <div class="more_place_btn text-center">
              <a class="boxed-btn4" href="<?= site_url('/destination') ?>">More Places</a>
            </div>
          </div>
        </div>
      </div>
    </a>
  </div>

  <?= $this->include('include/video')?>
  <?= $this->include('include/icon_author')?>
  <?= $this->include('include/footer')?>
  <?= $this->include('include/modal_search')?>
  <?= $this->include('include/end')?>

</body>
