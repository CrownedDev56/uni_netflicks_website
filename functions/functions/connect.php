<?php
    $connect_error = ' Connection issuses';
    $dbserver = "localhost";
    $dbusername = "root";
    $dbpassword = "";
    $dbname = "17122851";

// Create connection
$conn = new mysqli($dbserver,$dbusername ,$dbpassword,$dbname );
 

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>
