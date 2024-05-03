<div class="content-wrapper">

    <div class="page-header d-flex justify-content-between">
        <div>
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-shape-plus menu-icon"></i>
                </span> Add Product
            </h3>
        </div>
       
    </div>
    <div class="main-panel ">
    <?php echo validation_errors('<div class="error-message">', '</div>'); ?>
    <?php if ($this->session->flashdata('error')): ?>
        <div class="error-message"><?php echo $this->session->flashdata('error'); ?></div>
    <?php endif; ?>
    <form  class="f" action="<?php echo site_url('Product/add_product'); ?>" method="post" enctype="multipart/form-data">
        <label for="product_name">Product Name:</label><br>
        <input type="text" id="product_name" name="product_name"><br>
        <label for="product_desc">Product Description:</label><br>
        <input type="text" id="product_desc" name="product_desc"><br>
        <label for="userfile">Product Image:</label><br>
        <input type="file" id="userfile" name="userfile"><br><br>
        <button type="submit" class="btn btn-success btn-icon-text btn-sm"><i class="mdi mdi-account-plus btn-icon-append"></i>Add</button>    
        <a href="<?php echo site_url('Product'); ?>" class="btn btn-danger btn-icon-text btn-sm"><i class="mdi mdi-block-helper btn-icon-append"></i>Cancel</a></form>

    </form>  
<div class="container-sm"></div> 
<div class="container-md"></div> 
<div class="container-lg"></div> 
<div class="container-xl"></div> 
