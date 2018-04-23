<!--This page is useful for routing the Registered users to check out and users with no proper details back to login-->

<?php
session_start();
require_once 'config/connect.php';  
// define variables and set to empty values
/*$_SESSION["emailErr1"] = "";
$_SESSION["passwordErr1"] =  "";
$_SESSION["remail"] = "";
$_SESSION["rpassword"] = "";

  if (empty($_POST["remail"])) {
    $_SESSION["emailErr1"] = "Email is required";
  } else {
    $remail = test_input($_POST["remail"]);
    // check if e-mail address is well-formed
    if (!filter_var($_SESSION["remail"], FILTER_VALIDATE_EMAIL)) {
      $_SESSION["emailErr1"] = "Invalid email format"; 
	  unset($_SESSION["emailErr1"]);
    }
  }
    
  if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["rpassword"])) {
    $_SESSION["passwordErr1"] = "Password is required";
  } else {
    $_SESSION["password"] = test_input($_POST["rpassword"]);
	unset($_SESSION["passwordErr1"]);
  }
  }
function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

if(isset($_POST) & !empty($_POST)){
    //Here we are using more secured email and password authentication
	$email = filter_var($_POST['remail'], FILTER_SANITIZE_EMAIL);
	$password = password_hash($_POST['rpassword'], PASSWORD_DEFAULT);
	echo $sql = "INSERT INTO users (email, password) VALUES ('$email', '$password')";
	$result = mysqli_query($connection, $sql) or die(mysqli_error($connection));
	if($result){
		//echo "User exits, create session";
		$_SESSION['customer'] = $remail;
		$_SESSION['customerid'] = mysqli_insert_id($connection);
		header("location: index.php");
		unset($_SESSION["passwordErr1"]);
        unset($_SESSION["emailErr1"]);
	}
	else{
		header("location: login.php?message=2");
	}
}*/
if(isset($_POST) & !empty($_POST)){
    //Here we are using more secured email and password authentication
  //$email = mysqli_real_escape_string($connection, $_POST['email']);
  $password = $_POST['password'];
  $password1 = $_POST['passwordagain'];
   $email = $_POST['email'];
  if($password==$password1 && $password!=" " && !empty($email) && $email!=" ")
  {
    $email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
  $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
  $sql = "SELECT * FROM users WHERE email='$email'";
  $result = mysqli_query($connection, $sql) or die(mysqli_error($connection));
  $count=mysqli_num_rows($result);
if($count==0){
  echo "this is reached";
  $sql = "INSERT INTO users (email, password) VALUES ('$email', '$password')";
  $result = mysqli_query($connection, $sql) or die(mysqli_error($connection));
  if($result){
    //echo "User exits, create session";
    $_SESSION['customer'] = $email;
    $_SESSION['customerid'] = mysqli_insert_id($connection);
    if(!empty($_SESSION['cart'])){
                      //if it has any elements then only assign it to $cart variable
           header("location: checkout.php");
          
        }
        else
        {
            header("location: index.php");
        }
   
  }
}
else if($count==1){
    //if not inserted or not unique then the registration will be failed and message will be retreived with help of the below message 2
    //$fmsg = "Invalid Login Credentials";
    header("location: login.php?message=3");
  }
  else {
    //if not inserted or not unique then the registration will be failed and message will be retreived with help of the below message 2
    //$fmsg = "Invalid Login Credentials";
    header("location: login.php?message=2");
  }
}
else if($password==$password1 && $password!=" ")
{
    //if not inserted or not unique then the registration will be failed and message will be retreived with help of the below message 2
    //$fmsg = "Invalid Login Credentials";
    header("location: login.php?message=5");
  }
  else 
{
    //if not inserted or not unique then the registration will be failed and message will be retreived with help of the below message 2
    //$fmsg = "Invalid Login Credentials";
    header("location: login.php?message=4");
  }
}

?>





