<!doctype html>
<html class="no-js" lang="zxx">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Signin | Etour Guide: OrMin Travel Guide</title>
  <link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url('im/favicon.ico')?>"/>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <div class =" row bg">
    <div class="container mt-5">
      <div class="row justify-content-around">
        <div class="col-8" >
          <br><br><br><br>
            <center>
              <h2>Login in</h2>
            </center>
            <br><br>
            <?php if(session()->getFlashdata('msg')):?>
              <div class="alert alert-warning">
                <?= session()->getFlashdata('msg') ?>
              </div>
            <?php endif;?>
            <form action="<?php echo base_url(); ?>/SigninController/loginAuth" method="post">
              <div class="form-group mb-3">
                <input type="email" name="email" placeholder=" Input Email" value="<?= set_value('email') ?>" class="form-control" >
              </div>
              <div class="form-group mb-3">
                <input type="password" name="password" placeholder="Input Password" class="form-control" >
              </div>
              <div class="d-grid">
                <a href="<?= site_url('SigninController/forgetpass') ?>">Forget Password?</a>
                <br><br>
                <div style="text-align:center">
                  <button type="submit" class="btn btn-primary" style="width: 370px; margin: 0 auto;">Login </button>
                </div>
                <br><br><br>
                <div style="text-align:center">
                  <h8>Don't have account?</h8>
                  <a href="<?= site_url('SignupController/signup') ?>">Signup</a>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
</body>
</html>
