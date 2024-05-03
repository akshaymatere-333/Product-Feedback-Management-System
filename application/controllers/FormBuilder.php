<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class FormBuilder extends CI_Controller {

    public function index()
    {
        $this->load->view('template/header');
        $this->load->view('template/Panel');
        $this->load->view('formbuilder.php');
        $this->load->view('template/footer');
    }

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Formbuilder_model');
        $this->load->library('form_validation');
    }
    
    public function save()
    {
        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('html_code', 'HTML Code', 'required');

        if ($this->form_validation->run() === FALSE) {
            $this->load->view('formbuiulder');
        } else {
            $data = array(
                'name' => $this->input->post('name'),
                'html_code' => $this->input->post('html_code')
            );

            $this->Formbuilder_model->save_data($data);
            $this->session->set_flashdata('success', 'Data saved successfully.');
            redirect('Dashboard');
        }
    }
}
    

