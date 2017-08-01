<?php require_once"modeles/modeles.php";
$requete = $pdo->query("SELECT visage, yeux, nez, bouche FROM ensemble");
$fonds = $requete->fetchAll();

// var_dump($fonds);


?>
<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="vues/css/style.css">
	<title>Trombino-PoleS</title>
	<style type="text/css">
		body{
			background-image: 
			<?php for($i = 0; $i < 4; $i++ ): ?>
				
				<?php
					if ($i == 0) {
						echo "url(modeles/img/visage/" . $fonds[$i]['visage'] . ")";
					}
					else{
			    		echo ",url(modeles/img/visage/" . $fonds[$i]['visage'] . ")";
					}
			 	?>
			<?php endfor ?>
			;
			background-repeat: no-repeat, no-repeat, no-repeat, no-repeat;
			background-size: 25%, 25%, 25%, 25%;
			background-position: left top, left top, right top, right bottom;

		}
	</style>
</head>
<body>

  <?php include "vues/main-page.php"; ?>

<!-- <script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script> -->
<script type="text/javascript" src="jquery-3.2.1.js"></script>
<script type="text/javascript" src="requete.js"></script>
</body>
</html>