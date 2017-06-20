$(function(){

	$("#hasard").on("click", function(e){ // Fonction appelée au click
		e.preventDefault(); // Pour empecher le refresh et la vérifiication des champs au cas ou ils sont vides

			// Des id ont été ajoutés aux différents select pour faciliter la selection en Jquery
			console.log($("#visage").val());
			do {	
				visage = $("#visage > option")
				visage[Math.floor(Math.random() * visage.length)].selected = true;
			} while ($("#visage").val() == "");


			do {	
				nez = $("#nez > option")
				nez[Math.floor(Math.random() * nez.length)].selected = true;
			} while ($("#nez").val() == "");

			do {	
				yeux = $("#yeux > option")
				yeux[Math.floor(Math.random() * yeux.length)].selected = true;
			} while ($("#yeux").val() == "");

			do {	
				bouche = $("#bouche > option")
				bouche[Math.floor(Math.random() * bouche.length)].selected = true;
			} while ($("#bouche").val() == "");

			// Le conde fonctionne de la sorte: on récupère le nombre d'options disponibles au select dans un tableau, on choisis un nombre au hasard entre 0 et le nombre d'éléments du tableau, puis on selectionne l'element a l'emplacement numéraire correspondant
			// Le do while permet de relancer la roulette au cas ou on tombe sur l'option par défaut a valeur vide 


			$("#form").submit();

			// Finalement, on submit le tout avec les options hasardeuses
	})

	$("#sauvegarde_image").on("submit", function(e){
		if ( $('#visage').val() != "" && $('#yeux').val() != "" && $('#nez').val() != "" && $('#bouche').val() != "") {
			e.preventDefault();
			$.ajax({
				url: "modeles/rest.php",
				type: "POST",
				data: {
					nom : $('#nom_sauvegarde').val(),
					visage : $('#visage').val(),
					yeux : $('#yeux').val(),
					nez : $('#nez').val(),
					bouche : $('#bouche').val(),
				}
			}).
			done(function(data){
				console.log(data);
				if (data == 'true') {
					alert('Sauvegarde réalisée.');
				}
				else {
					alert('Erreur lors de la sauvegarde');
				}
			})
		}
	});
});