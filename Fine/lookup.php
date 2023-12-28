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
    $database   = "finepay";

    $conn = new mysqli($servername, $username, $password, $database);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $regNumber = $_POST["regNumber"];
        $output = "<table>";

        // Fetch fine-related information for the student
        $fineQuery = "SELECT DATE_FORMAT(fd.dateoffine, '%Y-%m-%d') AS FORMATTED_DATE, v.codeOfConduct, fd.fine_amount, fd.fstatus, f.fname
        FROM fine_details as fd, faculty_details as f, violation as v WHERE Regno = '$regNumber' AND fd.facultyID = f.faculty_ID AND fd.violation_id = v.violation_id ";
        $fineResult = $conn->query($fineQuery);

        if ($fineResult->num_rows > 0) {

        $output .= "<tr><td colspan='2'><strong>DATE</strong></td><td><strong>VIOLATION</strong></td>
        <td><strong>Total Fine</strong></td><td><strong>STATUS</strong></td><td><strong>STAFF</strong></td></tr>";

        while ($fineRow = $fineResult->fetch_assoc()) {
            $date = $fineRow['FORMATTED_DATE'];
            $violation = $fineRow['codeOfConduct'];
            $totalFine = $fineRow['fine_amount'];
            $status = $fineRow['fstatus'];
            $staff = $fineRow['fname'];
            $output .= "<tr><td colspan='2'>$date</td><td>$violation</td><td>$totalFine</td><td>$status</td><td>$staff</td></tr>";
        }
        } else {
        $output .= "<tr><td colspan='2'>No fine details found for this student.</td></tr>";
        }
        echo $output;
        }

    $conn->close();

    ?>
    </center>
</body>
</html>