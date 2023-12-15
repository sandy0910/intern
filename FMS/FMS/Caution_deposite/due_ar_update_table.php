<html>
    <?php
// Establish a database connection (Replace with your database credentials)
$conn = mysqli_connect("localhost", "root", "", "feesportal");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Get the selected department and program
$selectedDept = $_POST['dept_id'];
$selectedPrgm = $_POST['prgm_name'];

// Build the SQL query based on selected filters
$sql = "SELECT * FROM no_dues, u_prgm WHERE no_dues.prgm_id = u_prgm.PRGM_ID";

if (!empty($selectedDept)) {
    $sql .= " AND u_prgm.DEPT_ID = '$selectedDept'";
}

if (!empty($selectedPrgm)) {
    $sql .= " AND u_prgm.PRGM_NAME = '$selectedPrgm'";
}

$year = date("y");
$year = $year + 1;
$sql .= " AND no_dues.batch LIKE '%-$year';";

$result = mysqli_query($conn, $sql);

echo "<tr>
        <th>Reg. No.</th>
        <th>Student Name</th>
        <th>Department</th>
        <th>Programe</th>
        <th>Amount</th>
        <th>Status</th>
    </tr>";
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
} else {
    echo "<tr><td colspan='6'>No data found.</td></tr>";
}

mysqli_close($conn);
?>