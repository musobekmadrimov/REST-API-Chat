<?php
include('db.php');

// ========================= chat insert for USER ========================= //

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $token = $_POST['token'];
    $message = $_POST['message'];
    $date = date("Y/m/d");
    $time = date("H:i");

    $query = 'INSERT INTO `chat`( `message`, `message_type`, `date`, `time`, `token`) VALUES( "' . $message . '", "user", "' . $date . '", "' . $time . '", "' . $token . '")';
    mysqli_query($conn, $query);

    $getInformation = 'SELECT * FROM `chat` WHERE time="' . $time . '"';
    $result = mysqli_query($conn, $getInformation) or die($conn->error);
    $row = $result->fetch_assoc();
    $response["status"] = "true";
    $response["id"] = $row['id'];
    $response["message"] = $message;
    $response["message_type"] = "user";
    $response["date"] = $date;
    $response["time"] = $time;
    $response["token"] = $token;

    print json_encode($response);
} else {
    $response = [];
    $response["status"] = "false";
    $response["answer"] = "Ma'lumotlar bazasiga yozishda xatolik! Adminstrator bilan bog'laning!";
    print json_encode($response);
}

  // ========================= chat insert end ========================= //
