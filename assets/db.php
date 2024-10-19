<?php 
    $con = new mysqli('localhost','grocery','qwer123','grocery');
//for user informationa making available for all pages

    $array = $con->query("select * from users where id ='$_SESSION[userId]'");
    $user = $array->fetch_assoc();

	$base_path = "http://localhost/dev.test/grocery";
?>