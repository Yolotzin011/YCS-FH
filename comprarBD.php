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
	$nombrephp=$_POST['Nombretxt'];
	$phonephp=$_POST['Phonetxt'];
	$direccionphp=$_POST['Direcciontxt'];
	$correophp=$_POST['emailtxt'];
	$preciophp=$_POST['Preciotxt'];
	$categoriaphp=$_POST['Categoriatxt'];
	$clavephp=$_POST['Articulotxt'];
	$idClientephp=$_POST['Clientetxt'];

	$query=("INSERT INTO comp2 VALUES ('$clavephp','$categoriaphp','$preciophp','$nombrephp','$phonephp','$direccionphp','$correophp','$idClientephp')");

	$resultado = $conexion->query($query);

	if ($resultado) {
	header("location:Coleccion.php");
	}
	?>

</body>
</html>