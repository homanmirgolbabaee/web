<body>
<?php 
    include "./loading.html";
    include "./index.html";
    $script_stat = shell_exec('bash script.sh');
#    echo"<pre> $script_stat</pre>";
    include "./b.html";
?>
</body>

