<?php
if(isset($_GET["username"]) && isset($_GET["password"])){ 
$user = $_GET["username"]; 
$password = $_GET["password"]; 
echo "Welcome " . $user; 
echo "Thank you for subscribing us!"; 
 
} 
?>
