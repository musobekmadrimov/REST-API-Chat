<?php
//header('Content-Type: application/json');
include('db.php');
// ========================= REGISTRATION ========================= //

  $token = $_GET["token"];
  $getChat = ('SELECT * FROM `chat` WHERE `token`="'.$token.'"');
  $result = $conn->query($getChat);
  

while ($row = $result->fetch_assoc()) {
    if (!is_null($row)) {
        print(json_encode($row));
      } else {
        $row = array();
        print(json_encode($row));
      }
}
