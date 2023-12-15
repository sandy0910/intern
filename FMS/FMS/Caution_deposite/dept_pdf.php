<?php

require __DIR__ . "/../../FMS1/PDF/vendor/autoload.php"; 
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

$conn = mysqli_connect("localhost", "root", "", "feesportal");

  if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
  }
  $selectedDept = $_GET['dept'];
  $selectedPrgm = $_GET['prgm'];
  $sql = "SELECT * FROM no_dues, u_prgm WHERE no_dues.prgm_id = u_prgm.PRGM_ID";

if (!empty($selectedDept)) {
    $sql .= " AND u_prgm.DEPT_ID = '$selectedDept'";
}

if (!empty($selectedPrgm)) {
    $sql .= " AND u_prgm.PRGM_ID= '$selectedPrgm'";
}

$year = date("y");
$year = $year + 1;
$sql .= " AND no_dues.batch LIKE '%-$year';";
$result = mysqli_query($conn, $sql);
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
  <h2>No Due Student List</h2>
  <br>
  <table>
    <thead>
      <tr>
        <th>Reg No/th>
        <th>Name</th>
        <th>Department</th>
        <th>Programe</th>
        <th>Amount</th>
        <th>Status</th>
      </tr>
    </thead>';

    if ($result->num_rows > 0) {
      // Output data of each row
      while ($row = mysqli_fetch_array($result)) {
          $output .='
          <tr>
              <td>'.$row["REGNO"].'</td>
              <td>'.$row["student_name"].'</td>
              <td>'.$row["DEPT_ID"].'</td>
              <td>'.$row["PRGM_NAME"].'</td>
              <td>'.$row["amount"].'</td>
              <td>'.$row["status"].'</td>
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




