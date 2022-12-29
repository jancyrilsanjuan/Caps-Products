<title>Contact | Etour Guide: OrMin Travel Guide</title>

<?= $this->include('include/top')?>

<body>

  <?= $this->include('include/header')?>

  <div class="bradcam_area bradcam_bg_4">
    <div class="container">
      <div class="row">
        <div class="col-xl-12">
          <div class="bradcam_text text-center">
            <h3>contact Us</h3>
            <p></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ================ contact section start ================= -->
  <section class="contact-section">
    <div class="container">
      <div class="d-none d-sm-block mb-5 pb-4">
        <!-- google maps -->
        <h3>View on Open Street Map</h3>
        <div id = "map" style = "width: 100%; height: 580px"></div>
        <script src = "http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js"></script>
        <script>
        // Creating map options
        var mapOptions = {
          center: [13.40126, 121.17337],
          zoom: 19
        }
        // Creating a map object
        var map = new L.map('map', mapOptions);
        // Creating a Layer object
        var layer = new L.TileLayer('http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png');
        // Adding layer to the map
        map.addLayer(layer);
      </script>
      <!-- end google maps -->
    </div>
    <div class="row">
      <div class="col-12">
        <h2 class="contact-title">Message Us</h2>
      </div>
      <div class="col-lg-8">
        <form class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
          <div class="row">
            <div class="col-12">
              <div class="form-group">
                <textarea class="form-control w-100" name="message" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder=" Enter Message"></textarea>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <input class="form-control valid" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name">
              </div>
            </div>
            <div class="col-sm-6">
              <div class="form-group">
                <input class="form-control valid" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email">
              </div>
            </div>
            <div class="col-12">
              <div class="form-group">
                <input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">
              </div>
            </div>
          </div>
          <div class="form-group mt-3">
            <button type="submit" class="button button-contactForm boxed-btn">Send</button>
          </div>
        </form>
      </div>
      <div class="col-lg-3 offset-lg-1">
        <div class="media contact-info">
          <span class="contact-info__icon"><i class="ti-home"></i></span>
          <div class="media-body">
            <h3>OrMin Travel Guide, Oriental Mindoro, 5200</h3>
          </div>
        </div>
        <div class="media contact-info">
          <span class="contact-info__icon"><i class="ti-tablet"></i></span>
          <div class="media-body">
            <h3>09512823765</h3>
            <p>Mon to Fri 8am to 5pm</p>
          </div>
        </div>
        <div class="media contact-info">
          <span class="contact-info__icon"><i class="ti-email"></i></span>
          <div class="media-body">
            <h3>ormintravelguide@gmail.com</h3>
            <p>Send us your query anytime!</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<?= $this->include('include/footer')?>
<?= $this->include('include/modal_search')?>
<?= $this->include('include/end')?>

</body>
