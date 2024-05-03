<?php


class Users_model extends CI_Model {
    
    public function get_users() {
        $query = $this->db->query("SELECT * FROM customer");
        return $query->result_array();
    }
    public function __construct() {
        $this->load->database('default');
        $this->load->library('session');

        // Call the Model constructor
        parent::__construct();
    }

    public function get_all_customer() {
        $this->db->select('*');
        $this->db->from('customer');
        $objQuery = $this->db->get();
        return $objQuery->result_array();
    }

    public function get_id_wise_customer($id) {
        $this->db->select('*');
        $this->db->from('customer');
        $this->db->where('id', $id);
        $objQuery = $this->db->get();
        return $objQuery->result_array();
    }
    public function delete($id)
{
    // First, delete the record from the customer table
    $this->db->where('id', $id);
    $delete_result = $this->db->delete('customer');

    // If the deletion was successful, insert the deleted ID into the deleted_ids table
    if ($delete_result) {
        $this->db->insert('deleted_ids', array('id' => $id));
        return true;
    } else {
        return false;
    }
}
    
    public function get_customers()
    {
        return $this->db->get('customer')->result_array();
    }

    public function get_customer($id)
    {
        $this->db->where('id', $id);
        return $this->db->get('customer')->row_array();
    }

    public function update_customer($id, $data)
    {
        $this->db->where('id', $id);
        $this->db->update('customer', $data);
    }
    public function add_customer($data)
    {
        $this->db->insert('customer', $data);
    }
    public function insert_with_reassigned_id($data)
{
    // First, check if there are any deleted IDs available
    $this->db->select_min('id');
    $query = $this->db->get('deleted_ids');
    $available_id = $query->row()->id;

    if ($available_id) {
        // If a deleted ID is available, use it for the new record
        $data['id'] = $available_id;

        // Insert the new record with the reassigned ID
        $this->db->insert('customer', $data);

        // Remove the used ID from the deleted_ids table
        $this->db->where('id', $available_id);
        $this->db->delete('deleted_ids');
        return true;
    } else {
        // If no deleted ID is available, use the default insert behavior
        return $this->db->insert('customer', $data);
    }
}
public function get_total_customers()
{
    $query = $this->db->get('customer');
    return $query->num_rows();
}

}

