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
        <?php if($name):?>
          <?php foreach ($name as $n): ?>
            <div class="col-lg-4 col-md-6">
              <div class="single_place">
                <div class="thumb">
                  <img src="<?= base_url('im/destination/'. $n['image']) ?>" alt="">
                </div>
                <div class="place_info">
                  <a href="/test1/<?=$n['id']?>"><h3><?=$n['name']?></h3></a>
                  <i class="ti-pin mr-2" <p><?=$n['location']?></p></i>
                </div>
              </div>
            </div>
          <?php endforeach; ?>
        <?php endif; ?>
      </div>
    </div>
  </div>

  <?= $this->include('include/footer')?>
  <?= $this->include('include/modal_search')?>
  <?= $this->include('include/end')?>

</body>
