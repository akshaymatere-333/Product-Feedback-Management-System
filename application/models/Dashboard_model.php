<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_model extends CI_Model {

    public function __construct() {
        $this->load->database('feedback');
    }

    public function get_saved_forms() {
        $query = $this->db->select('id, name, thumbnail')
                         ->from('saved_forms')
                         ->order_by('created_at', 'DESC')
                         ->get();
        var_dump($query->result_array()); 
        return $query->result_array();
    }
    public function get_form_by_id($id) {
        $query = $this->db->where('id', $id)
                         ->get('saved_forms');
        return $query->row_array();
    }

    public function delete($id)
{
    // First, delete the record from the customer table
    $this->db->where('id', $id);
    $delete_result = $this->db->delete('form_table');

    // If the deletion was successful, insert the deleted ID into the deleted_ids table
    if ($delete_result) {
        $this->db->insert('deleted_ids2', array('id' => $id));
        return true;
    } else {
        return false;
    }
}



}
?>