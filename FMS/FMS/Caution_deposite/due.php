<!DOCTYPE html>
<html>
<head>
    <title>Due Status</title>
    <link rel="stylesheet" href="SFP.css">
</head>
<body>
    <center>
        <h1>Due Status</h1>
        <form action="" method="post">
            <table>
            <tr>
                <th>Reg. No.</th>
                <th>Student Name</th>
                <th>Department</th>
                <th>Programe</th>
                <th>Amount</th>
                <th>Status</th>
            </tr>
            <?php
            // Connect to the database (You need to configure this)
            $conn = mysqli_connect("localhost", "root", "", "feesportal");
            $prgm = $_GET['Prgm_id'];
            $dept = $_GET['Dept_id'];
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

            // Retrieve data from the NO_DUES table
            $sql = "SELECT * FROM no_dues,u_prgm WHERE no_dues.prgm_id = u_prgm.PRGM_ID AND no_dues.prgm_id = '$prgm' AND no_dues.batch LIKE '%$year';";
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
            else
            {
                echo "<tr><td colspan='6'>No data found.</td></tr>";
            }
            mysqli_close($conn);
            ?>
        </table><br>
        <input type="submit" name="save" value="Save">
        <!-- Add this button to your form -->
        <input type="button" id="generatePDFButton" value="Generate PDF">

    </form>
</center>
<script>
    // Function to redirect to dept_pdf.php with query parameters
    function redirectToPDF() {
        var prgm = <?php echo json_encode($prgm); ?>;
        var dept = <?php echo json_encode($dept); ?>;
        var redirectURL = 'dept_pdf.php?prgm=' + prgm + '&dept=' + dept;
        window.location.href = redirectURL;
    }

    // Add a click event listener to the "Generate PDF" button
    document.getElementById('generatePDFButton').addEventListener('click', function () {
        redirectToPDF();
    });
</script>
</body>
</html>
