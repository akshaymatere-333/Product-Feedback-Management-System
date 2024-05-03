


<div class="content-wrapper">
    <div class="page-header d-flex justify-content-between ">
        <div>
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-contacts menu-icon"></i>
                </span> Employees
            </h3>
        </div>
        <div>
            <a href="<?php echo site_url('Employee/add'); ?>" class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn" >Add Employee</a>
        </div>
    </div>
    <div class="main-panel center">
        <table class="table table-bordered rounded center color">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Department</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($employee as $user) : ?>
                <tr>
                    <td><?php echo $user['id']; ?></td>
                    <td><?php echo $user['FirstName'] . ' ' . $user['LastName']; ?></td>
                    <td><?php echo $user['Phone']; ?></td>
                    <td><?php echo $user['Email']; ?></td>
                    <td><?php echo $user['Department']; ?></td>
                    <td style="text-align: center;">
                        <a href="<?php echo site_url('Employee/edit/') . $user['id']; ?>" class="btn btn-primary btn-icon-text btn-sm"><i class="mdi mdi-tooltip-edit btn-icon-append"></i>Edit</a>
                        <a href="<?php echo site_url('Employee/delete/') . $user['id']; ?>"class="btn btn-danger btn-icon-text btn-sm" onclick="return confirmDelete(this.href)"><i class="mdi mdi-delete btn-icon-append"></i>Delete</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <div class="container-sm"></div> 
<div class="container-md"></div> 
<div class="container-lg"></div> 
<div class="container-xl"></div> 
</div>

<script>
function confirmDelete(link) {
    if (link.includes("delete")) {
        return confirm('Are you sure you want to delete this customer?');
    } else {
        return true;
    }
}
</script>
