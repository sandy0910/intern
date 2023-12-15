<!DOCTYPE html>
<html>
<head>
    <title>Payment Page</title>
    <link rel="stylesheet" href="SFP.css">
</head>
<body>
    <center>
        <h1>Payment Information</h1><br>
        <?php
$regNumber     = isset($_POST['regNumber']) ? $_POST['regNumber'] : '';
$name          = isset($_POST['name']) ? $_POST['name'] : '';
$category      = isset($_POST['category']) ? $_POST['category'] : '';
$admissionType = isset($_POST['admissionType']) ? $_POST['admissionType'] : '';
$course        = isset($_POST['course']) ? $_POST['course'] : '';
$department    = isset($_POST['department']) ? $_POST['department'] : '';
$mobileNumber  = isset($_POST['mobileNumber']) ? $_POST['mobileNumber'] : '';
$email         = isset($_POST['email']) ? $_POST['email'] : '';
$yearOfStudy   = isset($_POST['yearOfStudy']) ? $_POST['yearOfStudy'] : '';

date_default_timezone_set('Europe/London');
// Change category to "ALL" if not "SC" or "ST"
if (($category === "SC" || $category === "ST") && $admissionType === "CENTAC") {
    $category = "ALL";
} elseif ($category != "SC" && $category != "ST" && $admissionType != "CENTAC") {
    $category = "ALL";
} elseif ($category != "SC" && $category != "ST" && $admissionType === "CENTAC") {
    $category = "ALL";
}

// Database connection
$servername = "localhost";
$username   = "root";
$password   = "";
$database   = "feesportal";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if the registration number exists in student_personal table
$existQuery  = "SELECT COUNT(*) AS count FROM student_personal WHERE Regno = '$regNumber'";
$existResult = $conn->query($existQuery);
$existRow    = $existResult->fetch_assoc();
$recordCount = $existRow["count"];

if ($recordCount > 0) {
    // Fetch batch from student_academic table
    $batchQuery  = "SELECT batch FROM student_academic WHERE Regno = '$regNumber'";
    $batchResult = $conn->query($batchQuery);
    
    if ($batchResult->num_rows > 0) {
        $batchRow = $batchResult->fetch_assoc();
        $batch    = $batchRow["batch"];
    } else {
        $batch = "Batch not found";
    }
    
    // Fetch amount from fees_structure table based on matching values
    $feesQuery  = "SELECT * FROM fees_structure WHERE batch = '$batch' AND category = '$category' AND admission_type = '$admissionType' AND name_of_programme = '$course'";
    $feesResult = $conn->query($feesQuery);
    
    if ($feesResult->num_rows > 0) {
        $feesRow = $feesResult->fetch_assoc();
        $amount  = $feesRow["amount"];
        $tution_fee = $feesRow["tution_fee"];
        $special_fee = $feesRow["special_fee"];
        $library_fee = $feesRow["library_fee"];
        $computer_charge = $feesRow["computer_charge"];
        $cultural_fee = $feesRow["cultural_fee"];
        $laboratory_fee = $feesRow["laboratory_fee"];
        $internet_fee = $feesRow["internet_fee"];
        $student_welfare_fund = $feesRow["student_welfare_fund"];
        $autonomous_fee = $feesRow["autonomous_fee"];
        $contigency_fee = $feesRow["contigency_fee"];
        $sports_fee = $feesRow["sports_fee"];
        $group_insurance = $feesRow["group_insurance"];

         // Display this text as the payment option
         $output = "<table>";
         $output .= "<tr><th>Break Down</th><th>Amount</th></tr>";
         $output .= "<tr><td>Tution Fee:</td><td>$tution_fee</td></tr>";
         $output .= "<tr><td>Special Fee:</td><td>$special_fee</td></tr>";
         $output .= "<tr><td>Library Fee:</td><td>$library_fee</td></tr>";
         $output .= "<tr><td>Computer Charge:</td><td>$computer_charge</td></tr>";
         $output .= "<tr><td>Cultural Fee:</td><td>$cultural_fee</td></tr>";
         $output .= "<tr><td>Laboratory Fee:</td><td>$laboratory_fee</td></tr>";
         $output .= "<tr><td>Internet Fee:</td><td>$internet_fee</td></tr>";
         $output .= "<tr><td>Student Welfare fund:</td><td>$student_welfare_fund</td></tr>";
         $output .= "<tr><td>Autonomous Fee:</td><td>$autonomous_fee</td></tr>";
         $output .= "<tr><td>Contigency Fee:</td><td>$contigency_fee</td></tr>";
         $output .= "<tr><td>Sports Fee:</td><td> $sports_fee</td></tr>";
         $output .= "<tr><td>Group Insurance:</td><td>$group_insurance</td></tr>";
         $output .= "<tr><td>Total Academic Fees:</td><td>$amount</td></tr>";
         
        // echo "<strong>Tution Fee:</strong> $tution_fee<br>";
        // echo "<strong>Special Fee:</strong> $special_fee<br>";
        // echo "<strong>Library Fee:</strong> $library_fee<br>";
        // echo "<strong>Computer Charge:</strong> $computer_charge<br>";
        // echo "<strong>Cultural Fee:</strong> $cultural_fee<br>";
        // echo "<strong>Laboratory Fee:</strong> $laboratory_fee<br>";
        // echo "<strong>Internet Fee:</strong> $internet_fee<br>";
        // echo "<strong>Student Welfare fund:</strong> $student_welfare_fund<br>";
        // echo "<strong>Autonomous Fee:</strong> $autonomous_fee<br>";
        // echo "<strong>Contigency Fee:</strong> $contigency_fee<br>";
        // echo "<strong>Sports Fee:</strong> $sports_fee<br>";
        // echo "<strong>Group Insurance:</strong> $group_insurance<br>";
        // echo "<strong>Total Academic Fees:</strong> $amount<br>";
        
        $feesQuery  = "SELECT dead_line FROM send_mail WHERE mail_for = '2'";
        $feesResult = $conn->query($feesQuery);
        
        if ($feesResult->num_rows > 0) {
            $feesRow   = $feesResult->fetch_assoc();
            $dead_line = $feesRow["dead_line"];
        }
        $curr_date  = new DateTime();
        $curr_date1 = new DateTime($dead_line);
        if ($curr_date > $curr_date1) {
            $difference = $curr_date1->diff($curr_date);
            $count_days = $difference->d;
            $Fine       = 100 * $count_days;
        }
        // echo "<strong>Fine Amount:</strong> $Fine<br>";
        $output .= "<tr><td>Fine Amount:</td><td>$Fine</td></tr>";
        $total = $amount + $Fine;
        
        // echo "<strong>Total Amount To Pay:</strong> $total<br>";
        $output .= "<tr><td>Total Amount To Pay:</td><td>$total</td></tr>";
        $output .= "</table>"; 
        echo $output;
        echo '<br>';
        echo '<form action="process_payment.php" method="post">';
        echo '<button type="submit">Proceed to Payment</button>';
        echo '</form>';
        
        
    } else {
        echo "<strong>Payment information not found</strong>";
    }
} else {
    // Registration number not found, display an input field for custom payment amount
    echo '<form action="process_payment.php" method="post">';
    echo '<label for="customAmount">Enter Amount to Pay: </label>';
    echo '<input type="number" id="customAmount" name="customAmount" required><br>';
    echo '<button type="submit">Proceed to Payment</button>';
    echo '</form>';
}

// Close database connection
$conn->close();
?>
  </center>
</body>
</html>