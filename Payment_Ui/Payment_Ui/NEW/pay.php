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
    $feesQuery  = "SELECT amount FROM fees_structure WHERE batch = '$batch' AND category = '$category' AND admission_type = '$admissionType' AND name_of_programme = '$course'";
    $feesResult = $conn->query($feesQuery);
    
    if ($feesResult->num_rows > 0) {
        $feesRow = $feesResult->fetch_assoc();
        $amount  = $feesRow["amount"];
        echo "<strong>Pay:</strong> $amount<br>"; // Display this text as the payment option
        
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
        echo "<strong>Fine Amount:</strong> $Fine<br>";
        $total = $amount + $Fine;
        
        echo "<strong>Total Amount:</strong> $total<br>";
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