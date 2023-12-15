<html>
    <head>
        <link rel="stylesheet" href="../IP/SFP.css">
        <title>Student Personal Information</title>
    </head>
    <body>
    <center>
    <img id="ptu" src="../IP/images/ptu-logo.png" alt="PTU logo" onerror=this.src="../images/ptu-logo.png" height="150px">
      <h1 id="title">PUDUCHERRY TECHNOLOGICAL UNIVERSITY</h1>
    <h2>Student Personal Information</h2>
        <table class="courses">
            <tr>
                <th>Admission Number</th>
                <th>Name</th>
                <th>State</th>
                <th>Quota of Admission</th>
                <th>Mode of Admission</th>
                <th>Mobile Number</th>
                <th>Email</th>
                <th>Father's Name</th>
                <th>Father's Mobile Number</th>
                <th>Alternate Number</th>
                <th>Father's Email</th>
        </tr>
            <?php
// Connect to the database
$conn = mysqli_connect("localhost", "root", "", "feesportal");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the Regno value from the query parameter
$regno = $_GET['Regno'];

// Retrieve the matching row from student_personal table
$sql    = "SELECT * FROM student_personal WHERE Regno = '$regno'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output the row data
    while ($row = $result->fetch_assoc()) {
        // Output the row data as desired
        $name = $row['student_name'];
        $category = $row['quota_of_admission'];
        $mode = $row['mode_of_admission'];
        $course = $row['admitted_course'];
        $dept = $row['dept_id'];
        $email = $row['mail_id'];
        $batch = $row['batch'];


        echo "<tr>";
        echo "<td>" . $row["registration_id"] . "</td>";
        echo "<td>" . $row["student_name"] . "</td>";
        echo "<td>" . $row["state"] . "</td>";
        echo "<td>" . $row["quota_of_admission"] . "</td>";
        echo "<td>" . $row["mode_of_admission"] . "</td>";
        echo "<td>" . $row["mobile_number"] . "</td>";
        echo "<td>" . $row["mail_id"] . "</td>";
        echo "<td>" . $row["father_name"] . "</td>";
        echo "<td>" . $row["father_mobile_number"] . "</td>";
        echo "<td>" . $row["alternate_number"] . "</td>";
        echo "<td>" . $row["father_mail_id"] . "</td>";
        // Add more fields as needed
        echo "</tr>";
    }
} else {
    echo "No data available";
}
echo "</table>";
//end of table
if ($mode != "JOSAA") {
    $category = "ALL";
}
else{
    if(($category != 'SC') && ($category != 'ST')){
        $category = "ALL";
    }
}
$query="SELECT amount FROM fees_structure WHERE category = '$category' AND batch = '$batch' AND admission_type = '$mode' AND name_of_programme = '$course'";
$result = mysqli_query($conn, $query);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $due = $row['amount'];
    }
}
// echo "<h3>" .$name. "</h3>";
echo "<br>";
// if($prgm_id < 10){}
?>
<h3>AMOUNT PAID</h3>
<table id="student_table">
    <tr>
        <td>
            <table>
                <thead>
                    <tr><td>STUDY YEAR</td></tr>
                    <tr><td>1'ST YEAR</td></tr>
                    <tr><td>2'ND YEAR</td></tr>
                    <tr><td>3'TH YEAR</td></tr>
                    <tr><td>4'TH YEAR</td></tr>
                </thead>
            </table>
        </td>
        <td>
            <table>
                <thead>
                    <tr><td>PAID STATUS</td></tr>
                <!-- </thead>
            </table>
        </td>
    </tr> -->
    <!-- Master of Business Administration -->
<?php
    $query="SELECT * FROM student_fee_paid WHERE REGNO = '$regno'";
    $result = mysqli_query($conn, $query);
    if ($result->num_rows > 0) {
      while ($row = $result->fetch_assoc()) 
      {
        echo "<tr>","<td>".$row['1yr']."</td>","</tr>";
        echo "<tr>","<td>".$row['2yr']."</td>","</tr>";
        echo "<tr>","<td>".$row['3yr']."</td>","</tr>";
        echo "<tr>","<td>".$row['4yr']."</td>","</tr>";
      }
      echo "</thead>","</table>","</td>";
?>
      <td>
            <table>
                <thead>
                    <tr><td>PENDING FEES</td></tr>
<?php
echo "<tr>","<td>0</td>","</tr>";
$query="SELECT * FROM student_fee_paid WHERE REGNO = '$regno'";
$result = mysqli_query($conn, $query);
if ($result->num_rows > 0) {
while ($row = $result->fetch_assoc()) 
{
$yr2 = $row['2yr'];
$yr3 = $row['3yr'];
$yr4 = $row['4yr'];
$excess = $row['EXCESS'];
}
if($yr4 == 'PAID')
{
echo "<tr><td>0</td></tr>";
echo "<tr><td>0</td></tr>";
echo "<tr><td>0</td></tr>";
}
elseif($yr3 == 'PAID')
{
echo "<tr><td>0</td></tr>";
echo "<tr><td>0</td></tr>";
echo "<tr><td>".$due - $excess."</td></tr>";
}
elseif($yr2 == 'PAID')
{ 
if($yr3 == '-')
{
    echo "<tr><td>0</td></tr>";
    echo "<tr><td>-</td></tr>";     
    echo "<tr><td>-</td></tr>";
}
else
{
 echo "<tr><td>0</td></tr>";
 echo "<tr><td>".$due - $excess."</td></tr>";
 echo "<tr><td>".$due."</td></tr>";
}
}
elseif($yr2 == 'NOT PAID')
{
if($yr3 == '-')
{
    echo "<tr><td>".$due - $excess."</td></tr>";
    echo "<tr><td>-</td></tr>";     
    echo "<tr><td>-</td></tr>";
}
else
{
    echo "<tr><td>".$due - $excess."</td></tr>";
 echo "<tr><td>".$due."</td></tr>";
 echo "<tr><td>".$due."</td></tr>";
}   
}

echo "</thead>","</table>","</td>","</table>";

}
}

// Close the database connection
$conn->close();

?>
<h2>Transaction History</h2>
<table>
    <tr>
        <th>Registration Number</th>
        <th>Category</th>
        <th>Course</th>
        <th>Department</th>
        <th>Mobile Number</th>
        <th>Payment Method</th>
        <th>Transaction ID</th>
        <th>Timestamp</th>
        <th>Amount paid</th>
    </tr>
    <?php
// Connect to the database
$conn = mysqli_connect("localhost", "root", "", "feesportal");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the Regno value from the query parameter
$regno = $_GET['Regno'];

// Retrieve the matching row from student_payment table
$sql    = "SELECT * FROM student_payment WHERE REGNO = '$regno'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output the row data
    while ($row = $result->fetch_assoc()) {
        // Output the row data as desired
        echo "<tr>";
        echo "<td>" . $row["REGNO"] . "</td>";
        echo "<td>" . $row["category"] . "</td>";
        echo "<td>" . $row["course_name"] . "</td>";
        echo "<td>" . $row["department"] . "</td>";
        echo "<td>" . $row["mobile_no"] . "</td>";
        echo "<td>" . $row["payment_method"] . "</td>";
        echo "<td>" . $row["transaction_id"] . "</td>";
        echo "<td>" . $row["TIMESTAMP"] . "</td>";
        echo "<td>" . $row["amount"] . "</td>";
        // Add more fields as needed
        echo "</tr>";
    }
} else {
    echo "No data available";
}

// Close the database connection
$conn->close();
?>
</table>
</body>
</center>
</html>