<?php
    session_start();
   	//$server = "sundakelapa.jinno.id";
    //$username = "jinno_andreas";
    //$password = "andreas123";
    //$database = "jinno_demo_andreas";

    $server = "localhost";
    $username = "easadmin_345";
    $password = "345indo";
    $database = "easadmin_db_lpm";

    mysql_connect($server, $username, $password) or die("tidak konek ke server");
    mysql_select_db($database) or die("database tidak nemu");

?>