<?php 

try{
	$pdo = new PDO('mysql:host=localhost;dbname=trombinoschool', 'root', '');
	$pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	$pdo->setAttribute(PDO::MYSQL_ATTR_INIT_COMMAND , 'SET NAMES utf8');
}
catch(Exception $e){

	echo'Error : '.$e->getMessage();

}

