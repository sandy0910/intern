<?php
session_start();
require __DIR__ . "/vendor/autoload.php";

use Dompdf\Dompdf;
use Dompdf\Options; 

// $name = $_POST["name"];
// $quantity = $_POST["quantity"];

//$html = '<h1 style="color: green">Example</h1>';
//$html .= "Hello <em>$name</em>";
//$html .= '<img src="example.png">';
//$html .= "Quantity: $quantity";

/**
 * Set the Dompdf options
 */
$options = new Options;
$options->set("chroot",realpath(''));
$options->setIsRemoteEnabled(true);//

$dompdf = new Dompdf($options);

$html = file_get_contents("template.html");


// $dompdf->loadHtml($html);
$conn = mysqli_connect("localhost", "root", "", "feesportal");
$DATE_1 = $_SESSION["DATE_1"];
$DATE_2 = $_SESSION["DATE_2"];
$query = "SELECT u_dept.DEPT_ID, COALESCE(SUM(student_payment.amount), 0) AS total_amount FROM u_dept LEFT JOIN student_payment ON u_dept.DEPT_ID = student_payment.department AND student_payment.TIMESTAMP BETWEEN '$DATE_1' AND '$DATE_2' AND student_payment.course_name = 'Bachelor of Technology' 
WHERE u_dept.DEPT_ID IN ('IT','CS','EE','EC','EI','CE','CH','MT','ME') GROUP BY u_dept.DEPT_ID;";
$result = mysqli_query($conn, $query);
    $output = '
    <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap");

/* Set body background color */
body {
  color: white;
  background-color: #222222;
}

/* Set global font family to Poppins */
body,
h1 {
  font-family: "Poppins", sans-serif;
}

a {
  color: white;
}

#ptu {
  display: inline-block;
  vertical-align: middle;
  height: 150px;
}
.student_table{
    margin-left: 70px;
}
.student_pg1{
    margin-top: 257px;
    margin-left: 70px;
}
#title {
  display: inline-block;
  vertical-align: middle;
  margin-left: 20px;
  /* or adjust as needed */
}

h1 {
  text-align: center;
  font-size: 30px;
  font-weight: 600;
}

table {
  border-collapse: collapse;
  width: auto;
  height: auto;
  text-align: center;
  padding: 5px;
}
.btn-1 {
  display: inline-flex;
  justify-content: center; /* center the content horizontally */
  align-items: center; /* center the content vertically */
  --padding-x: 1.2em;
  border-color: transparent; /* hide button border */
}

th {
  background-color: #757575;
}

td,
th {
  border: 1px solid white;
  padding: 5px;
  width: auto;
  height: auto;
  /* padding: 8px; */
}

/* Alternate row background colors */
tr:nth-child(even) {
  background-color: #252525;
}

/* Header row styles */
thead {
  background-color: #757575;
  color: white;
}

