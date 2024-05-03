

<body>
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-account-plus menu-icon"></i>
                </span> Add Employee
            </h3>
        </div>
        

        <?php echo form_open('Formbuilder/add', array("class" => "f")); ?>
<div >
    <label for="name">Form Label :</label>
    <input type="text" name="name" id="name" required />
</div>

<div>
    <label for="html_code">Html Code</label>
    <textarea" name="html_code" id="html_code" value="<?php echo set_value($formdata); ?>" required/>
</div>





<button type="submit" class="btn btn-success btn-icon-text btn-sm">Add<i class="mdi mdi-account-plus btn-icon-append"></i></button>
<div class="container-sm"></div> 
<div class="container-md"></div> 
<div class="container-lg"></div> 
<div class="container-xl"></div> 
    </div>
    </div>
    
</body>