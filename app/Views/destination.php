<title>Destinations  | Etour Guide: OrMin Travel Guide</title>

<?= $this->include('include/top')?>

<body>

  <?= $this->include('include/header')?>

  <div class="bradcam_area bradcam_bg_4">
    <div class="container">
      <div class="row">
        <div class="col-xl-12">
          <div class="bradcam_text text-center">
            <h3>Destinations</h3>
            <p></p>
          </div>
        </div>
      </div>
      </div>
    </div>
    <div class="popular_places_area">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <div class="section_title text-center mb_70">
              <h3>Popular Destinations</h3>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- foreach -->
          <?php if($categories):?>
            <?php foreach ($categories as $des): ?>
              <div class="col-lg-4 col-md-6">
                <div class="single_place">
                  <div class="thumb">
                    <img src="<?= base_url('im/destination/'. $des['image']) ?>" alt="">
                  </div>
                  <div class="place_info">
                    <a href="/test1/<?=$des['id']?>"><h3><?=$des['name']?></h3></a>
                    <i class="ti-pin mr-2" <p><?=$des['location']?></p></i>
                  </div>
                </div>
              </div>
            <?php endforeach; ?>
          <?php endif; ?>
          <!-- end foreach -->
        </div>
        <div class="row">
          <div class="col-lg-12">
            <a>
              <!-- <div class="more_place_btn text-center">
                <a class="boxed-btn4" href="<?= site_url('DestinationController/moreplaces') ?>">More Places</a>
              </div> -->
            </div>
          </div>
        </div>
      </a>
    </div>

    <?= $this->include('include/footer')?>
    <?= $this->include('include/modal_search')?>
    <?= $this->include('include/end')?>

</body>
