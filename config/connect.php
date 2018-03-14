<?php
$connection = mysqli_connect('localhost', 'root', '', 'ecomphp');
if(!$connection){
	echo "Error : Unable to connect to MySQL.", PHP_EOL;
	
	echo "Debugging errono:",mysql_connect_errno(), PHP_EOL;
	echo "Debugging errono:",mysql_connect_errno(), PHP_EOL;
	exit;

}
?>