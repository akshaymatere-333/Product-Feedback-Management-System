
<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Form_model extends CI_Model
{
    public function save_form_data($name, $html_code)
    {
        $data = array(
            'name' => $name,
            'html_code' => $html_code
        );
        $this->db->insert('form_table', $data);
        return $this->db->insert_id();
    }

    public function get_all_records()
    {
        return $this->db->get('form_table')->result();
    }

    public function get_record($id)
    {
        return $this->db->get_where('form_table', ['id' => $id])->row();
    }
    public function delete_record($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('form_table');
        
    }
    public function get_all_forms() {
        $this->db->select('*');
        $this->db->from('form_table'); // Replace 'form_table' with your actual table name
        $query = $this->db->get();
        return $query->result_array();
    }

    public function get_form_by_product($product_name) {
        $this->db->select('*');
        $this->db->from('form_table'); // Replace 'form_table' with your actual table name
        $this->db->where('name', $product_name); // Assuming 'name' is the product field in forms
        $query = $this->db->get();
        return $query->row_array();
    }
    public function getFeedbackData()
    {
        $this->db->select('DATE(created_at) as created_at, COUNT(*) as count');
        $this->db->from('feedback_form');
        $this->db->group_by('DATE(created_at)');
        $query = $this->db->get();
        return $query->result_array();
    }
    
}