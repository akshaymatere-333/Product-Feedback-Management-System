<div class="content-wrapper">
  <div class="page-header d-flex justify-content-between">
    <div>
      <h3 class="page-title">
        <span class="page-title-icon bg-gradient-primary text-white me-2">
          <i class="mdi mdi-shopping menu-icon"></i>
        </span>
        Products
      </h3>
    </div>
    <div>
      <a href="<?php echo site_url('Product/add_product'); ?>" class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn">Add Product</a>
    </div>
  </div>
  <div class="main-panel center">
    <div class="container mt-3">
      <div class="row">
        <?php if (!empty($products)): ?>
          <?php $count = 0; ?>
          <?php foreach ($products as $product): ?>
            <?php if ($count % 3 == 0): ?>
              <div class="row">
            <?php endif; ?>
            <div class="col-md-4 mb-4">
              <div class="product-card h-100 d-flex flex-column bg-white">
                <div class="card-img-top d-flex justify-content-center align-items-center" style="height: 200px;">
                  <img src="<?php echo base_url('public/assets/images/' . $product['image']); ?>" alt="Product Image" style="max-width: 100%; max-height: 100%; object-fit: contain;">
                </div>
                <div class="card-body d-flex flex-column justify-content-between">
                  <div>
                    <h2 class="card-title text-center"><?php echo $product['name']; ?></h2>
                    <p class="card-text"><?php  $product['desc']; ?></p>
                  </div>
                  <div class="actions d-flex justify-content-between">
                  <a href="<?php echo site_url('Product/update_product/' . $product['id']) ?>" class="btn btn-info"><i class="mdi mdi-tooltip-edit btn-icon-append"></i>Edit</a>
                    <a href="<?php echo site_url('Product/delete_product/' . $product['id']) ?>" class="btn btn-danger"><i class="mdi mdi-delete btn-icon-append"></i>Delete</a>
                  </div>
                </div>
              </div>
            </div>
            <?php $count++; ?>
            <?php if ($count % 3 == 0 || $count == count($products)): ?>
              </div>
            <?php endif; ?>
          <?php endforeach; ?>
        <?php else: ?>
          <p class="col-md-12">No products found</p>
        <?php endif; ?>
      </div>
    </div>
    <div class="container-sm"></div>
    <div class="container-md"></div>
    <div class="container-lg"></div>
    <div class="container-xl"></div>
  </div>
</div>