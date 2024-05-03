<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Email_model extends CI_Model {
    public function getCustomerById($id)
{
    $this->db->where('id', $id);
    $query = $this->db->get('customer');
    return $query->row_array();
}
public function getFormByName($name)
{
    $this->db->where('name', $name);
    $query = $this->db->get('form_table');
    return $query->row_array();
}
}