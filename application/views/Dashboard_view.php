<div class="content-wrapper">
    <div class="page-header d-flex justify-content-between">
        <div>
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-home menu-icon"></i>
                </span>
                Dashboard
            </h3>
        </div>
    </div>


<div class="row mb-5 g-4 center">
              <div class="col-lg-4 col-md-6 col-sm-8">
                <div class="card bg-gradient-danger card-img-holder text-white">
                  <div class="card-body">
                    <img src="<?= base_url();?>public/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                    <i class="mdi mdi-account-box-multiple mdi-48px mb-3"></i>
                    <h4 class="font-weight-normal mb-3">Total Customers 
                    </h4>
                    <h2 class="mb-5"><?php echo $this->Users_model->get_total_customers(); ?></h2>
                    
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-8">
                <div class="card bg-gradient-info card-img-holder text-white">
                  <div class="card-body">
                    <img src="<?= base_url();?>public/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                    <i class="mdi mdi-account-multiple mdi-48px mb-3"></i>
                    <h4 class="font-weight-normal mb-3">Total Employees 
                    </h4>
                    <h2 class="mb-5"><?php echo $this->Emp_model->get_total_employees(); ?></h2>
                    
                  </div>
                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-8">
                <div class="card bg-gradient-success card-img-holder text-white">
                  <div class="card-body">
                    <img src="<?= base_url();?>public/assets/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
                    <i class="mdi mdi-shopping mdi-48px mb-3"></i>
                    <h4 class="font-weight-normal mb-3">Total Products
                    </h4>
                    <h2 class="mb-5"><?php echo $this->Product_model->get_total_products(); ?></h2>
                  </div>
                </div>
              </div>
            </div>


<div id="graph-container"></div>

    <div class="card shadow-sm mb-5">
        <div class="card-body">
            <h5 class="card-title mb-4">Form Records</h5>
            <div class="table-responsive">
                <table class="table table-bordered rounded color center">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($form_records as $record) { ?>
                        <tr>
                            <td><?php echo $record->name; ?></td>
                            <td>
                                <a href="<?php echo site_url('dashboard/preview/' . $record->id); ?>" class="btn btn-warning btn-icon-text btn-sm"><i class="mdi mdi-folder-image btn-icon-append"></i>Preview</a>
                                <a href="<?php echo site_url('Dashboard/delete_record/' . $record->id); ?>" class="btn btn-danger btn-icon-text btn-sm" onclick="return confirmDelete(this.href)"><i class="mdi mdi-delete btn-icon-append"></i>Delete</a>
                            </td>
                        </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script>
        function confirmDelete(link) {
            if (link.includes("delete")) {
                return confirm('Are you sure,you want to delete the Form?');
            } else {
                return true;
            }
        }
    </script>
</div>