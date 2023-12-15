<?php
// Assuming you have a form that submits to this page
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $servername = "localhost";  // Replace with your database server name
    $username = "root";     // Replace with your database username
    $password = "";     // Replace with your database password
    $dbname = "feesportal";     // Replace with your database name
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get values from the form
    $sendEmailOn = $_POST["sendEmailOn"];
    $deadline = $_POST["deadline"];
    $Mail_For = $_POST["Mail-for"];

    // SQL query to insert data into the table
    $sql = "UPDATE send_mail SET send_mail_on = '$sendEmailOn',dead_line = '$deadline' WHERE mail_for = '$Mail_For'";

    if ($conn->query($sql) === TRUE) {
        ;
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Date Input Page</title>
    <link rel="stylesheet" href="SFP-1.css">
</head>
<body>
    <center>
    <img id="ptu" src="../IP/images/ptu-logo.png" alt="PTU logo" onerror=this.src="../images/ptu-logo.png" height="150px">
    <h1 id="title">PUDUCHERRY TECHNOLOGICAL UNIVERSITY</h1>
    <br><br><br>
    <table>
    <form method="post" action="">
        <tr>
       <td> Send email on:</td> <td><input type="date" name="sendEmailOn"><br></td></tr>
       <tr><td> Deadline:</td>  <td><input type="date" name="deadline"><br></td></tr>
       <tr><td> Mail For :</td> <td><select name="Mail-for">
            <option value="1">Reminder Of Fees</option>
            <option value="2">Fine Imposing</option>
        </select>
        </td> </tr>
        <br>
        </table>
        <br>
        <input type="submit" value="Submit">
    </form>

    
    </center>
</body>
</html>
