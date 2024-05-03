<div class="content-wrapper">

    <div class="page-header d-flex justify-content-between">
        <div>
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-tooltip-edit menu-icon"></i>
                </span> Edit
            </h3>
        </div>
       
    </div>
    <div class="main-panel">
   
    <form class="f"action="<?php echo site_url('Product/update_product/'.$product['id']); ?>" method="post" enctype="multipart/form-data">
        <label for="product_name">Product Name:</label><br>
        <input type="text" id="product_name" name="product_name" value="<?php echo $product['name']; ?>"><br>
        <label for="product_price">Product Description:</label><br>
        <input type="text" id="product_desc" name="product_desc" value="<?php echo $product['desc']; ?>"><br>
        <label for="userfile">Product Image:</label><br>
        <input type="file" id="userfile" name="userfile" value="<?php echo $product['image']; ?>"><br><br>
        <button type="submit" name="update_product" value="Update Product" class="btn btn-success btn-icon-text btn-sm">Update<i class="mdi mdi-account-plus btn-icon-append"></i></button>
        <a href="<?php echo site_url('Product'); ?>" class="btn btn-primary btn-icon-text btn-sm">Back<i class="mdi mdi-arrow-left btn-icon-append"></i></a></form>

    </form>
        

        </div>  
<div class="container-sm"></div> 
<div class="container-md"></div> 
<div class="container-lg"></div> 
<div class="container-xl"></div> 
