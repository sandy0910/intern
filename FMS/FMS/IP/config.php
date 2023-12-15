<?php

//start session on web page
session_start();

//config.php

//Include Google Client Library for PHP autoload file
require_once '../../googleapi/vendor/autoload.php';

//Make object of Google API Client for call Google API
$google_client = new Google_Client();

//Set the OAuth 2.0 Client ID
$google_client->setClientId('425474292081-cpnut7dvkga1hqoujnc7b9egnle569n1.apps.googleusercontent.com');

//Set the OAuth 2.0 Client Secret key
$google_client->setClientSecret('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');

//Set the OAuth 2.0 Redirect URI
// $google_client->setRedirectUri('http://localhost/FMS1/index.php');
$google_client->setRedirectUri('http://localhost/FMS/IP/index.php');

// to get the email and profile 
$google_client->addScope('email');

$google_client->addScope('profile');

?> 