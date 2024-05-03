<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Product_model');
    }

    public function index() {
        $data['products'] = $this->Product_model->get_all_products();
        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');
        $this->load->view('list_product', $data);
        $this->load->view('template/footer.php');

    }

    public function add_product() {
        // Load form validation library
        $this->load->library('form_validation');
    
        // Set form validation rules
        $this->form_validation->set_rules('product_name', 'Product Name', 'required');
        $this->form_validation->set_rules('product_desc', 'Product desc', 'required');
        // Add rule for image upload
        $this->form_validation->set_rules('userfile', 'Product Image', 'callback_file_upload');
    
        if ($this->form_validation->run() == FALSE) {
            // Form validation failed, reload the add_product view with validation errors
            
        $this->load->view('template/header.php');
        $this->load->view('template/Panel.php');
        $this->load->view('add_product');
        $this->load->view('template/footer.php');
        } else {
            // Form validation passed, proceed to add the product
            $product_name = $this->input->post('product_name');
            $product_desc = $this->input->post('product_desc');
    
            // Upload image
            $image_data = $this->upload_image();

            if ($image_data['status'] == 'success') {
                // Image uploaded successfully, proceed to add the product to the database
                $data = array(
                    'name' => $product_name,
                    'desc' => $product_desc,
                    'image' => $image_data['file_name']
                );
                // Call add_product method of Product_model to insert product into database
                $result = $this->Product_model->add_product($data);
                if ($result) {
                    // Product added successfully, set success flash message
                    $this->session->set_flashdata('success', 'Product added successfully.');
                } else {
                    // Failed to add product to database, set error flash message
                    $this->session->set_flashdata('error', 'Failed to add product. Please try again.');
                }
                // Redirect to the product list page
                redirect('Product');
            } else {
                // Image upload failed, set flash message and reload the add_product view
                $this->session->set_flashdata('error', $image_data['error']);       
                $this->load->view('template/header.php');
                $this->load->view('template/Panel.php');
                $this->load->view('add_product');
                $this->load->view('template/footer.php');
                }
        }
    }
    
    public function update_product($id) {
        if($this->input->post('update_product')) {
            $product_name = $this->input->post('product_name');
            $product_desc = $this->input->post('product_desc');
    
            // Upload image
            $image_data = $this->upload_image();

            if ($image_data['status'] == 'success') {
                // Image uploaded successfully, proceed to update the product in the database
                $data = array(
                    'name' => $product_name,
                    'desc' => $product_desc,
                    'image' => $image_data['file_name']
                );
                $this->Product_model->update_product($id, $data);
                $this->session->set_flashdata('success', 'Product updated successfully.');
                redirect('Product');
            } else {
                // Image upload failed, set flash message and reload the edit_product view
                $this->session->set_flashdata('error', $image_data['error']);
                $data['product'] = $this->Product_model->get_product_by_id($id);
                $this->load->view('template/header.php');
                $this->load->view('template/Panel.php');
                $this->load->view('update_product', $data);
                $this->load->view('template/footer.php');
            }
        } else {
            $data['product'] = $this->Product_model->get_product_by_id($id);
            $this->load->view('template/header.php');
            $this->load->view('template/Panel.php');
            $this->load->view('update_product', $data);
            $this->load->view('template/footer.php');
        }
    }

    public function delete_product($id) {
        $this->Product_model->delete_product($id);
        redirect('Product');
    }

    // Callback function for image upload validation
    public function file_upload() {
        $config['upload_path'] = 'public/assets/images/';
        $config['allowed_types'] = 'jpg|jpeg|png|pdf';
        $config['max_size'] = 20480; // 20MB max
        $config['file_name'] = $_FILES['userfile']['name'];

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if (!$this->upload->do_upload('userfile')) {
            $this->form_validation->set_message('file_upload', $this->upload->display_errors());
            return FALSE;
        } else {
            return TRUE;
        }
    }

    // Function to upload image
    private function upload_image() {
        $config['upload_path'] = 'public/assets/images/';
        $config['allowed_types'] = 'jpg|jpeg|png|pdf';
        $config['max_size'] = 20480; // 20MB max
        $config['file_name'] = $_FILES['userfile']['name'];

        $this->load->library('upload', $config);
        $this->upload->initialize($config);

        if (!$this->upload->do_upload('userfile')) {
            return array(
                'status' => 'error',
                'error' => $this->upload->display_errors()
            );
        } else {
            return array(
                'status' => 'success',
                'file_name' => $this->upload->data('file_name')
            );
        }
    }
}
