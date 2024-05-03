<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Admin</title>
    <!-- plugins:css -->
   
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="<?= base_url();?>public/assets/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="<?= base_url();?>public/assets/images/favicon.ico" />
  </head>
  <body>
  <?php echo form_open('Login');?>

    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper1 d-flex align-items-center auth ">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
                <div class="brand-logo">
                  <img src="<?= base_url();?>public/assets/images/faces/face1.png">
                </div>
                <h4 class="center">Hello! let's get started</h4>
                <h6 class="font-weight-light">Login in to continue.</h6>
                <form class="pt-3">
                
                  
                <div class="form-group">



<?php echo form_input(['name'=>'emailid','class'=>'form-control','value'=>set_value('emailid'),'placeholder'=>'Enter your Email id',]);?>
 <?php echo form_error('emailid',"<div style='color:red'>","</div>");?>       	
        </div>
                  <div class="form-group">
<?php echo form_password(['name'=>'password','class'=>'form-control','value'=>set_value('password'),'placeholder'=>'Password']);?>
 <?php echo form_error('password',"<div style='color:red'>","</div>");?>  


        </div>
                  <div class="mt-3">
                     <?php echo form_submit(['name'=>'insert','value'=>'Submit','class'=>'btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn']);?>
                  </div>
                  <div class="my-2 d-flex justify-content-between align-items-center">
                    <div class="form-check">
                      
                    </div>
                    
                  </div>
                  
                  
                </form>
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <div class="container-sm"></div> 
<div class="container-md"></div> 
<div class="container-lg"></div> 
<div class="container-xl"></div> 
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="<?= base_url();?>public/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="<?= base_url();?>public/assets/js/off-canvas.js"></script>
    <script src="<?= base_url();?>public/assets/js/hoverable-collapse.js"></script>
    <script src="<?= base_url();?>public/assets/js/misc.js"></script>
    <!-- endinject -->
    
  </body>
</html>