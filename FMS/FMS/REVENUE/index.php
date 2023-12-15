<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <link rel="stylesheet" href="SFP.css">
</head>
<script>
//   $(document).ready(function() {
//   // Define variables to store the selected filter values
//   var selectedOption = $('input[name="FROM_DATE"]:checked').val();
//   var selectedOption1 = $('input[name="TO_DATE"]').val();

//   // Function to filter table rows based on search input

//   function loadTableData() {
//     $.ajax({
//       type: 'POST',
//       url: 'load_table.php',
//       data: {
//         FROM_DATE: selectedOption,
//         TO_DATE: selectedOption1
//       },
//       success: function(data) {
//         $('#student_table1 tbody').html(data);
//       }
//     });
//   }

//   $('input[name="TO_DATE"]').on("change", function() {
//     selectedOption = $(this).val();
//     loadTableData();
//   });

//   $('input[name="FROM_DATE"]').on("change", function() {
//     selectedOption1 = $(this).val();
//     loadTableData();
//   });
//   // Load table data with the default selected filter values on page load
//   loadTableData();
// });


  </script>
<body>
<center>   
  <img id = "ptu" src="../IP/images/ptu-logo.png" height = "150px">
  <h1>Puducherry Technological University</h1>
  <h2>Academic Section</h2>  
  <!-- <h2>List Of Fees Defaulters</h2> -->
  <form method="post" action="">
    <table>
        <tr><td><label for="">FROM DATE</label></td>
        <td><input type="date" name="FROM_DATE"></tr></td>
        <tr><td><label for="">TO DATE</label> </td>
        <td><input type="date" name="TO_DATE"> </tr></td>
        </table>
        <br>
        <input type="submit" value="ENTER" name = "submit">
  </form>
  
  <br>
  <table id="student_table">
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
                <table id = "student_table1">
                  <thead>
<?php
if (isset($_POST['submit']))
{
$DATE_1 = $_POST['FROM_DATE'];
$DATE_2 = $_POST['TO_DATE'];
$_SESSION['DATE_1'] = $DATE_1;
$_SESSION['DATE_2'] = $DATE_2;
$conn = mysqli_connect("localhost", "root", "", "feesportal");
$query = "SELECT u_dept.DEPT_ID, COALESCE(SUM(student_payment.amount), 0) AS total_amount FROM u_dept LEFT JOIN student_payment ON u_dept.DEPT_ID = student_payment.department AND student_payment.TIMESTAMP BETWEEN '$DATE_1' AND '$DATE_2' AND student_payment.course_name = 'Bachelor of Technology' 
WHERE u_dept.DEPT_ID IN ('IT','CS','EE','EC','EI','CE','CH','MT','ME') GROUP BY u_dept.DEPT_ID;";
$result = mysqli_query($conn, $query);
if ($result->num_rows > 0) {
    // Output data of each row
    while ($row = mysqli_fetch_array($result)) {
    // echo "<tr><td>".$row['department']."</td>";
    echo "<tr><td>".$row['total_amount']."</td></tr>";

}
}
$query1 = "SELECT SUM(amount) FROM student_payment WHERE student_payment.course_name = 'Bachelor of Technology' AND student_payment.TIMESTAMP BETWEEN '$DATE_1' AND '$DATE_2';";
    $result1 = mysqli_query($conn, $query1);
    if ($result1->num_rows > 0) {
        // Output data of each row
        while ($row = mysqli_fetch_array($result1)) {
            echo "<tr><td>".$row['SUM(amount)']."</td></tr>";
        }
        echo "</thead></table></td></tr>";
    }
    ?>
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
                <table id = "student_table1">
                  <thead>
    <?php
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
        echo "<tr><td>".$row['total_amount']."</td></tr>";
    
        }
    }  
    $query1 = "SELECT SUM(amount) FROM student_payment WHERE (student_payment.course_name != 'Bachelor of Technology' AND student_payment.course_name != 'BACHELOR OF TECHNOLOGY') AND student_payment.TIMESTAMP BETWEEN '$DATE_1' AND '$DATE_2';";
    $result1 = mysqli_query($conn, $query1);
    if ($result1->num_rows > 0) {
        // Output data of each row
        while ($row = mysqli_fetch_array($result1)) {
            echo "<tr><td>".$row['SUM(amount)']."</td></tr>";
        }
        echo "</thead></table></td></tr>";
    }
    ?>
    </table>
<br>
  <form method="post" action="../../FMS1/PDF/gener_pdf.php">
        <input type="submit" value="PDF" name = "PDF">
  </form>
  <?php
}
?> 

</center>
</body>
</html>



<!-- INSERT INTO `student_payment` (`REGNO`, `name`, `category`, `mode_of_admission`, `course_name`, `department`, `mobile_no`, `email`, `payment_method`, `transaction_id`, `TIMESTAMP`, `amount`) VALUES 
('20CS1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'CS', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '1201510231', current_timestamp(), '30851'),
('20EC1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'EC', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '12014103310', current_timestamp(), '30851'),
('20EI1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'EI', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '120103310', current_timestamp(), '30851'),
('20EE1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'EE', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '120103310', current_timestamp(), '30851'),
('20ME1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'ME', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '120153310', current_timestamp(), '30851'),
('20MT1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'MT', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '120151310', current_timestamp(), '30851'),
('20CE1039', 'RAJA BALAN', 'GENERAL', 'CENTAC', 'Bachelor of Technology', 'CE', '7702896326', 'RAJA.BALAN@PEC.EDU', 'NEFT', '120151310', current_timestamp(), '30851') -->



<!-- SELECT u_dept.DEPT_ID,SUM(student_payment.amount) FROM u_dept LEFT JOIN student_payment ON u_dept.DEPT_ID = student_payment.department WHERE student_payment.TIMESTAMP BETWEEN '2023-08-07 00:00:01' AND '2023-08-015 23:00:01' GROUP BY DEPT_ID

SELECT u_dept.DEPT_ID, COALESCE(SUM(student_payment.amount), 0) AS total_amount
FROM u_dept
LEFT JOIN student_payment ON u_dept.DEPT_ID = student_payment.department
                          AND student_payment.TIMESTAMP BETWEEN '2023-08-07 00:00:01' AND '2023-08-15 23:00:01'
GROUP BY u_dept.DEPT_ID;
SELECT u_dept.DEPT_ID, COALESCE(SUM(student_payment.amount), 0) AS total_amount FROM u_dept LEFT JOIN student_payment ON u_dept.DEPT_ID = student_payment.department AND student_payment.TIMESTAMP BETWEEN '2023-08-07' AND '2023-08-18' AND student_payment.course_name = 'Bachelor of Technology' 
WHERE u_dept.DEPT_ID IN ('IT','CS','EE','EC','EI','CE','CH','MT','ME') GROUP BY u_dept.DEPT_ID; -->