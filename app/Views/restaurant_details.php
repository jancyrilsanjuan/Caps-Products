<title>Restaurant Details | Etour Guide: OrMin Travel Guide</title>

<?= $this->include('include/top')?>

<style type="text/css">
#mydiv{
  background-image: url("<?= base_url('im/restaurant/') .  $name['image'] ?>");)
}
</style>
<body>

  <?= $this->include('include/header')?>

  <div class="bradcam_area bradcam_bg_4" style="background-image: url(../im/restaurant/<?=$locationImage;?>);">
    <div class="container">
      <div class="row">
        <div class="col-xl-12">
          <?php if($destinations):?>
            <?php foreach ($destinations as $row ): ?>
              <div class="bradcam_text text-center">
                <h3><?=$locationName;?></h3>
                <p></p>
              </div>
            </div>
          <?php endforeach; ?>
        <?php endif;?>
      </div>
    </div>
  </div>
  <div class="destination_details_info">
    <div class="container">
      <div class="row justify-content-center">
          <div class="col-lg-6">
            <div class="section_title text-center mb_10">
              <h3>Destination</h3>
              <div class="row">
                <div class="col-lg-12">
                  <button type="button" class="btn btn-info" data-toggle="modal" data-target="#exampleModal">
                    TAG THIS PLACE
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      <div class="row justify-content-center">
        <div class="col-lg-8 col-md-9">
          <!-- foreach -->
          <?php if($destinations):?>
            <?php foreach ($destinations as $row): ?>
              <div class="destination_info">
                <h3>Description</h3>
                <p><?=$row['description']?></p>
              </div>
              <div class="single_destination">
                <h3>Location</h3>
                <p><?=$row['location']?></p>
              </div>
              <br>
              <div class="single_destination">
                <h3>Directions</h3>
                <p>View on Open Street Map</p>
              </div>
              <!-- google maps -->
              <!-- google maps -->
              <?php if($destinations):?>
                <?php foreach ($destinations as $des): ?>
                  <div id = "map" style = "width: 900px; height: 580px"></div>

                  <script>
                  function initMap() {
                    var mapOptions = {
                      zoom: 18,
                      center: {<?php echo'lat:'. $latitudes[0] .', lng:'. $longitudes[0] ;?>}, //{lat: --- , lng: ....}
                      mapTypeId: google.maps.MapTypeId.SATELITE
                    };
                    var map = new google.maps.Map(document.getElementById('map'),mapOptions);
                    var RouteCoordinates = [
                      <?php
                      $i = 0;
                      while ($i < count($coordinates)) {
                        echo $coordinates[$i];
                        $i++;
                      }
                      ?>
                    ];
                    var RoutePath = new google.maps.Polyline({
                      path: RouteCoordinates,
                      geodesic: true,
                      strokeColor: '#1100FF',
                      strokeOpacity: 1.0,
                      strokeWeight: 10
                    });
                    mark = "<?= base_url('im/mark.png') ?>";
                    flag = "<?= base_url('im/flag.png') ?>"
                    startPoint = {<?php echo'lat:'. $latitudes[0] .', lng:'. $longitudes[0] ;?>};
                    endPoint = {<?php echo'lat:'.$latitudes[$lastcount] .', lng:'. $longitudes[$lastcount] ;?>};
                    var marker = new google.maps.Marker({
                      position: startPoint,
                      map: map,
                      icon: mark,
                      title:"Start point!",
                      animation: google.maps.Animation.BOUNCE
                    });
                    var marker = new google.maps.Marker({
                      position: endPoint,
                      map: map,
                      icon: flag,
                      title:"End point!",
                      animation: google.maps.Animation.DROP
                    });
                    RoutePath.setMap(map);
                  }
                  google.maps.event.addDomListener(window, 'load', initialize);
                </script>
                <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBYZO6EYPhp5EzkgK6sLIYuaYZ7UMAWzJs&callback=initMap"></script>

              <?php endforeach; ?>
            <?php endif;?>
            <!-- end google maps -->
            <br><br>
          <?php endforeach; ?>
        <?php endif;?>
        <!-- end foreach -->
      </div>
      <div class="bordered_1px"></div>
    </div>
  </div>
</div>

<?php if($logged): ?>
  <?= $this->include('index')?>
<?php endif; ?>

<?= $this->include('include/footer')?>
<?= $this->include('include/modal_search')?>

<?php if($logged): ?>
  <?= $this->include('include/tag_place')?>
<?php endif; ?>

<?= $this->include('include/end') ?>

<script>
Dropzone.autoDiscover = false;
var myDropzone = new Dropzone(".dropzone",{
 maxFilesize: 2, // 2 mb
 acceptedFiles: ".jpeg,.jpg,.png,.pdf",
});
myDropzone.on("sending", function(file, xhr, formData) {
 // CSRF Hash
 var csrfName = $('.txt_csrfname').attr('name'); // CSRF Token name
 var csrfHash = $('.txt_csrfname').val(); // CSRF hash
 formData.append(csrfName, csrfHash);
});
myDropzone.on("success", function(file, response) {
 $('.txt_csrfname').val(response.token);
 if(response.success == 0){ // Error
    alert(response.error);
 }
 if(response.success == 2){
    alert(response.message);
 }
});
</script>
