<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "receipe";

// Create connection
$db = new mysqli($servername, $username, $password, $dbname);
$conn = $db;
// Check connection
if ($db->connect_error) {
  die("Connection failed: " . $db->connect_error);
}



?>