<html>
<head>
    <link rel="stylesheet" href="SFP.css">
    <style>
        /* Add CSS styles for label and input alignment */
        label {
            display: inline-block;
            width: 175px; /* Adjust the width as needed */
            text-align: right;
            margin-right: 10px; /* Add some spacing between label and input */
        }

        input, select {
            width: 200px; /* Adjust the width as needed */
            margin-bottom: 10px; /* Add vertical spacing between inputs */
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
        
        $output = "<table>";
        $output .= "<tr><th>Field</th><th>Value</th></tr>";
        $output .= "<tr><td>Registration number:</td><td>$regNumber</td></tr>";
        $output .= "<tr><td>Name:</td><td>$name</td></tr>";
        $output .= "<tr><td>Category:</td><td>$category</td></tr>";
        $output .= "<tr><td>Admission type:</td><td>$admissionType</td></tr>";
        $output .= "<tr><td>Course:</td><td>$course</td></tr>";
        $output .= "<tr><td>Department:</td><td>$department</td></tr>";
        $output .= "<tr><td>Mobile number:</td><td>$mobileNumber</td></tr>";
        $output .= "<tr><td>Email:</td><td>$email</td></tr>";
        $output .= "</table>";
        $output .= "<form class=\"f\" action=\"pay.php\" method=\"post\">";
        $output .= "<input type=\"hidden\" name=\"regNumber\" value=\"$regNumber\"><input type=\"hidden\" name=\"name\" value=\"$name\"><input type=\"hidden\" name=\"category\" value=\"$category\"><input type=\"hidden\" name=\"admissionType\" value=\"$admissionType\"><input type=\"hidden\" name=\"course\" value=\"$course\"><input type=\"hidden\" name=\"department\" value=\"$department\"><input type=\"hidden\" name=\"mobileNumber\" value=\"$mobileNumber\"><input type=\"hidden\" name=\"email\" value=\"$email\">";
        $output .= "<label for=\"YOS\">Pay for:</label><select id=\"YOS\" name=\"yearOfStudy\"><option value=\"1\">I year</option><option value=\"2\">II year</option><option value=\"3\">III year</option><option value=\"4\">IV year</option></select><br><button type=\"submit\">Next</button></form>";
        
        echo $output;
    } else {
        // Fetch data for Category from the 'quota_of_admission' column in the 'student_personal' table
        $categoryQuery  = "SELECT DISTINCT quota_of_admission FROM student_personal";
        $categoryResult = $conn->query($categoryQuery);
        
        // Fetch data for Admission type from the 'mode_of_admission' column in the 'student_personal' table
        $admissionTypeQuery  = "SELECT DISTINCT mode_of_admission FROM student_personal";
        $admissionTypeResult = $conn->query($admissionTypeQuery);
        
        // Fetch data for Course from the 'admitted_course' column in the 'student_personal' table
        $courseQuery  = "SELECT DISTINCT prgm_name FROM u_prgm";
        $courseResult = $conn->query($courseQuery);
        
        // Fetch data for Department from the 'dept_name' column in the 'u_dept' table
        $departmentQuery  = "SELECT DISTINCT dept_name FROM u_dept";
        $departmentResult = $conn->query($departmentQuery);
        
        // Student details not found, display input form as before
        echo '<form class=\"f\" action="pay.php" method="post">';
        echo '<label for="regNumber">Registration Number:</label>';
        echo '<input type="text" id="regNumber" name="regNumber" value="' . $regNumber . '" readonly><br>';
        echo '<label for="name">Name:</label>';
        echo '<input type="text" id="name" name="name" required><br>';
        // Create a dropdown for Category
        echo '<label for="category">Category:</label>';
        echo '<select id="category" name="category" required>';
        while ($row = $categoryResult->fetch_assoc()) {
            echo '<option value="' . $row['quota_of_admission'] . '">' . $row['quota_of_admission'] . '</option>';
        }
        echo '</select><br>';
        
        // Create a dropdown for Admission type
        echo '<label for="admissionType">Admission Type:</label>';
        echo '<select id="admissionType" name="admissionType" required>';
        while ($row = $admissionTypeResult->fetch_assoc()) {
            echo '<option value="' . $row['mode_of_admission'] . '">' . $row['mode_of_admission'] . '</option>';
        }
        echo '</select><br>';
        
        // Create a dropdown for Course
        echo '<label for="course">Course:</label>';
        echo '<select id="course" name="course" required>';
        while ($row = $courseResult->fetch_assoc()) {
            echo '<option value="' . $row['prgm_name'] . '">' . $row['prgm_name'] . '</option>';
        }
        echo '</select><br>';
        
        // Create a dropdown for Department
        echo '<label for="department">Department:</label>';
        echo '<select id="department" name="department" required>';
        while ($row = $departmentResult->fetch_assoc()) {
            echo '<option value="' . $row['dept_name'] . '">' . $row['dept_name'] . '</option>';
        }
        echo '</select><br>';
        
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