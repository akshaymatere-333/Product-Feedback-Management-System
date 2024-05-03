<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product_model extends CI_Model {

    public function get_all_products() {
        return $this->db->get('products')->result_array();
    }

    public function add_product($data) {
        return $this->db->insert('products', $data);
    }

    public function update_product($id, $data)
{
    $this->db->where('id', $id);
    $this->db->update('products', $data);
}

    public function get_product_by_id($id) {
        return $this->db->get_where('products', array('id' => $id))->row_array();
    }

    public function delete_product($id) {
        $this->db->where('id', $id);
        return $this->db->delete('products');
    }
    public function get_total_products()
{
    $query = $this->db->get('products');
    return $query->num_rows();
}

}