select {
  width: auto;
  height: auto;
  background-color: #3B3B3B;
  color: white;
  padding: 10px;
  font-family: "Poppins";
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type] {
  width: auto;
  height: auto;
  background-color: #3B3B3B;
  color: white;
  padding: 10px;
  font-family: "Poppins";
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

button {
  width: auto;
  height: auto;
  background-color: #3B3B3B;
  color: white;
  padding: 10px;
  font-family: "Poppins";
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 10px;
  cursor: auto;
}

button:hover {
  background-color: #757575;
}
  </style>
  <body>
  <center>   
  <img id = "ptu" src="images/ptu-logo.jpg">
  <h1>Puducherry Technological University</h1>
  <h2>Academic Section</h2>  
  <h2>Revenue Of tuition Fees</h2>
  <br>
  <h5>Search Date :'.$DATE_1.' TO '.$DATE_2.'</h5>
  <table class="student_table">
        <tr>
        <td>PROGRAMME</td>
        <td>DEPARTMENT</td>
        <td>REVENUE</td>
        </tr>
        <tr>
            <td>
                <table>
                    <thead>
                        <tr><td>UG</td></tr>
                    </thead>
                </table>
            </td>
            <td>
                <table>
                <thead>
                <tr><td>Civil Engineering</td></tr>
                <tr><td>Chemical Engineering</td></tr>
                <tr><td>Computer Science and Engineering</td></tr>
                <tr><td>Electronics and Communication Engineering</td></tr>
                <tr><td>Electrical and Electronics Engineering</td></tr>
                <tr><td>Electronics and Instrumentation Engineering</td></tr>
                <tr><td>Information Technology</td></tr>
                <tr><td>Mechanical Engineering</td></tr>
                <tr><td>Mechatronics</td></tr>
                <tr><td>TOTAL</td></tr>
                </thead>
                </table>
            </td>
            <td>
                <table>
                    <thead>
    ';
    if ($result->num_rows > 0) {
        // Output data of each row
        while ($row = mysqli_fetch_array($result)) {
            $output .='
            <tr>
                <td>'.$row["total_amount"].'</td>
            </tr>';
        }

    }
    $query1 = "SELECT SUM(amount) FROM student_payment WHERE student_payment.course_name = 'Bachelor of Technology' AND student_payment.TIMESTAMP BETWEEN '$DATE_1' AND '$DATE_2';";
    $result1 = mysqli_query($conn, $query1);
    if ($result1->num_rows > 0) {
        // Output data of each row
        while ($row = mysqli_fetch_array($result1)) {
            $output .='
            <tr>
                <td>'.$row["SUM(amount)"].'</td>
            </tr>';
        }

    }
    $output .='</thead>
               </table>
               </td>
               </tr>
               </table>
               <table class="student_pg1">
                <tr>
                <td>PROGRAMME</td>
                <td>DEPARTMENT</td>
                <td>REVENUE</td>
                </tr>
               <tr>
               <td>
                <table>
                    <thead>
                        <tr><td>PG</td></tr>
                    </thead>
                </table>
            </td>
            <td>
                <table>
                    <thead>
                        <tr><td>Civil Engineering</td></tr>
                        <tr><td>Computer Science and Engineering</td></tr>
                        <tr><td>Electronics and Communication Engineering</td></tr>
                        <tr><td>Electrical and Electronics Engineering</td></tr>
                        <tr><td>Electronics and Instrumentation Engineering</td></tr>
                        <tr><td>Information Technology</td></tr>
                        <tr><td>MBA</td></tr>
                        <tr><td>Mechanical Engineering</td></tr>
                        <tr><td>Physics</td></tr>
                        <tr><td>TOTAL</td></tr>
                    </thead>
                </table>
            </td>
            <td>
                <table>
                  <thead>';
                  $query = "SELECT u_dept.DEPT_ID, COALESCE(SUM(student_payment.amount), 0) AS total_amount FROM u_dept LEFT JOIN student_payment ON u_dept.DEPT_ID = student_payment.department AND student_payment.TIMESTAMP BETWEEN '$DATE_1' AND '$DATE_2' AND 
              (student_payment.course_name != 'Bachelor of Technology' OR student_payment.course_name != 'BACHELOR OF TECHNOLOGY') 
              WHERE u_dept.DEPT_ID IN ('IT','CS','EE','EC','EI','CE','MB','PH','ME') GROUP BY u_dept.DEPT_ID;";
    $result = mysqli_query($conn, $query);
    if ($result->num_rows > 0) 
    {
        // Output data of each row
        while ($row = mysqli_fetch_array($result)) 
        {
        // echo "<tr><td>".$row['department']."</td>";
        $output .='
            <tr>
                <td>'.$row["total_amount"].'</td>
            </tr>';
        }
    }  
    $query1 = "SELECT SUM(amount) FROM student_payment WHERE (student_payment.course_name != 'Bachelor of Technology' AND student_payment.course_name != 'BACHELOR OF TECHNOLOGY') AND student_payment.TIMESTAMP BETWEEN '$DATE_1' AND '$DATE_2';";
    $result1 = mysqli_query($conn, $query1);
    if ($result1->num_rows > 0) {
        // Output data of each row
        while ($row = mysqli_fetch_array($result1)) {
            $output .='
            <tr>
                <td>'.$row["SUM(amount)"].'</td>
            </tr></thead></table></td></tr></table>';
        }
    }
    $dompdf->loadHtml($output);

$dompdf->setPaper("A4", "potrait");
// $html = str_replace(["{{ name }}", "{{ quantity }}"], [$name, $quantity], $html);


//$dompdf->loadHtmlFile("template.html");

/**
 * Create the PDF and set attributes
 */
$dompdf->render();

// $dompdf->addInfo("Title", "An Example PDF"); // "add_info" in earlier versions of Dompdf

/**
 * Send the PDF to the browser
 */
$dompdf->stream("invoice.pdf", ["Attachment" => 0]);
// return PDF::setOptions(['isHtml5ParserEnabled' => true, 'isRemoteEnabled' => true])->loadView('reports.invoiceSell')->stream();
/**
 * Save the PDF file locally
 */
$output = $dompdf->output();
file_put_contents("file.pdf", $output);
