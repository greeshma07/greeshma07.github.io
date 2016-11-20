<?php
if(isset($_POST["username"]) && isset($_POST["password"])){ 
$user = $_POST["username"]; 
$password = $_POST["password"]; 
echo "Welcome " . $user; 
echo "Thank you for subscribing us!"; 
 
} 
?>
