<!-- CSRF token -->
<input type="hidden" class="txt_csrfname" name="<?= csrf_token() ?>" value="<?= csrf_hash() ?>" />
<div class="content">
  <form action="<?= base_url('dropzone/upload') ?>" method="POST" enctype="multipart/form-data" class="dropzone" id='image-upload'>
    <input type="hidden" name="sid" value="<?=$sid?>">
  </form>
</div>

<script type="text/javascript">
Dropzone.options.imageUpload = {
  maxFilesize: 10, // Mb
  acceptedFiles: ".jpeg,.jpg,.png,.gif,.pdf,.docx",
}
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
