

    <div class="container-scroller ">
      <div class="row p-0 m-0 proBanner" id="proBanner">
        
      </div>
      
      
      
      <div class=" page-body-wrapper sticky">
       
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
          <div >
  <img src="<?= base_url()?>public\assets\images\logo.png" alt="Your Image" class="sidebar-image  btn-gradient-primary ">
  <div>
  <!-- Other sidebar content goes here -->
</div>
            <li class="nav-item nav-profile">
            
              <a href="#" class="nav-link">
                <div class="nav-profile-image">
                  <img src="<?= base_url();?>public/assets/images/faces/face1.png" alt="profile">
                  <span class="login-status online"></span>
                  
                </div>
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2">Admin</span>
                  <span class="text-secondary text-small">Project Manager</span>
                </div>
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
           
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="#" href="<?php echo site_url('Dashboard');?>" aria-expanded="#" aria-controls="#">
                <span class="menu-title">Dashboard</span>
                
                <i class="mdi mdi-home menu-icon"></i>
              </a>
              </li>
              <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="menu-title">Users</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-contacts menu-icon"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="<?php echo site_url('Users'); ?>">Customers</a></li>
                  <li class="nav-item"> <a class="nav-link" href="<?php echo site_url('Employee'); ?>">Employees</a></li>
                </ul>
              </div>    
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo site_url('FormBuilder');?>">
                <span class="menu-title">Form Builder</span>
                <i class="mdi mdi-crosshairs-gps menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link"href="<?php echo site_url('Feedback');?>">
                <span class="menu-title">Feedbacks</span>
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo site_url('Product');?>">
                <span class="menu-title">Products</span>
                <i class="mdi mdi-shopping menu-icon"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo site_url('Report');?>">
                <span class="menu-title">Report</span>
                <i class="mdi mdi-chart-pie menu-icon"></i>
              </a>
            </li>
          </ul>
        </nav>
