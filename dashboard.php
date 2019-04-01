<?php
    session_start();
    $page_title = "Dashboard";
    $logged_user = $_SESSION['login_user'];
    if ($logged_user == TRUE) {
        include("config.php");
        include("./html/header.html");

        echo("<h1>Welcome " . $logged_user . "</h1></ br></ br>");
        include("./html/entry_form.html");

// CREATE TABLE `treecko`.`pika` ( `serial` INT NOT NULL AUTO_INCREMENT , `name` VARCHAR(60) NOT NULL , `wds` VARCHAR(1) NOT NULL , `fhname` VARCHAR(60) NOT NULL , `gender` VARCHAR(1) NOT NULL , `age` INT(2) NOT NULL , `address` VARCHAR(200) NOT NULL , `mob` VARCHAR(10) NOT NULL , `entry_by` VARCHAR(16) NOT NULL , PRIMARY KEY (`serial`) ENGINE = InnoDB;

        include("./html/footer.html");
    }else{
        echo("Bhai pehle login to kar lo.");
    }
    
?>
