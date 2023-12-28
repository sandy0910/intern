<html>
<head>
  <title>Student Fee Payment</title>
  <link rel="stylesheet" href="../IP/SFP.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.sheetjs.com/xlsx-0.19.3/package/dist/xlsx.full.min.js"></script>
</head>
<?php
if(isset($_POST['stu_regno']))
{
    $conn = mysqli_connect("localhost", "root", "", "feesportal");
    $Regno = $_POST['stud_id'];
}
?>
<body>
  <center>
    <img id="ptu" src="../IP/images/ptu-logo.png" alt="PTU logo" onerror=this.src="../images/ptu-logo.png" height="150px">
    <h1 id="title">PUDUCHERRY TECHNOLOGICAL UNIVERSITY</h1>
    <h1>FEE MONITORING SYSTEM</h1>
    <br>
    <img id="ptu" src="../IP/images/<?php echo $Regno ?>.png" alt="STUDENT IMAGE" height="125px">
    <br>
    <?php
    $query="SELECT student_name,prgm_id,quota_of_admission,mode_of_admission,admitted_course,batch FROM student_personal WHERE student_personal.Regno = '$Regno'";
    $result = mysqli_query($conn, $query);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $name = $row['student_name'];
            $prgm_id = $row['prgm_id'];
            $category = $row['quota_of_admission'];
            $mode = $row['mode_of_admission'];
            $batch = $row['batch'];    
            $course = $row['admitted_course'];
        }
    }
    if ($mode != "JOSAA") {
      $category = "ALL";
    }
    else{
      if(($category != 'SC') && ($category != 'ST')){
          $category = "ALL";
      }
    }
    
    $query="SELECT amount FROM fees_structure WHERE category = '$category' AND batch = '$batch' AND admission_type = '$mode' AND name_of_programme = '$course'";
    $result = mysqli_query($conn, $query);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $due = $row['amount'];
        }
    }
    echo "<h3>" .$name. "</h3>";
    echo "<br>";
// if($prgm_id < 10){}
    ?>
 <h3>AMOUNT PAID</h3>
    <table id="student_table">
        <tr>
            <td>
                <table>
                    <thead>
                        <tr><td>STUDY YEAR</td></tr>
                        <tr><td>1'ST YEAR</td></tr>
                        <tr><td>2'ND YEAR</td></tr>
                        <tr><td>3'TH YEAR</td></tr>
                        <tr><td>4'TH YEAR</td></tr>
                    </thead>
                </table>
            </td>
            <td>
                <table>
                    <thead>
                        <tr><td>PAID STATUS</td></tr>
                    <!-- </thead>
                </table>
            </td>
        </tr> -->
<?php
        $query="SELECT * FROM student_fee_paid WHERE REGNO = '$Regno'";
        $result = mysqli_query($conn, $query);
        if ($result->num_rows > 0) {
          while ($row = $result->fetch_assoc()) 
          {
            echo "<tr>","<td>".$row['1yr']."</td>","</tr>";
            echo "<tr>","<td>".$row['2yr']."</td>","</tr>";
            echo "<tr>","<td>".$row['3yr']."</td>","</tr>";
            echo "<tr>","<td>".$row['4yr']."</td>","</tr>";
          }
          echo "</thead>","</table>","</td>";
?>
          <td>
                <table>
                    <thead>
                        <tr><td>PENDING FEES</td></tr>
<?php
echo "<tr>","<td>0</td>","</tr>";
$query="SELECT * FROM student_fee_paid WHERE REGNO = '$Regno'";
$result = mysqli_query($conn, $query);
if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) 
  {
    $yr2 = $row['2yr'];
    $yr3 = $row['3yr'];
    $yr4 = $row['4yr'];
  }
  if($yr4 == 'PAID')
  {
    echo "<tr><td>0</td></tr>";
    echo "<tr><td>0</td></tr>";
    echo "<tr><td>0</td></tr>";
  }
  elseif($yr3 == 'PAID')
  {
    echo "<tr><td>0</td></tr>";
    echo "<tr><td>0</td></tr>";
    echo "<tr><td>".$due."</td></tr>";
  }
  elseif($yr2 == 'PAID')
  { 
    if($yr3 == '-')
    {
        echo "<tr><td>0</td></tr>";
        echo "<tr><td>-</td></tr>";     
        echo "<tr><td>-</td></tr>";
    }
    else
    {
     echo "<tr><td>0</td></tr>";
     echo "<tr><td>".$due."</td></tr>";
     echo "<tr><td>".$due."</td></tr>";
    }
  }
  elseif($yr2 == 'NOT PAID')
  {
    if($yr3 == '-')
    {
        echo "<tr><td>".$due."</td></tr>";
        echo "<tr><td>-</td></tr>";     
        echo "<tr><td>-</td></tr>";
    }
    else
    {
        echo "<tr><td>".$due."</td></tr>";
     echo "<tr><td>".$due."</td></tr>";
     echo "<tr><td>".$due."</td></tr>";
    }   
  }
  
echo "</thead>","</table>","</td>","</table>";   
?>                     
<br>
          <table id="student_table">
            <thead>
                <tr>
                    <th>PAYMENT METHOD</th>
                    <th>MOBILE NO</th>
                    <th>TRANCTION ID</th>
                    <th>TIME</th>
                    <th>AMOUNT</th>
                </tr>
            </thead>
<?php
$query="SELECT student_payment.payment_method,student_payment.mobile_no,student_payment.transaction_id,student_payment.TIMESTAMP,student_payment.amount FROM student_payment WHERE student_payment.REGNO = '$Regno';";
$result = mysqli_query($conn, $query);
if ($result->num_rows > 0) 
{
while ($row = $result->fetch_assoc()) 
{
    echo "<tr>";
    echo "<td>".$row['payment_method'];
    echo "<td>".$row['mobile_no'];
    echo "<td>".$row['transaction_id'];
    echo "<td>".$row['TIMESTAMP'];
    echo "<td>".$row['amount'];
    echo "</tr>";

}
echo "</table>";
}
}      
}

    
?>
  </center>  
</body>
</html>  