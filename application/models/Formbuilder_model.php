<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Formbuilder_model extends CI_Model {
   
    
        public function save_data($data)
        {
            $this->db->insert('form_table', $data);
        }
    }



?>