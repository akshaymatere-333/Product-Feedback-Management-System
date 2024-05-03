
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Form extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Form_model');
    }

    public function index()
    {
        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');
        $this->load->view('form_view.php');
        $this->load->view('template/footer.php');
    }

    public function submit()
    {
        $name = $this->input->post('name');
        $html_code = $this->input->post('html_code');

        $this->Form_model->save_form_data($name, $html_code);
        redirect('Dashboard');
    }
    public function get_form_html($form_id)
    {
        $this->load->model('Form_model');
        $form_html = $this->Form_model->get_form_html_by_id($form_id);
        return $form_html;
    }
    public function show_form($form_id)
    {
        $form_html = $this->get_form_html($form_id);
        $data['html_code'] = $form_html;
        $this->load->view('Chrome_view', $data);
    }
}