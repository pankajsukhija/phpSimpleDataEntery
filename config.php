<?php
$db_server  = "localhost";
$db_username = "root";
$db_password = "P@ke64cgZ";
$db_name = "treecko";

$site_url = "http://192.168.56.1"; //Edit on a live server.
$css_dir = $site_url."/css";
$js_dir = $site_url."/js";

$conn = new mysqli($db_server, $db_username, $db_password, $db_name);
if ($conn->connect_error) {
    echo("Connection to database failed.: " . $conn->connect_error); }
?>