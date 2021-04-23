
<?php
clearstatcache();
$script_stat = shell_exec('bash script.sh');
    echo"<pre> $script_stat</pre>";
    header("Location:http://localhost:8000/index.html");
?>
