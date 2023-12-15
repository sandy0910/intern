<?php

//logout.php

include('config.php');

//Reset OAuth access token../../FMS1/
$google_client->revokeToken();

//Destroy entire session data.
session_destroy();

//redirect page to index.php
header('location:../../googleapi/index.php');

?>