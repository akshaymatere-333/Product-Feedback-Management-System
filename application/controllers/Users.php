<?php
class Users extends CI_Controller {
    public function index() {
        $this->load->model('Users_model');
        $users = $this->Users_model->get_users();
        $data['customer'] = $users;
        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');       
        $this->load->view('users_view', $data);
        $this->load->view('template/footer.php');
        $data['customer'] = $this->Users_model->get_customers();
      
    }
   
    
    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
       $this->load->model('Users_model');
       
    }

    public function delete($id) {
        $delete = $this->Users_model->delete($id);
        if ($delete) {
            redirect('users');
        }
    }
    public function edit($id)
    {
        $data['customer'] = $this->Users_model->get_customer($id);
        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');
        $this->load->view('edit_customer', $data);
        $this->load->view('template/footer.php');
    }

    public function update()
    {
        $id = $this->input->post('id');
        $data = array(
            'FirstName' => $this->input->post('FirstName'),
            'LastName' => $this->input->post('LastName'),
            'Phone' => $this->input->post('Phone'),
            'Email' => $this->input->post('Email'),
            'Product' => $this->input->post('Product')
        );
        $this->Users_model->update_customer($id, $data);
        redirect('users');
    }
    public function add()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('firstname', 'First Name', 'required');
        $this->form_validation->set_rules('lastname', 'Last Name', 'required');
        $this->form_validation->set_rules('phone', 'Phone', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('product', 'Product', 'required');
    
        if ($this->form_validation->run() === FALSE) {
            $this->load->view('template/header.php');
            $this->load->view('template/Panel.php');
            $this->load->view('add_customer');
            $this->load->view('template/footer.php');
        } else {
            $data = array(
                'firstname' => $this->input->post('firstname'),
                'lastname' => $this->input->post('lastname'),
                'phone' => $this->input->post('phone'),
                'email' => $this->input->post('email'),
                'product' => $this->input->post('product')
            );
    
            $this->load->model('Users_model');
            $insert_result = $this->Users_model->insert_with_reassigned_id($data);
    
            if ($insert_result) {
                redirect('users');
            } else {
                // Display an error message or handle the failed insertion
                $this->session->set_flashdata('error', 'Failed to add the customer.');
                redirect('Users/add');
            }
        }
    }
    // In your controller (e.g., CustomerController.php)

    
}

