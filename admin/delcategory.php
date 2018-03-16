<?php
    //Will authenticate the user
	session_start();
	require_once '../config/connect.php';
	if(!isset($_SESSION['admin']) & empty($_SESSION['admin'])){
		header('location: login.php');
	}

	if(isset($_GET) & !empty($_GET)){
		$id = $_GET['id'];
		$sql = "DELETE FROM category WHERE id='$id'";
		if(mysqli_query($connection, $sql)){
			header('location:categories.php');
		}
	}else{
		header('location: categories.php');
	}
?>