<html>
<head>
    <link rel="stylesheet" href="SFP.css">
    <style>
  body {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: auto;
    margin: 0;
  }

  label, input, select, button {
    display: inline-block;
    margin-right: 10px;
    margin-bottom: 10px;
  }

  label {
    width: 200px; /* Adjust the width as needed */
  }
</style>

</head>
<body>
    <center>
<?php
$servername = "localhost";
$username   = "root";
$password   = "";
$database   = "feesportal";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $regNumber = $_POST["regNumber"];
    
    $academicQuery  = "SELECT student_name, mode_of_admission, prgm_id, mail_id FROM student_personal WHERE Regno = '$regNumber'";
    $academicResult = $conn->query($academicQuery);
    
    if ($academicResult->num_rows > 0) {
        $academicRow   = $academicResult->fetch_assoc();
        $name          = $academicRow["student_name"];
        $admissionType = $academicRow["mode_of_admission"];
        $programId     = $academicRow["prgm_id"];
        $email         = $academicRow["mail_id"];
        
        $programQuery  = "SELECT prgm_name, dept_id FROM u_prgm WHERE prgm_id = '$programId'";
        $programResult = $conn->query($programQuery);
        
        if ($programResult->num_rows > 0) {
            $programRow = $programResult->fetch_assoc();
            $course     = $programRow["prgm_name"];
            $department = $programRow["dept_id"];
        } else {
            $course     = "Course not found";
            $department = "Department not found";
        }
        
        $personalQuery  = "SELECT quota_of_admission, mobile_number FROM student_personal WHERE Regno = '$regNumber'";
        $personalResult = $conn->query($personalQuery);
        
        if ($personalResult->num_rows > 0) {
            $personalRow  = $personalResult->fetch_assoc();
            $category     = $personalRow["quota_of_admission"];
            $mobileNumber = $personalRow["mobile_number"];
        } else {
            $category     = "Category not found";
            $mobileNumber = "Mobile number not found";
        }
        
        // $output = "<p><strong>Registration number:</strong> $regNumber</p>";
        // $output .= "<p><strong>Name:</strong> $name</p>";
        // $output .= "<p><strong>Category:</strong> $category</p>";
        // $output .= "<p><strong>Admission type:</strong> $admissionType</p>";
        // $output .= "<p><strong>Course:</strong> $course</p>";
        // $output .= "<p><strong>Department:</strong> $department</p>";
        // $output .= "<p><strong>Mobile number:</strong> $mobileNumber</p>";
        // $output .= "<p><strong>Email:</strong> $email</p>";
        // $output .= "<form class=\"f\" action=\"pay.php\" method=\"post\">";
        // $output .= "<input type=\"hidden\" name=\"regNumber\" value=\"$regNumber\"><input type=\"hidden\" name=\"name\" value=\"$name\"><input type=\"hidden\" name=\"category\" value=\"$category\"><input type=\"hidden\" name=\"admissionType\" value=\"$admissionType\"><input type=\"hidden\" name=\"course\" value=\"$course\"><input type=\"hidden\" name=\"department\" value=\"$department\"><input type=\"hidden\" name=\"mobileNumber\" value=\"$mobileNumber\"><input type=\"hidden\" name=\"email\" value=\"$email\">";
        // $output .= "<label for=\"YOS\">Pay for:</label><select id=\"YOS\" name=\"yearOfStudy\"><option value=\"1\">I year</option><option value=\"2\">II year</option><option value=\"3\">III year</option><option value=\"4\">IV year</option></select><br><button type=\"submit\">Next</button></form>";
        
        $output = "<table class=\"y\"> ";
        $output .= "<tr><td><p><strong>Registration number:</strong></td> <td> $regNumber</p></td></tr>";
        $output .= "<tr><td><p><strong>Name:</strong> </td> <td>$name</p></td></tr>";
        $output .= "<tr><td><p><strong>Category:</strong></td> <td> $category</p></td></tr>";
        $output .= "<tr><td><p><strong>Admission type:</strong> </td> <td>$admissionType</p></td></tr>";
        $output .= "<tr><td><p><strong>Course:</strong></td> <td> $course</p></td></tr>";
        $output .= "<tr><td><p><strong>Department:</strong></td> <td> $department</p></td></tr>";
        $output .= "<tr><td><p><strong>Mobile number:</strong> </td> <td>$mobileNumber</p></td></tr>";
        $output .= "<tr><td><p><strong>Email:</strong> </td> <td>$email</p></td></tr>";
        $output .= "<form class=\"f\" action=\"pay.php\" method=\"post\">";
        $output .= "<input type=\"hidden\" name=\"regNumber\" value=\"$regNumber\"><input type=\"hidden\" name=\"name\" value=\"$name\"><input type=\"hidden\" name=\"category\" value=\"$category\"><input type=\"hidden\" name=\"admissionType\" value=\"$admissionType\"><input type=\"hidden\" name=\"course\" value=\"$course\"><input type=\"hidden\" name=\"department\" value=\"$department\"><input type=\"hidden\" name=\"mobileNumber\" value=\"$mobileNumber\"><input type=\"hidden\" name=\"email\" value=\"$email\">";
        $output .= "<tr><td><label for=\"YOS\">Pay for:</td> <td></label><select id=\"YOS\" name=\"yearOfStudy\"><option value=\"1\">I year</option><option value=\"2\">II year</option><option value=\"3\">III year</option><option value=\"4\">IV year</option></select><br></td></tr></table><button type=\"submit\">Next</button></form>";
        // $output .= "</table>";
        echo $output;
    } else {
        // Student details not found, display input form as before
        echo '<form class=\"f\" action="pay.php" method="post">';
        echo '<label for="regNumber">Registration Number:</label>';
        echo '<input type="text" id="regNumber" name="regNumber" value="' . $regNumber . '" readonly><br>';
        echo '<label for="name">Name:</label>';
        echo '<input type="text" id="name" name="name" required><br>';
        echo '<label for="category">Category:</label>';
        echo '<input type="text" id="category" name="category" required><br>';
        echo '<label for="admissionType">Admission Type:</label>';
        echo '<input type="text" id="admissionType" name="admissionType" required><br>';
        echo '<label for="course">Course:</label>';
        echo '<input type="text" id="course" name="course" required><br>';
        echo '<label for="department">Department:</label>';
        echo '<input type="text" id="department" name="department" required><br>';
        echo '<label for="mobileNumber">Mobile Number:</label>';
        echo '<input type="text" id="mobileNumber" name="mobileNumber" required><br>';
        echo '<label for="email">Email:</label>';
        echo '<input type="email" id="email" name="email" required><br>';
        echo '<label for="YOS">Pay for:</label>';
        echo '<select id="YOS" name="yearOfStudy">';
        echo '<option value="1">I year</option>';
        echo '<option value="2">II year</option>';
        echo '<option value="3">III year</option>';
        echo '<option value="4">IV year</option>';
        echo '</select><br>';
        echo '<button type="submit">Next</button>';
        echo '</form>';
    }
}

$conn->close();

?>
</center>
</body>
</html>