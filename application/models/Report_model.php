<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Report_model extends CI_Model {
    public function get_product_customer_count()
{
    $query = $this->db->query("SELECT Product, COUNT(*) as count FROM customer GROUP BY Product");
    $result = $query->result_array();

    $labels = array_column($result, 'Product');
    $data = array_column($result, 'count');

    return array('labels' => $labels, 'data' => $data);
}
public function get_department_employee_count()
{
    $query = $this->db->query("SELECT Department, COUNT(*) as count FROM employee GROUP BY Department");
    $result = $query->result_array();

    $labels = array_column($result, 'Department');
    $data = array_column($result, 'count');

    return array('labels' => $labels, 'data' => $data);
}
public function get_hourly_feedback_count()
{
    $today = date('Y-m-d');

    $query = $this->db->query("
        SELECT
            HOUR(created_at) AS hour,
            device_name AS product,
            ROUND(COUNT(*)) AS count
        FROM
            feedback_form
        WHERE
            DATE(created_at) = ?
        GROUP BY
            HOUR(created_at), device_name
        ORDER BY
            HOUR(created_at), device_name
    ", array($today));

    $result = $query->result_array();

    $labels = array();
    $datasets = array();

    foreach ($result as $row) {
        $hour = $row['hour'];
        $product = $row['product'];
        $count = $row['count'];

        if (!isset($datasets[$product])) {
            $datasets[$product] = array(
                'label' => $product,
                'data' => array(),
                'backgroundColor' => 'rgba(' . mt_rand(0, 255) . ', ' . mt_rand(0, 255) . ', ' . mt_rand(0, 255) . ', 0.2)',
                'borderColor' => 'rgba(' . mt_rand(0, 255) . ', ' . mt_rand(0, 255) . ', ' . mt_rand(0, 255) . ', 1)',
                'borderWidth' => 1
            );
        }

        $datasets[$product]['data'][$hour] = $count;
        $labels[$hour] = date('h:i A', strtotime($hour . ':00')); // Format hour in 12-hour format with AM/PM
    }

    ksort($labels); // Sort the labels by hour

    foreach ($datasets as &$dataset) {
        $data = array();
        foreach ($labels as $hour => $label) {
            $data[$hour] = isset($dataset['data'][$hour]) ? $dataset['data'][$hour] : 0;
        }
        $dataset['data'] = array_values($data);
    }

    $data = array(
        'labels' => array_values($labels),
        'datasets' => array_values($datasets)
    );

    return $data;
}

}