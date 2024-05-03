
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends CI_Controller {
    public function index() {
        $this->load->model('Users_model');
        $this->load->model('Emp_model');
        $this->load->model('Product_model');
        $this->load->model('Report_model');

    
        $data['total_customers'] = $this->Users_model->get_total_customers();
        $data['total_employees'] = $this->Emp_model->get_total_employees();
        $data['total_products'] = $this->Product_model->get_total_products();
        $this->load->view('template/header.php');
            $this->load->view('template/Panel.php');
            $this->load->view('report_view', $data);
            $this->load->view('template/footer.php');
    }
    public function get_feedback_data()
{
    // Fetch the feedback data from the database for the last 7 days
    $feedback_data = $this->db->select('DATE(created_at) as date, COUNT(*) as count')
                             ->from('feedback_form')
                             ->where('created_at >= DATE_SUB(NOW(), INTERVAL 7 DAY)') // Filter for last 7 days
                             ->group_by('date')
                             ->order_by('date', 'DESC') // Order by date in descending order (LIFO)
                             ->get()
                             ->result_array();

    // Reverse the array to maintain the LIFO order
    $feedback_data = array_reverse($feedback_data);

    $labels = array_column($feedback_data, 'date');
    $data = array_column($feedback_data, 'count');

    $response = [
        'labels' => $labels,
        'data' => $data
    ];

    $this->output
         ->set_content_type('application/json')
         ->set_output(json_encode($response));
}
public function get_product_customer_data()
{
    $this->load->model('Report_model');
    $data = $this->Report_model->get_product_customer_count();
    echo json_encode($data);
}
public function get_department_employee_data()
{
    $this->load->model('Report_model');
    $data = $this->Report_model->get_department_employee_count();
    echo json_encode($data);
}
public function get_hourly_feedback_data()
{
    $this->load->model('Report_model');
    $data = $this->Report_model->get_hourly_feedback_count();
    echo json_encode($data);
}
}