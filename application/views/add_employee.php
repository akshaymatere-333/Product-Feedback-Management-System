

<body>
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-account-plus menu-icon"></i>
                </span> Add Employee
            </h3>
        </div>
        

        <?php echo form_open('Employee/add', array("class" => "f")); ?>
<div >
    <label for="firstname">First Name</label>
    <input type="text" name="firstname" id="firstname" value="<?php echo set_value('firstname'); ?>" required />
</div>

<div>
    <label for="lastname">Last Name</label>
    <input type="text" name="lastname" id="lastname" value="<?php echo set_value('lastname'); ?>" required/>
</div>

<div>
    <label for="phone">Phone</label>
    <input type="text" name="phone" id="phone" value="<?php echo set_value('phone'); ?>" required/>
</div>

<div>
    <label for="email">Email</label>
    <input type="email" name="email" id="email" value="<?php echo set_value('email'); ?>" required/>
</div>

<div>
    <label for="department">Department</label>
    <input type="text" name="department" id="department" value="<?php echo set_value('department'); ?>" required/>
</div>



<button type="submit" class="btn btn-success btn-icon-text btn-sm">Add<i class="mdi mdi-account-plus btn-icon-append"></i></button>
<a href="<?php echo site_url('Employee/index'); ?>" class="btn btn-danger btn-icon-text btn-sm">Cancel<i class="mdi mdi-block-helper btn-icon-append"></i></a></form>
<div class="container-sm"></div> 
<div class="container-md"></div> 
<div class="container-lg"></div> 
<div class="container-xl"></div> 
    </div>
    </div>
    
</body>