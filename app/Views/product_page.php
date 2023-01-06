<title>Destinations  | Etour Guide: OrMin Travel Guide</title>

<?= $this->include('include/top')?>

<body>

  <?= $this->include('include/header')?>

  <div class="bradcam_area bradcam_bg_4">
    <div class="container">
      <div class="row">
        <div class="col-xl-12">
          <div class="bradcam_text text-center">
            <h3>Products</h3>
            <p></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Popular Destination -->
  <div class="popular_destination_area">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-6">
          <div class="section_title text-center mb_10">
            <h3>Products</h3>
            <!-- <div class="row">
              <div class="col-lg-12">
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal">TAG THIS PLACE</button>
              </div>
            </div> -->
          </div>
        </div>
      </div>
      <div class="popular_places_area">
        <div class="container">
          <div class="row">
            <!-- foreach -->
            <?php foreach ($places as $des): ?>
              <div class="col-lg-4 col-md-6">
                <div class="single_place">
                  <div class="thumb">
                    <img src="<?= base_url('im/products/'. $des['image']) ?>" alt="">
                  </div>
                  <div class="place_info">
                    <p><?=$des['name']?></p>
                    <p><?=$des['location']?></p>
                    <p><?=$des['fare']?></p>
                  </div>
                </div>
              </div>
            <?php endforeach; ?>
            <!-- end foreach -->
          </div>
        </div>
      </div>
    </div>
  </div>


  <?= $this->include('include/footer')?>
  <?= $this->include('include/modal_search')?>
  <?= $this->include('include/end')?>

</body>
