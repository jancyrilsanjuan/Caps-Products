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

  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="card mt-3">
          <div class="card-header">
            <h4>RECOMMENDER</h4>
          </div>
        </div>
      </div>
      <!-- Brand List  -->
      <div class="col-md-3">
        <form action="" method="GET">
          <div class="card shadow mt-3">
            <div class="card-header">
              <h5>Recommend a Destination
                <button type="submit" class="btn btn-primary btn-sm float-end">Search</button>
              </h5>
            </div>
            <div class="card-body">
              <h6>Budget List</h6>
              <hr>
              <?php
              $con = mysqli_connect("localhost","root","","eguide");
              $brand_query = "SELECT * FROM a_brands";
              $brand_query_run  = mysqli_query($con, $brand_query);
              if(mysqli_num_rows($brand_query_run) > 0)
              {
                foreach($brand_query_run as $brandlist)
                {
                  $checked = [];
                  if(isset($_GET['brands']))
                  {
                    $checked = $_GET['brands'];
                  }
                  ?>
                  <div>
                    <input type="checkbox" name="brands[]" value="<?= $brandlist['id']; ?>"
                    <?php if(in_array($brandlist['id'], $checked)){ echo "checked"; } ?>
                    />
                    <?= $brandlist['name']; ?>
                  </div>
                  <?php
                }
              }else{
                echo "No Brands Found";
              }
              ?>
            </div>
          </div>
        </form>
      </div>
      <!-- Brand Items - Products -->
      <div class="col-md-9 mt-3">
        <div class="card ">
          <div class="card-body row">
            <?php
            if(isset($_GET['brands']))
            {
              $branchecked = [];
              $branchecked = $_GET['brands'];
              foreach($branchecked as $rowbrand)
              {
                // echo $rowbrand;
                $products = "SELECT * FROM destinations WHERE brand_id IN ($rowbrand)";
                $products_run = mysqli_query($con, $products);
                if(mysqli_num_rows($products_run) > 0)
                {
                  foreach($products_run as $proditems) : ?>
                  <div class="col-lg-4 col-md-6">
                    <div class="single_place">
                      <div class="pic">
                        <a href="/test1/"<?=$proditems['id']?>><img src="<?= base_url('im/destination/'. $proditems['image']) ?>" alt="">
                        <img src="<?= base_url('im/hotel/'. $proditems['image']) ?>" alt="">
                        <img src="<?= base_url('im/restaurant/'. $proditems['image']) ?>" alt="">
                        <img src="<?= base_url('im/pasalubongcenter/'. $proditems['image']) ?>" alt="">
                      </div>
                      <div class="place_info">
                        <a href="/test1/<?=$proditems['id']?>"><h3><?=$proditems['name']?></h3></a>
                        <i class="ti-pin mr-2" <p><?=$proditems['location']?></p></i>
                      </div>
                    </div>
                  </div>
                  <?php
                endforeach;
              }
            }
          }else{
            $products = "SELECT * FROM destinations";
            $products_run = mysqli_query($con, $products);
            if(mysqli_num_rows($products_run) > 0)
            {
              foreach($products_run as $proditems) : ?>
              <div class="col-lg-4 col-md-6">
                <div class="single_place">
                  <div class="pic">
                    <img src="<?= base_url('im/destination/'. $proditems['image']) ?>" alt="">
                    <img src="<?= base_url('im/hotel/'. $proditems['image']) ?>" alt="">
                    <img src="<?= base_url('im/restaurant/'. $proditems['image']) ?>" alt="">
                  </div>
                  <div class="place_info">
                    <a href="/test1/<?=$proditems['id']?>"><h3><?=$proditems['name']?></h3></a>
                    <i class="ti-pin mr-2" <p><?=$proditems['location']?></p></i>
                  </div>
                </div>
              </div>
              <?php
            endforeach;
          }else{
            echo "No Items Found";
          }
        }
        ?>
      </div>
    </div>
  </div>
</div>
</div>
<style>
.pic {
  width: 100%;
  height: 220px;
  position:relative;
  overflow: hidden;
  display:flex;
}
</style>

<?= $this->include('include/footer')?>
<?= $this->include('include/modal_search')?>
<?= $this->include('include/end')?>

</body>
