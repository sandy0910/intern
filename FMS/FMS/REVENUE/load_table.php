<?php
// Connect to the database
$conn = mysqli_connect("localhost", "root", "", "feesportal");
session_start();
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if (isset($_POST['FROM_DATE'])) {
    $DATE_1 = $_POST['FROM_DATE'];
}
if (isset($_POST['TO_DATE'])) {
    $DATE_2 = $_POST['TO_DATE'];
    
    // Use the $bf variable in your query or other logic
}
    // Use the $programFilter variable in your query or other logic
    $query = "SELECT u_dept.DEPT_ID, COALESCE(SUM(student_payment.amount), 0) AS total_amount FROM u_dept LEFT JOIN student_payment ON u_dept.DEPT_ID = student_payment.department AND student_payment.TIMESTAMP BETWEEN '$DATE_1' AND '$DATE_2' AND student_payment.course_name = 'Bachelor of Technology' 
    WHERE u_dept.DEPT_ID IN ('IT','CS','EE','EC','EI','CE','CH','MT','ME') GROUP BY u_dept.DEPT_ID";
    // Execute the query and fetch the results
    $result = mysqli_query($conn, $query);
    
    // Handle the results as needed
    if ($result->num_rows > 0) {
        // Output data of each row
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>".$row['total_amount']."</td>";
            echo "</tr>";
            
        }
    } else {
        echo "<tr><td colspan='7'>No data available</td></tr>";
    }

$conn->close();
?>