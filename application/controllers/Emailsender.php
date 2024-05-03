<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Emailsender extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Email_model');
        $this->load->library('email');
    }

    public function send($id)
    {
        $customer = $this->Email_model->getCustomerById($id);
        if ($customer) {
            $product = $customer['Product'];

            // Email configuration
            $config = array(
                'protocol' => 'smtp',
                'smtp_host' => 'smtp.gmail.com',
                'smtp_port' => 587,
                'smtp_user' => 'demo@gmail.com',//your email id here
                'smtp_pass' => 'password', // Replace with your Gmail password (or app password)
                'mailtype' => 'html', // Set to 'text' if you want to send plain text emails
                'charset' => 'utf-8', // Character encoding for the email
                'smtp_crypto' => 'tls'
                 // Use 'ssl' for port 465 and 'tls' for port 587
            );

            $this->email->initialize($config);
            $this->email->set_newline("\r\n");
            $this->email->from('demo@gmail.com', 'demo name');
            $this->email->to($customer['Email']);
            $this->email->subject('Feedback Request');

            $message = 'Click on the view page and give your valuable feedback for our product: <a href="' . site_url('Link/' . $product) . '">View Page</a>';
            $this->email->message($message);

            if ($this->email->send()) {
                echo "<script>alert('Email sent successfully!');</script>";
                echo "<script>setTimeout(function(){ window.location.href = '" . site_url('Users') . "'; },0);</script>";
            } else {
                echo $this->email->print_debugger();
            }
        } else {
            echo "<script>alert('Customer not found');</script>";
            echo "<script>setTimeout(function(){ window.location.href = '" . site_url('Users') . "'; },0);</script>";
        }
    }
}
