<?php
// Connect to the database
$conn = mysqli_connect("localhost", "root", "", "feesportal");
session_start();
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['batch_filter'])) {
    $bf = $_POST['batch_filter'];
    
    // Use the $bf variable in your query or other logic
}
else {
  $bf = "%";
}
$_SESSION["bf"] = $bf;
if (isset($_POST['program_filter'])) {
    $pf = $_POST['program_filter'];

    // Use the $programFilter variable in your query or other logic
}
else{
    $pf = "%";
}
$_SESSION["pf"] = $pf;


    if (isset($_POST['fee_option'])) {
        $feeOption = $_POST['fee_option'];
        
        // Prepare the query based on the selected option
        if ($feeOption === 'fee-paid') 
        {
            $query = "SELECT student_fee_paid.REGNO,student_personal.student_name,student_personal.admitted_course,student_personal.dept_id,student_personal.batch,student_personal.current_year FROM student_fee_paid,student_personal WHERE (student_fee_paid.REGNO = student_personal.Regno OR student_fee_paid.REGNO = student_personal.registration_id) AND ((student_personal.current_year = 1 AND student_fee_paid.1yr = 'PAID') OR
            (student_personal.current_year = 2 AND (student_fee_paid.1yr = 'PAID' AND student_fee_paid.2yr = 'PAID')) OR
            (student_personal.current_year = 3 AND (student_fee_paid.1yr = 'PAID' AND student_fee_paid.2yr = 'PAID' AND student_fee_paid.3yr = 'PAID')) OR
            (student_personal.current_year = 4 AND (student_fee_paid.1yr = 'PAID' AND student_fee_paid.2yr = 'PAID' AND student_fee_paid.3yr = 'PAID' AND student_fee_paid.4yr = 'PAID')))
            AND student_personal.prgm_id LIKE '$pf' AND student_personal.batch LIKE '$bf'
      ORDER BY Regno;";
        } 
        elseif ($feeOption === 'fee-defaulters') 
        {
            $query = "SELECT student_fee_paid.REGNO,student_personal.student_name,student_personal.admitted_course,student_personal.dept_id,student_personal.batch,student_personal.current_year FROM student_fee_paid,student_personal WHERE 
            (student_fee_paid.REGNO = student_personal.Regno OR student_fee_paid.REGNO = student_personal.registration_id) AND ((student_personal.current_year = 1 AND student_fee_paid.1yr = 'NOT PAID') OR (student_personal.current_year = 2 AND 
            (student_fee_paid.1yr = 'NOT PAID' OR student_fee_paid.2yr = 'NOT PAID')) OR (student_personal.current_year = 3 AND 
            (student_fee_paid.1yr = 'NOT PAID' OR student_fee_paid.2yr = 'NOT PAID' OR student_fee_paid.3yr = 'NOT PAID')) OR (student_personal.current_year = 4 AND 
            (student_fee_paid.1yr = 'NOT PAID' OR student_fee_paid.2yr = 'NOT PAID' OR student_fee_paid.3yr = 'NOT PAID' OR student_fee_paid.4yr = 'NOT PAID'))) AND student_personal.prgm_id LIKE '$pf' AND student_personal.batch LIKE '$bf'
            ORDER BY Regno;";
        }
    }
    
    // Execute the query and fetch the results
    $result = mysqli_query($conn, $query);
    
    // Handle the results as needed
    if ($result->num_rows > 0) {
        // Output data of each row
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td><a href='student_personal.php?Regno=" . $row["REGNO"] . "'>" . $row["REGNO"] . "</a></td>";
            echo "<td>" . $row["student_name"] . "</td>";
            echo "<td>" . $row["current_year"] . "</td>";
            echo "<td>" . $row["admitted_course"] . "</td>";
            echo "<td>" . $row["dept_id"] . "</td>";
            echo "<td>" . $row["batch"] . "</td>";
            echo "</tr>";
        }
    } else {
        echo "<tr><td colspan='7'>No data available</td></tr>";
    }


// else
// {


// // Check which radio button is selected
// if (isset($_POST['fee_option'])) {
//     $feeOption = $_POST['fee_option'];
    
//     // Prepare the query based on the selected option
//     if ($feeOption === 'fee-paid') 
//     {
//         $query = "SELECT student_academic.Regno,student_academic.Email,student_academic.name, student_academic.current_year, student_academic.batch,post_grad_payment.1YR_FEE,post_grad_payment.2YR_FEE
//         FROM student_academic
//         LEFT JOIN post_grad_payment ON student_academic.Regno = post_grad_payment.REGNO
//         WHERE ((student_academic.current_year = 1 AND post_grad_payment.1YR_STATUS = 'YES') OR
//               (student_academic.current_year = 2 AND (post_grad_payment.1YR_STATUS = 'YES' AND post_grad_payment.2YR_STATUS = 'YES'))) AND student_academic.prgm_id LIKE '$pf' AND student_academic.batch LIKE '$bf'
//     ORDER BY Regno;";
//     } 
//     elseif ($feeOption === 'fee-defaulters') 
//     {
//         $query = "SELECT student_academic.Regno,student_academic.name, student_academic.current_year, student_academic.batch,post_grad_payment.1YR_FEE,post_grad_payment.2YR_FEE
//         FROM student_academic
//         LEFT JOIN post_grad_payment ON student_academic.Regno = post_grad_payment.REGNO
//         WHERE ((student_academic.current_year = 1 AND (post_grad_payment.1YR_STATUS IS NULL OR post_grad_payment.1YR_STATUS = 'NO')) OR
//               (student_academic.current_year = 2 AND (post_grad_payment.1YR_STATUS IS NULL OR post_grad_payment.1YR_STATUS = 'NO' OR post_grad_payment.2YR_STATUS IS NULL OR post_grad_payment.2YR_STATUS = 'NO'))) AND student_academic.prgm_id LIKE '$pf' AND student_academic.batch LIKE '$bf'
//     ORDER BY Regno;";
//     }
// }

// // Execute the query and fetch the results
// $result = mysqli_query($conn, $query);

// // Handle the results as needed
// if ($result->num_rows > 0) {
//     // Output data of each row
//     while ($row = $result->fetch_assoc()) {
//         echo "<tr>";
//         echo "<td><a href='student_personal.php?Regno=" . $row["Regno"] . "'>" . $row["Regno"] . "</a></td>";
//         echo "<td>" . $row["name"] . "</td>";
//         echo "<td>" . $row["current_year"] . "</td>";
//         echo "<td>" . $row["batch"] . "</td>";
//         echo "<td>" . $row["1YR_FEE"] . "</td>";
//         echo "<td>" . $row["2YR_FEE"] . "</td>";
//         echo "<td>-</td>";
//         echo "<td>-</td>";
//         echo "</tr>";
//     }
// } else {
//     echo "<tr><td colspan='7'>No data available</td></tr>";
// }
// }
// Close the database connection
$conn->close();
?>