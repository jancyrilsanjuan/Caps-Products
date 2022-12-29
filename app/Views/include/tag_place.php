<!-- Modal Tag Place -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content bg-info">
      <div class="modal-header">
        <h3>Tag Place</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="card card-warning">
          <div class="card-body">
            <form class="" action="/tag_insert" method="post">
              <input type="hidden" name="id" value="<?=$imageId['id']?>">
              <div class="card-body">
                <div class="form-group">
                  <p class="text-info">Description</p>
                  <textarea name="description" class="form-control" rows="3" placeholder="Write something..."></textarea value="<?=$imageId['description']?>">
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <p class="text-info">Upload Feature Photos</p>
                    </div>
                    <div class="col-75">
                      <?= $this->include ('upload-view')?>
                    </div>
                  </div>
                  <?= $this->include ('upload-view')?>
                  <!-- <div class="row">
                  <div class="content">
                    <form action="<?= base_url('dropzone/upload') ?>" method="POST" enctype="multipart/form-data" class="dropzone" id='image-upload'>
                      <input type="hidden" name="sid" value="<?=$sid?>">
                    </form>
                  </div>
                </div> -->
                <div class="row">
                  <?php if($imageId): ?>
                    <input type="submit" name="update" value="Update">
                  <?php else: ?>
                    <div class="modal-footer">
                      <button type="submit" class="btn btn-primary" name="submit" value="Submit">Submit</button>
                    <?php endif; ?>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

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
