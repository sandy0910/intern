
<?php
$conn = mysqli_connect("localhost", "root", "", "feesportal");
$sql = "SELECT * FROM send_mail";

// Query for the making the connection.
$res = mysqli_query($conn, $sql);
$dead_line = 0;

if(mysqli_num_rows($res) > 0) {
	while($x = mysqli_fetch_assoc($res)) {
		$send_on = $x['send_mail_on'];
		$dead_line = $x['dead_line'];
	}
}
$curr_date = date('Y-m-d');
if ($curr_date == $send_on){


	

require("../PHPMailer/src/PHPMailer.php");
require("../PHPMailer/src/SMTP.php");
require ("../PHPMailer/src/Exception.php") ;

// Server settings
$mail = new \PHPMailer\PHPMailer\PHPMailer();

// Enable verbose debug output
$mail->isSMTP();

// Send using SMTP
$mail->Host = "smtp.gmail.com";
$mail->SMTPAuth = true;

// SMTP username
$mail->Username = "abdul.basith@pec.edu";

// SMTP password				
$mail->Password = "vjjqaorbuealmozc";
$mail->SMTPAuth = "tls";
$mail->Port = 587;		

//Recipients
// This email-id will be taken
// from your database
$mail->setFrom("###");

// Selecting the mail-id having
// the send-mail =1
$sql = "SELECT student_fee_paid.REGNO,student_personal.student_name,student_personal.admitted_course,student_personal.mail_id,student_personal.batch,student_personal.current_year FROM student_fee_paid,student_personal WHERE 
student_fee_paid.REGNO = student_personal.Regno AND ((student_personal.current_year = '1' AND student_fee_paid.1yr = 'NOT PAID') OR 
(student_personal.current_year = '2' AND (student_fee_paid.1yr = 'NOT PAID' OR student_fee_paid.2yr = 'NOT PAID')) OR (student_personal.current_year = '3' AND 
(student_fee_paid.1yr = 'NOT PAID' OR student_fee_paid.2yr = 'NOT PAID' OR student_fee_paid.3yr = 'NOT PAID')) OR 
(student_personal.current_year = '4' AND (student_fee_paid.1yr = 'NOT PAID' OR student_fee_paid.2yr = 'NOT PAID' OR student_fee_paid.3yr = 'NOT PAID' 
OR student_fee_paid.4yr = 'NOT PAID'))) ORDER BY REGNO";

// Query for the making the connection.
$res = mysqli_query($conn, $sql);

if(mysqli_num_rows($res) > 0) {
	while($x = mysqli_fetch_assoc($res)) {
		$mail->addAddress($x['mail_id']);
	}

	// Set email format to HTML
	$mail->isHTML(true);
	$mail->Subject =
		"Regarding payment of due tution fee";
	$mail->Body = "You are hereby reminded to pay the due tution fee for the current academic year on or before .$dead_line., failing which fine will be imposed.      With regards :";
	
	
	if($mail->send())
	{
	echo "Message has been sent check mailbox.$curr_date.";
	}
	else{
		echo "failure due to the google security";
	}
}

}
	
?>
