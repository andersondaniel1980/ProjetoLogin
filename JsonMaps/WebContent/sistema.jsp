<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Maps Json</title>

</head>
<body>


<div class="col-sm-4"> 


<div class="form-group">
    <label for="email">Endereço</label>
	<input type="text" class="form-control" id="busca" name="busca" value="" placeholder="Digite o endereco">
</div>
<div class="form-group">
 	<label for="email">Cep:</label>
	<input type="text" class="form-control" id="cep" name="cep" value="">
</div>
	
 	<button id="btn1">Buscar</button>
 	<button id="btn2">Limpa</button>


</div>
<script>
$("#btn2").on('click',function(){
	document.getElementById('resp').innerHTML ="";
	$('#cep').val("");
	$('#busca').val("");
});

$("#btn1").on('click',function(){
		var pesquisa = $('#busca').val()
		var endereco = pesquisa.replace(" ", "%20");
// 		var endereco = pesquisa.replace("ã", "a");
// 		var endereco = pesquisa.replace("á", "a");
// 		var endereco = pesquisa.replace("ó", "o");
// 		var endereco = pesquisa.replace("ê", "e");
// 		var endereco = pesquisa.replace("í", "i");
// 		var endereco = pesquisa.replace("-", "%20");

		endereco = "https://maps.googleapis.com/maps/api/geocode/json?key=AIzaSyBe_OpGrMSgvbVK3hfD4RqiaoAsIeD6gdY&new_forward_geocoder=true&address="+endereco;

			$.getJSON(endereco, function(data) {
				for (var i = 0; i < data.results.length; i++) {

 					var adress = data.results[i].formatted_address;
					var ende = data.results[i].address_components[5].long_name;
					
					$('#busca').val(adress);
// 					document.getElementById('nome').innerHTML = adress;
					
					$('#cep').val(ende);
// 					document.getElementById('end').value= ende;
					document.getElementById('resp').innerHTML = "Endereço encontrado";
				}
			});
			document.getElementById('resp').innerHTML = "Endereço NÃO encontrado";
	  });
</script>
<div id="resp" class="col-sm-12"></div>
</body>
</html>