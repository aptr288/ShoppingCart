<?php 
session_start();
if(isset($_GET['id']) & !empty($_GET['id'])){
	$id = $_GET['id'];
	if(isset($_GET['quant']) & !empty($_GET['quant']))
		{
			$quant = $_GET['quant'];
		}
		else
		{
			$quant = 1;
		}
		$_SESSION['cart'][$id]= array('quantity' => $quant);

}
else
{
	header('location: cart.php');
}
echo "<pre>";
print_r($_SESSION['cart']);
echo "</pre>";

?>