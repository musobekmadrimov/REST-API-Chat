<?php include('db.php');
// ========================= LOGIN ========================= //
if (isset($_POST['submit'])) {
    $login = $_POST['phone_number'];
    @$password = $_POST['password']; // this is also used for token, so somewhere it may be named as  `token`
    $check = mysqli_query($conn, "SELECT * FROM `users` WHERE `phone_number` = '$login' and `token` = '$password'");
    if (mysqli_num_rows($check) > 0) {
      header("Location:tarif.php");
    } else {
      $wrongAnswer = '<div style="padding: 10px; margin: 20px auto; border-radius: 10px" class="alert alert-danger bg-danger alert-dismissible fade show text-center" role="alert">
          <strong>Login yoki parolni noto\'g\'ri kiritdinggiz!</strong><button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>';
    }
  }
// ========================= LOGIN end ========================= //
?>