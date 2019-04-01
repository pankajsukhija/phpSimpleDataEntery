<?php

if ($_SERVER["REQUEST_METHOD"] == "POST"){
    
    session_start();
    $logged_user = $_SESSION['login_user'];
    if ($logged_user == TRUE){
        include('config.php');
        $name = $_POST["name"];
        $wds = $_POST["wds"];
        $fhname = $_POST["fhname"];
        $gender = $_POST["gender"];
        $age = $_POST["age"];
        $address = $_POST["address"];
        $mob = $_POST["mob"];
        $entry_by = $logged_user;
    }else{
        echo("Kya krne ki koshish kar rhe ho?");
    }

    $sql = "INSERT INTO `pika` (`name`, `wds`, `fhname`, `gender`, `age`, `address`, `mob`, `entry_by`) VALUES ('$name', '$wds', '$fhname', '$gender', '$age', '$address', '$mob', '$entry_by');";

    if ($conn->query($sql) === TRUE) {
        $last_id = $conn->insert_id;
        echo("Added to database with User ID : ".$last_id." ."); //May need to change this.
    }else{
        echo("Error: " . $sql . "<br>" . $conn->error);
    }
}else{
    echo("Kya krne ki koshish kar rhe ho?");
}
?>