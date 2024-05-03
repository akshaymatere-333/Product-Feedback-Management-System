<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('Form_model');
        $this->load->model('Dashboard_model');
        
$this->load->model('Users_model');
$this->load->model('Emp_model');
$this->load->model('Product_model');


    }

    public function index()
    {
        $data['form_records'] = $this->Form_model->get_all_records();
        $form_records = $this->db->get('form_table')->result();
        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');
        $this->load->view('Dashboard_view.php', ['form_records' => $form_records]);
        $this->load->view('template/footer.php');
    }

    public function edit($id)
    {
        $data['form_record'] = $this->Form_model->get_record($id);
        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');
        $this->load->view('edit_form_view', $data);
        $this->load->view('template/footer.php');
    }

    public function update($id)
    {
        $name = $this->input->post('name');
        $html_code = $this->input->post('html_code');
        $this->form_model->update_record($id, $name, $html_code,$Link);
        redirect('dashboard');
    }

    public function delete_record($id)
    {
        $this->Form_model->delete_record($id);
        redirect('dashboard');
    }
    public function preview($id)
    {
        // Get the form record from the database
        $form_record = $this->db->get_where('form_table', ['id' => $id])->row();

        // Pass the form record to the view
        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');
        $this->load->view('form_view', ['form_record' => $form_record]);
        $this->load->view('template/footer.php');
    }
    
   
}