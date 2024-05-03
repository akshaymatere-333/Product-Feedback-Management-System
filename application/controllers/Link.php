<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Link extends CI_Controller
{
    
        public function Mobile()
        {
            $this->retrieveHtmlCode('Mobile');
        }
    
        public function Laptop()
        {
            $this->retrieveHtmlCode('Laptop');

        }
    
        public function SmartTV()
        {
            $this->retrieveHtmlCode('Smart TV');
        
        }
        public function submitFeedback()
    {
        // Retrieve the form data from the POST request
        $formData = $this->input->post();
        $this->load->model('Feedback_model');

        // Save the form data to the database
        $success = $this->Feedback_model->saveFeedback($formData);

        if ($success) {
            // Feedback saved successfully
            echo "Feedback submitted successfully!";
        } else {
            // Error occurred while saving feedback
            echo "Error occurred while submitting feedback. Please try again later.";
        }
    }
    
        
        public function retrieveHtmlCode($product_name)
        {
            $query = $this->db->get_where('form_table', array('name' => $product_name));
            if ($query->num_rows() > 0) {
                $record = $query->row();
                echo $record->html_code;
            } else {
                echo "No record found for product '$product_name'";
            }
        }
        
    }
    
?>