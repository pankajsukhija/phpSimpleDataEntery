<?php

if ($_SERVER["REQUEST_METHOD"] == "POST"){
    require("config.php");
    session_start();

    $username = $_POST["inputUsername"];
    $password = $_POST["inputPassword"];
    $password_md5 = md5($password);

    $sql = "SELECT uid FROM users WHERE username = '$username' AND password_md5 = '$password_md5';";
    $result = $conn->query($sql);
    $rows = $result->num_rows;
    if ($rows == 1){
        $_SESSION['login_user'] = $username;
        header("location: dashboard.php");
    }else{
        echo("Invalid User.  " . $conn->error);
    }

}else{
    echo("Kya dekh rhe ho?");
}


?>