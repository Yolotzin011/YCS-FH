<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<body>
	<?php
	include("ConeC.php");
	$idComentphp=$_POST['idComentxt'];
	$idClientephp=$_POST['Clientetxt'];
	$clavephp=$_POST['Articulotxt'];
	$nombrephp=$_POST['Nombretxt'];
	$phonephp=$_POST['Phonetxt'];
	$Comentphp=$_POST['Comentariotxt'];
	
	$query=("INSERT INTO comentario VALUES ('$idComentphp','$idClientephp','$clavephp','$nombrephp','$phonephp','$Comentphp')");

	$resultado = $conexion->query($query);

	if ($resultado) {
	header("location:Coleccion.php");
	}
	?>

</body>
</html>