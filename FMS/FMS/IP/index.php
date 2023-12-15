<?php
//index.php
$conn = mysqli_connect("localhost", "root", "", "feesportal");
//Include Configuration File
include('config.php');

$login_button = '';


if(isset($_GET["code"]))
{

 $token = $google_client->fetchAccessTokenWithAuthCode($_GET["code"]);


 if(!isset($token['error']))
 {
 
  $google_client->setAccessToken($token['access_token']);

 
  $_SESSION['access_token'] = $token['access_token'];


  $google_service = new Google_Service_Oauth2($google_client);

 
  $data = $google_service->userinfo->get();

 
  if(!empty($data['given_name']))
  {
   $_SESSION['user_first_name'] = $data['given_name'];
  }

  if(!empty($data['family_name']))
  {
   $_SESSION['user_last_name'] = $data['family_name'];
  }

  if(!empty($data['email']))
  {
   $_SESSION['user_email_address'] = $data['email'];
   $d_email = $data['email'];
  }

  if(!empty($data['gender']))
  {
   $_SESSION['user_gender'] = $data['gender'];
  }

  if(!empty($data['picture']))
  {
   $_SESSION['user_image'] = $data['picture'];
  }
 }
}


if(!isset($_SESSION['access_token']))
{

 $login_button = ' <a href="'.$google_client->createAuthUrl().'">Login With Google</a>';

}

?>

   <?php
   if($login_button =='')
   {
    $sql1    = "SELECT u_faculty.PERMISSION,u_faculty.DEPT_ID FROM u_faculty WHERE u_faculty.EMAIL = '$d_email'";
    $result1 = $conn->query($sql1);
    while ($row = $result1->fetch_assoc()) 
    {
        $permission = $row['PERMISSION'];
        $dept = $row['DEPT_ID'];
    }
    if($permission == 'ADMIN')
    {
        $flag = 1;
        $_SESSION['flag'] = $flag;
        header("Location: ../nav.php?message=success");
    }
    elseif($permission == 'STAFF')
    {
        $_SESSION['dept'] = $dept;
        header("Location: student_fee_payment.php?message=success");
    }
    elseif($permission == 'HOD')
    {
        $flag = 2;
        $_SESSION['dept'] = $dept;
        $_SESSION['flag'] = $flag;
        header("Location: ../nav-1.php?message=success");
    }

   }
   else
   {
    echo '<div align="center">'.$login_button . '</div>';
   }
   ?>
   </div>
  </div>
 </body>
</html>