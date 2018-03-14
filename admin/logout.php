<?php
	session_start();
	//session is destroyed and user is redirected to login page for authentication
	session_destroy();
	header('location: login.php');
?>