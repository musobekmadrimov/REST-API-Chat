<?php
include('db.php');
// ========================= REGISTRATION ========================= //

if (isset($_POST['submit'])) {
  $registration = $_POST['phone_number'];
  mysqli_real_escape_string($conn, $registration);
  $query = ("INSERT INTO `users`( `phone_number`) VALUES( $registration)");
  mysqli_query($conn, $query);
  $getInformation = ("SELECT * from `users` WHERE `phone_number`=$registration");
  $result = $conn->query($getInformation);
  $row = $result->fetch_assoc();
  $id = $row['id'];
  $setToken = ("UPDATE `users` SET `token`=\"$registration.$id\" WHERE `id`=$id");
  mysqli_query($conn, $setToken);
  $answer = '<div style="padding: 10px; margin: 20px auto; border-radius: 10px" class="alert alert-success bg-success alert-dismissible fade show text-center" role="alert">
  <strong>Foydalanuvchi muvafaqqiyatli registratsiya qilindi!</strong><button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>';
}



// ========================= REGISTRATION end ========================= //

?>