<?php 

require 'db_connect.php';

$test = FALSE;

if ($_POST) {

	$requete = $pdo->prepare("SELECT * FROM ensemble WHERE nom ='" .$_POST['nom']. "' ");

	$requete->execute();
	
	// echo $requete->rowCount();



	if ($requete->rowCount() == 0) {
		$insert = $pdo->prepare("INSERT INTO ensemble (ensemble, nom, visage, yeux, nez, bouche) VALUES(
		'$_POST[visage],$_POST[yeux],$_POST[nez],$_POST[bouche]',
		'$_POST[nom]',
		'$_POST[visage]',
		'$_POST[yeux]',
		'$_POST[nez]',
		'$_POST[bouche]'
		);
		 ");

		$test = $insert->execute();


	}
}



echo json_encode($test);
 ?>