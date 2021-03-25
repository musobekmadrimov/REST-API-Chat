<?php



if(array_key_exists('insertdata',$_POST)){
  addTarif();
} else{
  delete();
}

function addTarif(){
  include ('db.php');
  if(isset($_POST['insertdata']))
  {
    $name = $_POST['name'];
    $desc = $_POST['desc'];
    $operator_id = $_POST['operator_id'];
    $usd = $_POST['usd'];
  
    $query = "INSERT INTO tarif (`name`, `description`, `operator_id`, `usd`) VALUES ('$name', '$desc', '$operator_id', '$usd')";
    $query_run = mysqli_query($conn, $query);
    header('Location: ../tarif.php');
  
    if($query_run)
    {
      echo'<script> alert("Saqlandi");</script>';
    }
   
    else 
      {
        echo '<script> alert("Saqlanmadi");</script>';
      }
    
}
}

function delete(){
  include ('db.php');
  $id = $_GET['id'];

  $sql = "DELETE FROM tarif WHERE id = $id"; 

if (mysqli_query($conn, $sql)) {
    mysqli_close($conn);
    header('Location: ../tarif.php');
    exit;
   
} else {
    echo "Error deleting record";
}
      
}
