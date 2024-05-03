<div class="content-wrapper">
    <div class="page-header d-flex justify-content-between">
        <div>
            <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>                </span>
                Feedback
            </h3>
        </div>
    </div>
    <div class="table-container main-panel">
        <!-- Display the feedback data -->
        <table class="table table-bordered rounded table color center">
            <thead>
                <tr>
                    <th>Customer Name</th>
                    <th>Mobile No.</th>
                    <th>Device Name</th>
                    <th>Device Experience</th>
                    <th>Ease of Use</th>
                    <th>Speed & Responsiveness</th>
                    <th>Design & Aesthetics</th>
                    <th>content/Information</th>
                    <th>Features and Functionalities</th>
                    <th>Additional Features</th>
                    <th>Most Liked</th>
                    <th>Least Liked</th>
                    <th>Other Suggestions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through feedback data and display each entry -->
                <?php if (!empty($feedback_form)): ?>
                    <?php foreach ($feedback_form as $entry): ?>
                        <tr>
                            <td><?php echo htmlspecialchars($entry['name']); ?></td>
                            <td><?php echo htmlspecialchars($entry['mobile']); ?></td>
                            <td><?php echo htmlspecialchars($entry['device_name']); ?></td>
                            <td class="star-rating">
                                <?php for ($i = 0; $i < $entry['rating1']; $i++): ?>
                                    <i class="fa fa-star"></i>
                                <?php endfor; ?>
                            </td>
                            <td class="star-rating">
                                <?php for ($i = 0; $i < $entry['rating2']; $i++): ?>
                                    <i class="fa fa-star"></i>
                                <?php endfor; ?>
                            </td>
                            <td class="star-rating">
                                <?php for ($i = 0; $i < $entry['rating3']; $i++): ?>
                                    <i class="fa fa-star"></i>
                                <?php endfor; ?>
                            </td>
                            <td class="star-rating">
                                <?php for ($i = 0; $i < $entry['rating4']; $i++): ?>
                                    <i class="fa fa-star"></i>
                                <?php endfor; ?>
                            </td>
                            <td class="star-rating">
                                <?php for ($i = 0; $i < $entry['rating5']; $i++): ?>
                                    <i class="fa fa-star "></i>
                                <?php endfor; ?>
                            </td>
                            <td class="star-rating">
                                <?php for ($i = 0; $i < $entry['rating6']; $i++): ?>
                                    <i class="fa fa-star"></i>
                                <?php endfor; ?>
                            </td>
                            <td><?php echo htmlspecialchars($entry['additional_features']); ?></td>
                            <td><?php echo htmlspecialchars($entry['liked_most']); ?></td>
                            <td><?php echo htmlspecialchars($entry['liked_least']); ?></td>
                            <td><?php echo htmlspecialchars($entry['other_suggestions']); ?></td>
                        </tr>
                    <?php endforeach; ?>
                <?php else: ?>
                    <tr>
                        <td colspan="13">No feedback data available.</td>
                    </tr>
                <?php endif; ?>
            </tbody>
        </table>
    </div>
    <div class="container-sm"></div>
    <div class="container-md"></div>
    <div class="container-lg"></div>
    <div class="container-xl"></div>
</div>

<style>
    .table-container {
        width: 100%;
        overflow-x: auto;

    }

    table {
        width: 100%;
        table-layout: auto;
    }

    table th, table td {
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
    max-width: 200px;
    word-break: break-all;
    height: auto;

}


   
    
</style>
