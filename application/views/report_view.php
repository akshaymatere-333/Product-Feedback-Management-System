<div class="content-wrapper">
    <div class="page-header d-flex justify-content-between">
        <div>
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                    <i class="mdi mdi-chart-pie menu-icon"></i>
                </span>
                Report
            </h3>
        </div>
    </div>
    <div class="container-fluid main-panel">
        <div class="row mb-5 g-4">
            <div class="col-md-6 col-sm-6">
                <div class="card h-100">
                    <div class="card-header">
                        <h4 class="card-title">Users Overview</h4>
                    </div>
                    <div class="card-body">
                        <canvas id="myChart" width="100%" height="85%"></canvas>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="card h-100">
                    <div class="card-header">
                        <h4 class="card-title">Daily Feedback Overview</h4>
                    </div>
                    <div class="card-body">
                        <canvas id="feedbackChart" width="100%" height="85%"></canvas>
                    </div>
                </div>
            </div>
        </div>
       <div class="row mb-5 g-4">
       <div class="col-md-12 col-sm-18">
       <div class="card h-100">
    <div class="card-header">
        <h4 class="card-title">Hourly Feedback Overview</h4>
    </div>
    <div class="card-body">
        <canvas id="hourlyFeedbackChart" width="100%" height="50%"></canvas>
    </div>
</div>
</div>

</div>
<div class="row mb-5 g-4">
<div class="col-md-4 col-sm-6">
    <div class="card h-100">
        <div class="card-header">
            <h4 class="card-title">Product-wise Customers</h4>
        </div>
        <div class="card-body">
            <canvas id="productCustomersChart" width="100%" height="85%"></canvas>
        </div>
    </div>
</div>
    <div class="col-md-4 col-sm-6">
        <div class="card h-100">
            <div class="card-header">
                <h4 class="card-title">Department-wise Employees</h4>
            </div>
            <div class="card-body">
                <canvas id="departmentEmployeesChart" width="100%" height="85%"></canvas>
            </div>
        </div>
    </div>
</div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    var ctx = document.getElementById('myChart').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Customers', 'Employees'],
        datasets: [{
            label: 'Count',
            data: [<?php echo $total_customers; ?>, <?php echo $total_employees; ?>],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        plugins: {
            title: {
                display: false
            },
            legend: {
                display: false
            }
        },
        scales: {
            y: {
                beginAtZero: true,
                max: Math.max(<?php echo $total_customers; ?>, <?php echo $total_employees; ?>) + 1,
                ticks: {
                    stepSize: 1,
                    callback: function(value, index, ticks) {
                        return value.toFixed(0);
                    }
                }
            }
        }
    }
});

// Get the canvas element for the feedback chart
var feedbackCtx = document.getElementById('feedbackChart').getContext('2d');

// Fetch the feedback data from the server using CodeIgniter
$.ajax({
    url: '<?php echo site_url('Report/get_feedback_data'); ?>',
    type: 'GET',
    dataType: 'json',
    success: function(data) {
        var labels = data.labels;
        var feedbackData = data.data;

        var maxValue = Math.max.apply(null, feedbackData);
        var roundedMaxValue = Math.ceil(maxValue);

        var feedbackChart = new Chart(feedbackCtx, {
            type: 'line',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Feedback count',
                    data: feedbackData,
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                plugins: {
                    title: {
                        display: false
                    },
                    legend: {
                        display: false,
                        labels: {
                            filter: function() {
                                return false; // Hide all labels
                            }
                        }
                    }
                },
                scales: {
                    y: {
                        beginAtZero: true,
                        max: roundedMaxValue,
                        ticks: {
                            stepSize: 1,
                            callback: function(value) {
                                return value.toFixed(0);
                            }
                        }
                    }
                }
            }
        });
    }
});

$.ajax({
        url: '<?php echo site_url('Report/get_product_customer_data'); ?>',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            var labels = data.labels;
            var counts = data.data;

            var productCustomersCtx = document.getElementById('productCustomersChart').getContext('2d');
            var productCustomersChart = new Chart(productCustomersCtx, {
                type: 'pie',
                data: {
                    labels: labels,
                    datasets: [{
                        data: counts,
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    plugins: {
                        title: {
                            display: false
                        },
                        legend: {
                            position: 'bottom'
                        }
                    }
                }
            });
        }
    });
        // Fetch the department-wise employee data from the server using CodeIgniter
        $.ajax({
        url: '<?php echo site_url('Report/get_department_employee_data'); ?>',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            var labels = data.labels;
            var counts = data.data;

            var departmentEmployeesCtx = document.getElementById('departmentEmployeesChart').getContext('2d');
            var departmentEmployeesChart = new Chart(departmentEmployeesCtx, {
                type: 'pie',
                data: {
                    labels: labels,
                    datasets: [{
                        data: counts,
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    plugins: {
                        title: {
                            display: false
                        },
                        legend: {
                            position: 'bottom'
                        }
                    }
                }
            });
        }
    });

    
    // Fetch the hourly feedback data from the server using CodeIgniter
    $.ajax({
        url: '<?php echo site_url('Report/get_hourly_feedback_data'); ?>',
        type: 'GET',
        dataType: 'json',
        success: function(data) {
            var labels = data.labels;
            var datasets = data.datasets;

            var hourlyFeedbackCtx = document.getElementById('hourlyFeedbackChart').getContext('2d');
            var hourlyFeedbackChart = new Chart(hourlyFeedbackCtx, {
                type: 'line',
                data: {
                    labels: labels,
                    datasets: datasets
                },
                options: {
                    plugins: {
                        title: {
                            display: false
                        },
                        legend: {
                            position: 'bottom'
                        }
                    },
                    scales: {
                        x: {
                            title: {
                                display: true,
                                text: 'Hour'
                            }
                        },
                        y: {
                            beginAtZero: true,
                            title: {
                                display: true,
                                text: 'Feedback Count'
                            },
                            ticks: {
                                stepSize: 1,
                                precision: 0 // Display whole numbers
                            }
                        }
                    }
                }
            });
        }
    });
</script>