<?php
class Employee extends CI_Controller {
    public function index() {
        $this->load->model('Emp_model');
        $users = $this->Emp_model->get_users();
        $data['employee'] = $users;
        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');       
        $this->load->view('employee_view', $data);
        $this->load->view('template/footer.php');
        $data['employee'] = $this->Emp_model->get_customers();
      
    }
   
    
    public function __construct() {
        parent::__construct();
        $this->load->helper('url');
       $this->load->model('Emp_model');
       
    }

    public function delete($id) {
        $delete = $this->Emp_model->delete($id);
        if ($delete) {
            redirect('Employee');
        }
    }
    public function edit($id)
    {
        $data['employee'] = $this->Emp_model->get_customer($id);
        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');
        $this->load->view('edit_employee', $data);
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
            'Department' => $this->input->post('Department')
        );
        $this->Emp_model->update_customer($id, $data);
        redirect('Employee');
    }
    public function add()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('firstname', 'First Name', 'required');
        $this->form_validation->set_rules('lastname', 'Last Name', 'required');
        $this->form_validation->set_rules('phone', 'Phone', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('department', 'Department','required');
    
        if ($this->form_validation->run() === FALSE) {
            $this->load->view('template/header.php');
            $this->load->view('template/Panel.php');
            $this->load->view('add_employee');
            $this->load->view('template/footer.php');
        } else {
            $data = array(
                'firstname' => $this->input->post('firstname'),
                'lastname' => $this->input->post('lastname'),
                'phone' => $this->input->post('phone'),
                'email' => $this->input->post('email'),
                'department' => $this->input->post('department')
            );
    
            $this->load->model('Emp_model');
            $insert_result = $this->Emp_model->insert_with_reassigned_id($data);
    
            if ($insert_result) {
                redirect('Employee');
            } else {
                // Display an error message or handle the failed insertion
                $this->session->set_flashdata('error', 'Failed to add the customer.');
                redirect('Employee/add');
            }
        }
    }
}

