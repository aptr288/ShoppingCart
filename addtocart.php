<?php 
session_start();
<<<<<<< HEAD
require_once 'config/connect.php';
=======

>>>>>>> f55dded88af77abe155e0d6d7c8ca9aa9293f83b
if(isset($_GET['id']) & !empty($_GET['id'])){
	$id = $_GET['id'];	
	$prodsql = "SELECT * FROM products WHERE id=$id";
	$prodres = mysqli_query($connection, $prodsql);
	$prodr = mysqli_fetch_assoc($prodres);
	$available = intval($prodr['quantity']);
	$zero = 0;
	if($available <= $zero)
	{
		header('location: single.php?message=1&id='.$id);
		exit();
	}
	else if(isset($_GET['quant']) & !empty($_GET['quant']))
		{   
			$quant = intval($_GET['quant']);
			if($quant <=0 )
			{
				header('location: single.php?message=2&id='.$id);
				exit();
			}
			else if ($quant > $available)
			{
				header('location: single.php?message=3&id='.$id);
				exit();
			}
		}
		else
		{
			$quant = 1;
		}
		$me = $_SESSION['cart'][$id]['quantity'];
		$quant = $quant + intval($me);
		$_SESSION['cart'][$id]= array('quantity' => $quant);
		header('location: cart.php');
}
else
{
	header('location: cart.php');
}

?>
