<title>Profile Page | Etour Guide: OrMin Travel Guide</title>

<?= $this->include('include/top')?>

<body>

  <?= $this->include('include/header')?>
<div class="container">
  <div class="row">
    <div class="col-12 col-sm8- offset-sm-2 col-md-6 offset-md-3 mt-5 pt-3 pb-3 bg-white from-wrapper">
      <div class="container">
        <h3><?= $users['name'] ?></h3>
        <hr>
        <?php if (session()->get('success')): ?>
          <!-- <div class="alert alert-success" role="alert">
            <?= session()->get('success') ?>
          </div> -->
        <?php endif; ?>
        <form class="" action="/user_account" method="post">
          <div class="row">
            <div class="col-12 col-sm-6">
              <div class="form-group">
               <label for="name">Name</label>
               <input type="text" class="form-control" name="name" id="name" value="<?= set_value('name', $users['name']) ?>">
              </div>
            </div>
            <div class="col-12">
              <div class="form-group">
               <label for="email">Email address</label>
               <input type="text" class="form-control" readonly id="email" value="<?= $users['email'] ?>">
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <div class="form-group">
               <label for="password">Password</label>
               <input type="password" class="form-control" name="password" id="password" value="">
             </div>
           </div>
           <div class="col-12 col-sm-6">
             <div class="form-group">
              <label for="confirmpassword">Confirm Password</label>
              <input type="password" class="form-control" name="confirmpassword" id="confirmpassword" value="">
            </div>
          </div>
          <?php if (isset($validation)): ?>
            <div class="col-12">
              <div class="alert alert-danger" role="alert">
                <?= $validation->listErrors() ?>
              </div>
            </div>
          <?php endif; ?>
          </div>

          <div class="row">
            <div class="col-12 col-sm-4">
              <button type="submit" class="btn btn-primary">Update</button>
            </div>

          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<?= $this->include('include/footer')?>
<?= $this->include('include/modal_search')?>
<?= $this->include('include/end')?>

</body>
