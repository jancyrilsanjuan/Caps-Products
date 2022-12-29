<title>Pasalubong Centers | Etour Guide: OrMin Travel Guide</title>

<?= $this->include('include/top')?>

<body>

  <?= $this->include('include/header')?>

  <div class="bradcam_area bradcam_bg_4">
    <div class="container">
      <div class="row">
        <div class="col-xl-12">
          <div class="bradcam_text text-center">
            <h3>Pasalubong Center</h3>
            <p></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="popular_destination_area">
    <div class="container">
      <div class="popular_places_area">
        <div class="container">
          <div class="row">
            <!-- foreach -->
            <?php foreach ($places as $pas): ?>
              <div class="col-lg-4 col-md-6">
                <div class="single_place">
                  <div class="thumb">
                    <img src="<?= base_url('im/pasalubongcenter/'. $pas['image']) ?>" alt="">
                  </div>
                  <div class="place_info">
                    <a href="/test4/<?=$pas['id']?>"><h3><?=$pas['name']?></h3></a>
                    <p><?=$pas['location']?></p>
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
