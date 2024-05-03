<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Feedback extends CI_Controller {

    public function __construct() {
        parent::__construct();

        $this->load->model('Feedback_model');
    }

  
    public function index() {
        
        $data['feedback_form'] = $this->Feedback_model->get_all_feedback();

        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');
        $this->load->view('Feedback_view',$data);
        $this->load->view('template/footer.php');
    }
    

    public function submitFeedback()
{
    $this->load->model('Feedback_model');
    $formData = array();
   
    
    $this->Feedback_model->insertFeedback($formData);
    redirect('feedback');
}
}