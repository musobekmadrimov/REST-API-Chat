<?php
//header('Content-Type: application/json');
include('db.php');
// ========================= REGISTRATION ========================= //

  if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $registration = $_POST['phone_number'];
  //$registration = "+998999661999";
  $getInformation = ("SELECT * from `users` WHERE `phone_number`=$registration");
  $result = $conn->query($getInformation);
  $row = $result->fetch_assoc();
  
  if($row['phone_number'] == $registration){
  	$response['status'] = false;
    $response['token'] = $row['token'];
    $response['answer'] = 'Foydalanuvchi oldin registratsiya qilingan!';
    print(json_encode($response));
  } else {
    //$registration = "+998999661999";
  mysqli_real_escape_string($conn, $registration);
  $query = ("INSERT INTO `users`( `phone_number`) VALUES( $registration)");
  mysqli_query($conn, $query);
  $getInformation = ("SELECT * from `users` WHERE `phone_number`=$registration");
  $result = $conn->query($getInformation);
  $row = $result->fetch_assoc();
  $id = $row['id'];
  $token = $registration . '.' . $id;
  $setToken = ("UPDATE `users` SET `token`=$token WHERE `id`=$id");
  mysqli_query($conn, $setToken);
  $response['status'] = true;
  $response['token'] = $token;
  $response['answer'] = 'Foydalanuvchi muvafaqqiyatli registratsiya qilindi!';
  print(json_encode($response));
  }

}



// ========================= REGISTRATION end ========================= //

?>