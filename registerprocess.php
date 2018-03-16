<!--This page is useful for routing the Registered users to check out and users with no proper details back to login-->
<?php 
session_start();
require_once 'config/connect.php'; 
if(isset($_POST) & !empty($_POST)){
    //Here we are using more secured email and password authentication
	//$email = mysqli_real_escape_string($connection, $_POST['email']);
	$email = filter_var($_POST['email'], FILTER_SANITIZE_EMAIL);
	$password = password_hash($_POST['password'], PASSWORD_DEFAULT);
	//$sql = "SELECT * FROM users WHERE email='$email' AND password='$password'";
	echo $sql = "INSERT INTO users (email, password) VALUES ('$email', '$password')";
	$result = mysqli_query($connection, $sql) or die(mysqli_error($connection));
	if($result){
		//echo "User exits, create session";
		$_SESSION['customer'] = $email;
		$_SESSION['customerid'] = mysqli_insert_id($connection);
		header("location: checkout.php");
	}else{
		//if not inserted or not unique then the registration will be failed and message will be retreived with help of the below message 2
		//$fmsg = "Invalid Login Credentials";
		header("location: login.php?message=2");
	}
}

?>