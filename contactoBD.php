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
	$idClientephp=$_POST['Clientetxt'];
	$fechaphp=$_POST['Datetxt'];
	$query=("INSERT INTO datos VALUES ('$nombrephp','$phonephp','$idClientephp','$fechaphp')");

	$resultado = $conexion->query($query);

	if ($resultado) {
	header("location:Proyect.php");
	}
	?>

</body>
</html>