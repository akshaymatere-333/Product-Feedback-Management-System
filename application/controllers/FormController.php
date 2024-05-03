<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class FormController extends CI_Controller {
    public function open_form() {
        $this->load->database();
        $form_id = $this->input->get('id');

        // Retrieve the HTML code from the database using the form ID
        $this->db->where('id', $form_id);
        $query = $this->db->get('html_code');

        if ($query->num_rows() > 0) {
            $form_html = $query->row()->html_code;
            $this->output->set_content_type('text/html');
            echo $form_html;
        } else {
            show_404();
        }
    }
}