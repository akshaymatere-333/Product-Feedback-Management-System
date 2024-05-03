<div class="content-wrapper">
    <div class="page-header d-flex justify-content-between">
        <div>
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-contacts menu-icon"></i>
                </span>
                Customers
            </h3>
        </div>
        <div>
            <a href="<?php echo site_url('Users/add'); ?>" class="btn btn-block btn-gradient-primary btn-lg font-weight-medium auth-form-btn">Add Customer</a>
        </div>
    </div>

    <div class="main-panel">
        <table class="table table-bordered rounded table color center">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>Product</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($customer as $user) : ?>
                <tr>
                    <td><?php echo $user['id']; ?></td>
                    <td><?php echo $user['FirstName'] . ' ' . $user['LastName']; ?></td>
                    <td><?php echo $user['Phone']; ?></td>
                    <td><?php echo $user['Email']; ?></td>
                    <td><?php echo $user['Product']; ?></td>
                    <td style="text-align: center;">
                    <a href="<?php echo site_url('Emailsender/send/') . $user['id']; ?>" class="btn btn-success btn-sm btn-send"><i class="mdi mdi-gmail btn-icon-append"></i>Send</a>                    
                    <a href="<?php echo site_url('Users/edit/') . $user['id']; ?>" class="btn btn-primary btn-sm"><i class="mdi mdi-tooltip-edit btn-icon-append"></i>Edit</a>
                    <a href="<?php echo site_url('Users/delete/') . $user['id']; ?>" class="btn btn-danger btn-sm" onclick="return confirmDelete(this.href)"><i class="mdi mdi-delete btn-icon-append"></i>Delete</a>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>

    <?php if ($this->session->flashdata('success')) { ?>
    <div class="alert alert-success"><?php echo $this->session->flashdata('success'); ?></div>
    <?php } elseif ($this->session->flashdata('error')) { ?>
    <div class="alert alert-danger"><?php echo $this->session->flashdata('error'); ?></div>
    <?php } ?>

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