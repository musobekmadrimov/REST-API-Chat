<?php
$server = "localhost";
$user = "root";
$pass = "";
$dbname = "usduzuz_operator"; //chat name
$conn = new mysqli($server, $user, $pass, $dbname);

if ($conn -> connect_errno) {
  echo "Failed to connect to MySQL: " . $conn -> connect_error;
  exit();
}
?>