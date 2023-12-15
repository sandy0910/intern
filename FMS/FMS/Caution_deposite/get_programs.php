<?php
// Connect to the database (You need to configure this)
$conn = mysqli_connect("localhost", "root", "", "feesportal");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Get the selected department from the AJAX request
$selectedDept = $_POST['dept_id'];

// Prepare and execute the SQL query
$query = "SELECT DISTINCT PRGM_NAME FROM U_PRGM WHERE DEPT_ID = '$selectedDept'";
$result = mysqli_query($conn, $query);

if (!$result) {
    die("Query failed: " . mysqli_error($conn));
}

// Generate the HTML options for the prgm_name dropdown
$options = "<option value=''>All Programs</option>";

while ($row = mysqli_fetch_assoc($result)) {
    $prgm_name = $row['PRGM_NAME'];
    $options .= "<option value='$prgm_name'>$prgm_name</option>";
}

// Return the generated options
echo $options;

// Close the database connection
mysqli_close($conn);
?>
