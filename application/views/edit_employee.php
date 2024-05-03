

<body>
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-tooltip-edit menu-icon"></i>
                </span> Edit Employee
            </h3>
        </div>
    <div class="main-panel"><form  class="f"method="post" action="<?php echo site_url('Employee/update'); ?>">
    <input type="hidden" name="id" value="<?php echo $employee['id']; ?>"><br>
    <label for="FirstName">First Name</label>
    <input type="text" name="FirstName" value="<?php echo $employee['FirstName']; ?>"><br>
    <label for="LastName">Last Name</label>
    <input type="text" name="LastName" value="<?php echo $employee['LastName']; ?>"><br>
    <label for="Phone">Phone</label>
    <input type="text" name="Phone" value="<?php echo $employee['Phone']; ?>"><br>
    <label for="Email">Email</label>
    <input type="email" name="Email" value="<?php echo $employee['Email']; ?>"><br>
    <label for="Department">Department</label>
    <input type="text" name="Department" value="<?php echo $employee['Department']; ?>"><br>
    <button type="submit" class="btn btn-success btn-icon-text btn-sm"><i class="mdi mdi-account-plus btn-icon-append"></i>Update</button>
    <a href="<?php echo site_url('Users'); ?>" class="btn btn-primary btn-icon-text btn-sm"><i class="mdi mdi-arrow-left btn-icon-append"></i>Back</a></form>
</form>
<div class="container-sm"></div> 
<div class="container-md"></div> 
<div class="container-lg"></div> 
<div class="container-xl"></div> 
    </div>
    </div>
    
</body>