<?php
require_once('../modeles/modeles.php');

function select($tableaux){
	global $bouche, $nez, $visage, $yeux;
	$option = "";
	$id = '';
	$valeur = '';

	foreach($tableaux as $key => $tableau){

			foreach ($tableau as $cles => $value) {
				foreach($value as $cle => $v){

					//var_dump($cle);
					if($v%2 == 1){
						$id = $cle;
						var_dump($id);
					}
					if($v%2 == 0){
						$valeur = $cle;
						//var_dump($valeur);
					}
					$valeur = $value;
					//var_dump($value);

					if($key == 0){
						$bouche .= "<option value='".$id."'></option>";
					}elseif($key == 2){
						$nez .= "<option value='".$id."'></option>";
					}elseif($key == 3){
						$visage .= "<option value='".$id."'></option>";
					}elseif($key == 4){
						$yeux .= "<option value='".$id."'></option>";
					}
				}
			}
	}

}

select($t);
//echo $yeux;
