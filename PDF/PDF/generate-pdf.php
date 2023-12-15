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

// ob_start();
// require('template.php');
// $html =ob_get_contents();
// ob_get_clean();

// $dompdf->loadHtml($html);
// $dompdf->setPaper("A4", "potrait");
// $dompdf->render();
// $dompdf->stream("invoice.pdf", ["Attachment" => false]);
/**
 * Set the paper size and orientation
 */


/**
 * Load the HTML and replace placeholders with values from the form
 */
$html = file_get_contents("template.html");


// $dompdf->loadHtml($html);
$conn = mysqli_connect("localhost", "root", "", "feesportal");
// $pf = $_SESSION["pf"];
// $bf = $_SESSION["bf"];
$pf = "%";
$bf = "%";
$query = "SELECT student_fee_paid.REGNO,student_personal.student_name,student_personal.admitted_course,student_personal.dept_id,student_personal.batch,student_personal.current_year FROM student_fee_paid,student_personal WHERE 
            (student_fee_paid.REGNO = student_personal.Regno OR student_fee_paid.REGNO = student_personal.registration_id) AND ((student_personal.current_year = 1 AND student_fee_paid.1yr = 'NOT PAID') OR (student_personal.current_year = 2 AND 
            (student_fee_paid.1yr = 'NOT PAID' OR student_fee_paid.2yr = 'NOT PAID')) OR (student_personal.current_year = 3 AND 
            (student_fee_paid.1yr = 'NOT PAID' OR student_fee_paid.2yr = 'NOT PAID' OR student_fee_paid.3yr = 'NOT PAID')) OR (student_personal.current_year = 4 AND 
            (student_fee_paid.1yr = 'NOT PAID' OR student_fee_paid.2yr = 'NOT PAID' OR student_fee_paid.3yr = 'NOT PAID' OR student_fee_paid.4yr = 'NOT PAID'))) AND 
            student_personal.prgm_id LIKE '$pf' AND student_personal.batch LIKE '$bf'
            ORDER BY Regno;";
    
    // Execute the query and fetch the results
    $result = mysqli_query($conn, $query);
    $output = '
    <style>
    table{
      font-family: arial, sans-serif;
      border-collapse: collapse;
      width: 100%;
    }
    #ptu{
        display: inline-block;
        vertical-align: middle;
        height: 150px;
    }
      
    #title {
        display: inline-block;
        vertical-align: middle;
        margin-left: 20px;
        /* or adjust as needed */
    }

    td,th{
      border: 1px solid #dddddd;
      text-align: left;
      padding: 8px;
    }
    tr:nth-child(even){
      background-color: #dddddd;
    }
  </style>
  <body>
  <center>   
  <img id = "ptu" src="images/ptu-logo.jpg">
  <h1>Puducherry Technological University</h1>
  <h2>Academic Section</h2>  
  <h2>List Of Fees Defaulters</h2>
  <br>
  <table>
    <thead>
      <tr>
        <th>Registration Number</th>
        <th>Name</th>
        <th>Current Year</th>
        <th>Course name</th>
        <th>Department</th>
        <th>Batch</th>
      </tr>
    </thead>
    ';
    // Handle the results as needed
    if ($result->num_rows > 0) {
        // Output data of each row
        while ($row = mysqli_fetch_array($result)) {
            $output .='
            <tr>
                <td>'.$row["REGNO"].'</td>
                <td>'.$row["student_name"].'</td>
                <td>'.$row["current_year"].'</td>
                <td>'.$row["admitted_course"].'</td>
                <td>'.$row["dept_id"].'</td>
                <td>'.$row["batch"].'</td>
            </tr>';
        }

    }
    $output .='</table></center>';
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