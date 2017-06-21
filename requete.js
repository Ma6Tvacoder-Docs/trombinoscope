$(function(){

	let selection_visage = $('#visage').val();
	let listes_visage = $('#visage').children();

	for (let j = 1; j < listes_visage.length; j++) {
		if (listes_visage.eq(j).val() == selection_visage) {
			listes_visage.eq(j).attr('selected','selected');
		}
	}
	let selection_yeux = $('#yeux').val();
	let listes_yeux = $('#yeux').children();

	for (let j = 1; j < listes_yeux.length; j++) {
		if (listes_yeux.eq(j).val() == selection_yeux) {
			listes_yeux.eq(j).attr('selected','selected');
		}
	}
	let selection_nez = $('#nez').val();
	let listes_nez = $('#nez').children();

	for (let j = 1; j < listes_nez.length; j++) {
		if (listes_nez.eq(j).val() == selection_nez) {
			listes_nez.eq(j).attr('selected','selected');
		}
	}
	let selection_bouche = $('#bouche').val();
	let listes_bouche = $('#bouche').children();

	for (let j = 1; j < listes_bouche.length; j++) {
		if (listes_bouche.eq(j).val() == selection_bouche) {
			listes_bouche.eq(j).attr('selected','selected');
		}
	}



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
	});

	$('#personnage').on("change", function(e){
		e.preventDefault();
		$.ajax({
			url: "modeles/liste.php",
			type: "POST",
			data: {
				id: $('#personnage').val()
			}
		}).
		done(function(data){
			data = JSON.parse(data);
			let visages = $('#visage').children();
			let yeux = $('#yeux').children();
			let nez = $('#nez').children();
			let bouche = $('#bouche').children();
			
			for (var i = 0; i < visages.length; i++) {
				if (visages.eq(i).val() == data[0].visage) {
					visages.eq(i).attr('selected','selected');
				}
			}			
			for (var i = 0; i < yeux.length; i++) {
				if (yeux.eq(i).val() == data[0].yeux) {
					yeux.eq(i).attr('selected','selected');
				}
			}			
			for (var i = 0; i < bouche.length; i++) {
				if (bouche.eq(i).val() == data[0].bouche) {
					bouche.eq(i).attr('selected','selected');
				}
			}			
			for (var i = 0; i < nez.length; i++) {
				if (nez.eq(i).val() == data[0].nez) {
					nez.eq(i).attr('selected','selected');
				}
			}

			$("#form").submit();


		})
	});



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