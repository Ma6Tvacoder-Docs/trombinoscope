<?php
require_once 'modeles.php';
saver($_POST['nom'],$_POST['ensemble']);
header('Location:../vues');
?>