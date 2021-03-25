<?php
include('db.php');

// ========================= chat insert for OPERATOR ========================= //
$token = $_GET['token'];
if (isset($_POST['sendMessage']) and $_SERVER['REQUEST_METHOD'] == 'POST') {
    $message = $_POST['message'];
    $date = date("Y/m/d");
    $time = date("H:i");

    $query = 'INSERT INTO `chat`( `message`, `message_type`, `date`, `time`, `token`) VALUES( "' . $message . '", "operator", "' . $date . '", "' . $time . '", "' . $token . '")';
    mysqli_query($conn, $query);
}

  // ========================= chat insert end ========================= //
