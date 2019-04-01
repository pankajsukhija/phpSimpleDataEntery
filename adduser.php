<?php

if ($_SERVER["REQUEST_METHOD"] == "POST"){

    include('config.php');
    $username = $_POST["inputUsername"];
    $password = $_POST["inputPassword"];
    $password_md5 = md5($password);


    $sql = "INSERT INTO `users` (`username`, `password_md5`) VALUES ('$username', '$password_md5');";

    // CREATE TABLE `treecko`.`users` ( `uid` INT NOT NULL AUTO_INCREMENT , `username` CHAR(16) NOT NULL , `password_md5` CHAR(32) NOT NULL , `reg_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`uid`)) ENGINE = InnoDB;

    if ($conn->query($sql) === TRUE) {
        $last_id = $conn->insert_id;
        echo("User Added Sucessfully with ID " .$last_id. " .");
    }else{
        echo("Error: " . $sql . "<br>" . $conn->error . "for user" . $username);
    }
}else{
    echo("Wchha doin' bruh?");
}

?>