<?php
require_once 'config/connect.php';
if(!empty($_POST["username"])) {

  $sql = "SELECT userName FROM admin WHERE email='" . $_POST["username"] . "'"; 
  $result = mysqli_query($connection, $sql) or die(mysqli_error($connection));
  $prodr = mysqli_fetch_assoc($result);
  $count = mysqli_num_rows($result);
  
  if($count>0) {
  	
      echo "<span class='status-not-available'> Username has been Already taken</span>";
      
  }else{
      echo "<span class='status-available'> Username Available.</span>";
      
  }
}
?>