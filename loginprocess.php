<!--This page is useful for routing the logged in users to check out and users with no proper details back to login-->
<?php 
session_start();
require_once 'config/connect.php'; 
if(isset($_POST) & !empty($_POST)){
	$email = mysqli_real_escape_string($connection, $_POST['email']);
	$password = md5($_POST['password']);
	//Check if the given login detail are in the user table
	$sql = "SELECT * FROM users WHERE email='$email' AND password='$password'";
	$result = mysqli_query($connection, $sql) or die(mysqli_error($connection));
	$count = mysqli_num_rows($result);
	
	if($count == 1){
				//echo "User exits, create session";
			$_SESSION['customer'] = $email;
			header("location: checkout.php");
		}else{
			//$fmsg = "Invalid Login Credentials";
			header("location: login.php?message=1");
		}
	
}
?>