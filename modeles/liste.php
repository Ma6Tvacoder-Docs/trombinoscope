<?php 
require 'db_connect.php';

if ($_POST) {
	$id = $_POST['id'];

	$parties = $pdo->query("SELECT visage, yeux, nez, bouche FROM ensemble WHERE id = " . $id . " ");

	$parties = $parties->fetchAll();

	echo json_encode($parties);
}

 ?>