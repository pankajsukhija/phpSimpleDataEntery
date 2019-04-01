<?php 

session_start();

$logged_user = $_SESSION['login_user'];
if ($logged_user == TRUE){
    header("location: dashboard.php");
}
$page_title = "Login";

include('config.php');
include('./html/header.html');
include('./html/login.html');
include('./html/footer.html');

?>