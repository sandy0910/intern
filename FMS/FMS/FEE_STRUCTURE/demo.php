<!DOCTYPE html>
<html>
<head>
  <title>Fees Structure</title>
  <link rel="stylesheet" href="SFP-1.css">

<style>
  #insertForm {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    max-width: 80%;
    max-height: 80%;
    overflow-y: auto;
    padding: 20px;
    font-family: 'Poppins';
    border: 1px solid black;
    border-radius: 25px;
    background-color: #252525;
  }

  #insertForm h2 {
    margin-top: 0;
  }

  label,
  input {
    display: block;
    margin-bottom: 10px;
  }

  label {
    width: 300px;
  }

  #insertForm input[type="submit"]:hover,
  #insertForm input[type="button"]:hover {
    background-color: #555;
  }
</style>

</head>
<script>
    function showInsertForm() {
    document.getElementById("insertForm").style.display = "block";
}

function hideInsertForm() {
    document.getElementById("insertForm").style.display = "none";
}
</script>
<body>
    <center>
    <img id="ptu" src="../IP/images/ptu-logo.png" alt="PTU logo" onerror=this.src="../images/ptu-logo.png" height="75px">
        <h1 id="title">PUDUCHERRY TECHNOLOGICAL UNIVERSITY</h1>
        <?php
        ob_start();
$servername = "localhost";
$username   = "root";
$password   = "";
$dbname     = "feesportal";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql    = "SELECT * FROM fees_structure";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h2>FEE STRUCTURE</h2>";
    echo "<table>
            <tr>
              <th>Fee ID</th>
              <th>Batch</th>
              <th>Category</th>
              <th>Admission Type</th>
              <th>Programme</th>
              <th>Tution Fee</th>
              <th>Special Fee</th>
              <th>Library Fee</th>
              <th>Computer Charge</th>
              <th>Cultural Fee</th>
              <th>Laboratory Fee</th>
              <th>Internet Fee</th>
              <th>Student Welfare Fund</th>
              <th>Autonomous Fee</th>
              <th>Contigency Fee</th>
              <th>Sport Fee</th>
              <th>Group Insurance</th>
              <th>Total Amount</th>
            </tr>";
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["fid"] . "</td>
                <td>" . $row["batch"] . "</td>
                <td>" . $row["category"] . "</td>
                <td>" . $row["admission_type"] . "</td>
                <td>" . $row["name_of_programme"] . "</td>
                <td>" . $row["tution_fee"] . "</td>
                <td>" . $row["special_fee"] . "</td>
                <td>" . $row["library_fee"] . "</td>
                <td>" . $row["computer_charge"] . "</td>
                <td>" . $row["cultural_fee"] . "</td>
                <td>" . $row["laboratory_fee"] . "</td>
                <td>" . $row["internet_fee"] . "</td>
                <td>" . $row["student_welfare_fund"] . "</td>
                <td>" . $row["autonomous_fee"] . "</td>
                <td>" . $row["contigency_fee"] . "</td>
                <td>" . $row["sports_fee"] . "</td>
                <td>" . $row["group_insurance"] . "</td>
                <td>" . $row["amount"] . "</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}
echo "<button onclick=\"showInsertForm()\">Insert</button>";
$conn->close();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $servername = "localhost";
    $username   = "root";
    $password   = "";
    $dbname     = "feesportal";
    
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }
    
    // Get values from the form
    $batch             = $_POST['batch'];
    $category          = $_POST['category'];
    $admission_type    = $_POST['admission_type'];
    $name_of_programme = $_POST['name_of_programme'];
    $amount            = $_POST['amount'];
    $tution_fee        = $_POST['tution_fee'];
    $special_fee       = $_POST['special_fee'];
    $library_fee       = $_POST['library_fee'];
    $computer_charge   = $_POST['computer_charge'];
    $cultural_fee      = $_POST['cultural_fee'];
    $laboratory_fee    = $_POST['laboratory_fee'];
    $internet_fee      = $_POST['internet_fee'];
    $student_welfare_fund    = $_POST['student_welfare_fund'];
    $autonomous_fee          = $_POST['autonomous_fee'];
    $contigency_fee          = $_POST['contigency_fee'];
    $sports_fee              = $_POST['sports_fee'];
    $group_insurance         = $_POST['group_insurance'];
    
    // Insert values into the table
    $sql = "INSERT INTO `fees_structure` (`fid`, `batch`, `category`, `admission_type`, `name_of_programme`, `tution_fee`, `special_fee`, `library_fee`, `computer_charge`, `cultural_fee`, `laboratory_fee`, `internet_fee`, `student_welfare_fund`, `autonomous_fee`, `contigency_fee`, `sports_fee`, `group_insurance`, `amount`) VALUES
          ('', '$batch', '$category', '$admission_type', '$name_of_programme',$tution_fee,$special_fee,$library_fee,$computer_charge,$cultural_fee,$laboratory_fee,$internet_fee,$student_welfare_fund,$autonomous_fee,$contigency_fee,$sports_fee,$group_insurance,$amount)";
    
    if ($conn->query($sql) === TRUE) {
        $conn->close();  // Close the connection before redirection
        header("Location: demo.php");
        ob_end_clean();
        exit;  // Terminate script execution immediately after setting the header
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
    
    $conn->close();
}
?>
<div id="insertForm" style="display:none">
    <h2>Insert record</h2>
    <form action="demo.php" method="post">

            <label for="batch">Batch:</label>
            <input type="text" name="batch" required><br>

            <label for="category">Category:</label>
            <input type="text" name="category" required><br>
            
            <label for="admission_type">Admission Type:</label>
            <input type="text" name="admission_type" required><br>
            
            <label for="name_of_programme">Programme Name:</label>
            <input type="text" name="name_of_programme" required><br>

            <label for="batch">Tution Fee</label>
            <input type="text" name="tution_fee" required><br>

            <label for="batch">Special Fee:</label>
            <input type="text" name="special_fee" required><br>

            <label for="batch">Library Fee:</label>
            <input type="text" name="library_fee" required><br>
            
            <label for="batch">Computer Charge</label>
            <input type="text" name="computer_charge" required><br>

            <label for="batch">Cultural Fee:</label>
            <input type="text" name="cultural_fee" required><br>

            <label for="batch">Laboratory Fee:</label>
            <input type="text" name="laboratory_fee" required><br>

            <label for="batch">Internet Fee:</label>
            <input type="text" name="internet_fee" required><br>

            <label for="batch">Student Welfare Fund:</label>
            <input type="text" name="student_welfare_fund" required><br>

            <label for="batch">Autonomous Fee:</label>
            <input type="text" name="autonomous_fee" required><br>

            <label for="batch">Contigency Fee:</label>
            <input type="text" name="contigency_fee" required><br>

            <label for="batch">Sports Fee:</label>
            <input type="text" name="sports_fee" required><br>

            <label for="batch">Group Insurance:</label>
            <input type="text" name="group_insurance" required><br>

            <label for="amount">Amount:</label>
            <input type="number" step="0.01" name="amount" required><br><br>
            
            <input type="submit" value="Submit">
            <input type="button" value="Cancel" onclick="hideInsertForm()">
        </form>
    </div>
</center>
</body>
</html>