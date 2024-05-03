 
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Feedback_model extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function savefeedback($data) {
        $name = $data['name'];
        $mobile = $data['mobile'];
        $device_name = $data['device_name'];
        $rating1 = $data['rating1'];
        $rating2 = $data['rating2'];
        $rating3 = $data['rating3'];
        $rating4 = $data['rating4'];
        $rating5 = $data['rating5'];
        $rating6 = $data['rating6'];
        $additional_features = isset($data['additional_features']) ? $data['additional_features'] : '';
        $liked_most = isset($data['liked_most']) ? $data['liked_most'] : '';
        $liked_least = isset($data['liked_least']) ? $data['liked_least'] : '';
        $other_suggestions = isset($data['other_suggestions']) ? $data['other_suggestions'] : '';
    
        $query = "INSERT INTO feedback_form (name, mobile, device_name, rating1, rating2, rating3, rating4, rating5, rating6, additional_features, liked_most, liked_least, other_suggestions)
                  VALUES ('$name', '$mobile', '$device_name', '$rating1', '$rating2', '$rating3', '$rating4', '$rating5', '$rating6', '$additional_features', '$liked_most', '$liked_least', '$other_suggestions')";
    
        $this->db->query($query);
    
        if ($this->db->affected_rows() > 0) {
            return true;
        } else {
            return false;
        }
    }
    public function get_all_feedback() {
        $query = $this->db->get('feedback_form');
        return $query->result_array();
    }
    public function insertFeedback($data)
    {
        return $this->db->insert('feedback_form', $data);
    }
}