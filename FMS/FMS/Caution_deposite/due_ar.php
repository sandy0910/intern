<!DOCTYPE html>
<html>
<head>
    <title>Due Status</title>
    <link rel="stylesheet" href="SFP.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <center>
        <h1>Due Status</h1>
        <form action="" method="post">
            <select id="dept_id" name="dept_id">
                <option value="">All Departments</option>
                <?php
                // Connect to the database (You need to configure this)
                $conn = mysqli_connect("localhost", "root", "", "feesportal");

                if (!$conn) {
                    die("Connection failed: " . mysqli_connect_error());
                }

                // Retrieve distinct DEPT_ID values from U_PRGM
                $dept_query  = "SELECT DISTINCT DEPT_ID FROM U_PRGM";
                $dept_result = mysqli_query($conn, $dept_query);

                while ($dept_row = mysqli_fetch_assoc($dept_result)) {
                    $dept_id = $dept_row['DEPT_ID'];
                    echo "<option value='$dept_id'>$dept_id</option>";
                }

                mysqli_close($conn);
                ?>
            </select>

            <select id="prgm_name" name="prgm_name">
                <option value="">All Programs</option>
            </select>
        </form>

        <!-- Display the table of due status based on the selected filters -->
        <form action="" method="post">
            <table id="due-status-table">
                <tr>
                    <th>Reg. No.</th>
                    <th>Student Name</th>
                    <th>Department</th>
                    <th>Programe</th>
                    <th>Amount</th>
                    <th>Status</th>
                </tr>
                <?php
                if (isset($_POST['filter'])) {
                    // Get the selected department and program
                    $selected_dept      = $_POST['dept_id'];
                    $selected_prgm_name = $_POST['prgm_name'];
                    
                    // Connect to the database (You need to configure this)
                    $conn = mysqli_connect("localhost", "root", "", "feesportal");
                    
                    if (!$conn) {
                        die("Connection failed: " . mysqli_connect_error());
                    }
                    
                    // Build the SQL query based on selected filters
                    $sql = "SELECT * FROM no_dues, u_prgm WHERE no_dues.prgm_id = u_prgm.PRGM_ID";
                    
                    if (!empty($selected_dept)) {
                        $sql .= " AND u_prgm.DEPT_ID = '$selected_dept'";
                    }
                    
                    if (!empty($selected_prgm_name)) {
                        $sql .= " AND u_prgm.PRGM_NAME = '$selected_prgm_name'";
                    }
                    
                    $year = date("y");
                    $year = $year + 1;
                    $sql .= " AND no_dues.batch LIKE '%$year';";
                    
                    $result = mysqli_query($conn, $sql);
                    
                    if (mysqli_num_rows($result) > 0) {
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo "<tr>";
                            echo "<td>{$row['REGNO']}</td>";
                            echo "<td>{$row['student_name']}</td>";
                            echo "<td>{$row['DEPT_ID']}</td>";
                            echo "<td>{$row['PRGM_NAME']}</td>";
                            echo "<td><input type='text' name='amount[]' value='{$row['amount']}'></td>";
                            echo "<td>
                                    <select name='status[]'>
                                        <option value='No due' " . ($row['status'] == 'No due' ? 'selected' : '') . ">No due</option>
                                        <option value='Due' " . ($row['status'] == 'Due' ? 'selected' : '') . ">Due</option>
                                        <option value='Not submitted' " . ($row['status'] == 'Not submitted' ? 'selected' : '') . ">Not submitted</option>
                                    </select>
                                  </td>";
                            echo "<input type='hidden' name='regno[]' value='{$row['REGNO']}'>";
                            echo "</tr>";
                        }
                    }
                    mysqli_close($conn);
                }
                ?>
            </table><br>
            <input type="submit" name="save" value="Save">
            <br>
            
        </form>
        <button id="generatePDFButton" type="button">Generate PDF</button>


        <?php
        // Connect to the database (You need to configure this)
        $conn = mysqli_connect("localhost", "root", "", "feesportal");
        $year = date("y");
        $year = $year + 1;
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }

        if (isset($_POST['save'])) {
            $amount = $_POST['amount'];
            $status = $_POST['status'];

            for ($i = 0; $i < count($amount); $i++) {
                $regno = $_POST['regno'][$i];
                $amount_value = $amount[$i];
                $status_value = $status[$i];

                // Update the database with the edited values
                $sql = "UPDATE NO_DUES SET amount = '$amount_value', status = '$status_value' WHERE REGNO = '$regno'";
                mysqli_query($conn, $sql);
            }
        }
        mysqli_close($conn);
        ?>
    </center>
    <script>
    $(document).ready(function () {
        // Function to update the prgm_name dropdown based on selected dept_id
        function updateProgramOptions(selectedDept) {
            $.ajax({
                type: "POST",
                url: "get_programs.php", // Create a PHP script to fetch program options
                data: {
                    dept_id: selectedDept
                },
                success: function (data) {
                    $("#prgm_name").html(data);
                }
            });
        }

        // Trigger updateProgramOptions when dept_id selection changes
        $("#dept_id").change(function () {
            var selectedDept = $(this).val();
            updateProgramOptions(selectedDept);
        });

        function redirectToPDF(selectedDept, selectedPrgm) {
        var url = "no_due_pdf.php?dept_id=" + selectedDept + "&prgm_name=" + selectedPrgm;
        window.location.href = url;
    }

    // Add an event listener to the button to redirect to no_due_pdf.php
    $("#generatePDFButton").click(function () {
        var selectedDept = $("#dept_id").val();
        var selectedPrgm = $("#prgm_name").val();
        redirectToPDF(selectedDept, selectedPrgm);
    });

        // Trigger initial update when the page loads
        var selectedDept = $("#dept_id").val();
        updateProgramOptions(selectedDept);

        function updateTable() {
            var selectedDept = $("#dept_id").val();
            var selectedPrgm = $("#prgm_name").val();
            
            // AJAX request to fetch updated data
            $.ajax({
                type: "POST",
                url: "due_ar_update_table.php",
                data: {
                    dept_id: selectedDept,
                    prgm_name: selectedPrgm
                },
                success: function (data) {
                    $("#due-status-table").html(data);
                }
            });
        }

        // Trigger updateTable when select boxes change
        $("#dept_id, #prgm_name").change(function () {
            updateTable();
        });
        // Trigger updateTable on page load to display initial data
        updateTable();

    });
    </script>
</body>
</html>
