<?php
//credentials for connecting to your database
$host = 'localhost'; //database host
$user = 'devbanji'; //database username
$pass = ""; //database password
$dbname = 'WebAssignment'; //database name

// Create connection
$conn = new mysqli($host, $user, $pass, $dbname);

//check if the server has at least PHP 5.0.0 installed
if (strnatcmp(phpversion(),'5.3.7') >= 0)
{
	 // Check connection
	if (mysqli_connect_errno()) {
	    echo("Connect failed: " .  mysqli_connect_error());
	    die();
	}
}
else
{
  echo '<h1>Your php version is not supported by php-membership!</h1>';
  echo "Your php version is: " . phpversion() . ".";
  echo "You need at least PHP 5.3.7 in order to run php-membership.";
}
?>