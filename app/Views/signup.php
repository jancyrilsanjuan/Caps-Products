<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Signup | Etour Guide: OrMin Travel Guide</title>
  <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url('im/favicon.ico')?>"/>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- <link rel="manifest" href="site.webmanifest"> -->
  <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
  <!-- Place favicon.ico in the root directory -->
  <!-- CSS here -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/bootstrap.min.css');?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/owl.carousel.min.css');?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/magnific-popup.css');?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/font-awesome.min.css');?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/themify-icons.cs');?>s">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/nice-select.css');?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/flaticon.css');?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/gijgo.css');?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/animate.css');?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/slick.css');?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/slicknav.css');?>">
  <link rel="stylesheet" type="text/css" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url('css/styless.css');?>">
</head>
<body>
  <!--<img  src="<?= base_url('im/logo original.png') ?>" alt="" width="100" height="105" > -->
  <div class =" row bg">
    <div class="container mt-5" >
      <div class="row justify-content-around">
        <div class="col-8">
          <br><br><br>
          <center>
            <h2>Register Here</h2>
          </center>
          <br><br>
          <?php if(isset($validation)):?>
            <div class="alert alert-warning">
              <?= $validation->listErrors() ?>
            </div>
          <?php endif;?>
          <form action="<?php echo base_url(); ?>/SignupController/store" method="post">
            <div class="form-group mb-3" >
              <input type="text" name="name" placeholder="Input Name" value="<?= set_value('name') ?>" class="form-control" >
            </div>
            <div class="form-group mb-3">
              <input type="email" name="email" placeholder="input Email" value="<?= set_value('email') ?>" class="form-control" >
            </div>
            <div class="form-group mb-3">
              <input type="password" name="password" placeholder="Input Password" class="form-control" >
            </div>
            <div class="form-group mb-3">
              <input type="password" name="confirmpassword" placeholder="Confirm Password" class="form-control" >
            </div>
            <!-- <div class="form-group mb-3">
              <input type="usertype" name="usertype"  class="form-control" value="User" readonly >
            </div> -->
            <div class="d-grid">
              <div style="text-align:center">
                <button type="submit" class="btn btn-primary" style="width: 370px; margin: 0 auto;">Register</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <script src="<?= base_url()?>/js/vendor/modernizr-3.5.0.min.js"></script>
  <script src="<?= base_url()?>/js/vendor/jquery-1.12.4.min.js"></script>
  <script src="<?= base_url()?>/js/popper.min.js"></script>
  <script src="<?= base_url()?>/js/bootstrap.min.js"></script>
  <script src="<?= base_url()?>/js/owl.carousel.min.js"></script>
  <script src="<?= base_url()?>/js/isotope.pkgd.min.js"></script>
  <script src="<?= base_url()?>/js/ajax-form.js"></script>
  <script src="<?= base_url()?>/js/waypoints.min.js"></script>
  <script src="<?= base_url()?>/js/jquery.counterup.min.js"></script>
  <script src="<?= base_url()?>/js/imagesloaded.pkgd.min.js"></script>
  <script src="<?= base_url()?>/js/scrollIt.js"></script>
  <script src="<?= base_url()?>/js/jquery.scrollUp.min.js"></script>
  <script src="<?= base_url()?>/js/wow.min.js"></script>
  <script src="<?= base_url()?>/js/nice-select.min.js"></script>
  <script src="<?= base_url()?>/js/jquery.slicknav.min.js"></script>
  <script src="<?= base_url()?>/js/jquery.magnific-popup.min.js"></script>
  <script src="<?= base_url()?>/js/plugins.js"></script>
  <script src="<?= base_url()?>/js/gijgo.min.js"></script>
  <script src="<?= base_url()?>/js/slick.min.js"></script>
  <!--contact js-->
  <script src="<?= base_url()?>/js/contact.js"></script>
  <script src="<?= base_url()?>/js/jquery.ajaxchimp.min.js"></script>
  <script src="<?= base_url()?>/js/jquery.form.js"></script>
  <script src="<?= base_url()?>/js/jquery.validate.min.js"></script>
  <script src="<?= base_url()?>/js/mail-script.js"></script>
  <script src="<?= base_url()?>/js/main.js"></script>
  <script>
  $('#datepicker').datepicker({
    iconsLibrary: 'fontawesome',
    icons: {
      rightIcon: '<span class="fa fa-caret-down"></span>'
    }
  });
</script>
</body>
</html>
