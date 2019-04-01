<?php 

session_start();
$logged_user = $_SESSION['login_user'];
    if ($logged_user == TRUE) {
        header("location: dashboard.php");
    }else{
        header("location: login.php");
    }


?>