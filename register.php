<?php

include('ConeC.php');
$clavephp = $_POST['Clavetxt'];
$fotophp = addslashes(file_get_contents($_FILES['fototxt']['tmp_name']));

$usuario=$_POST['usuario'];
$contrasena=password_hash($_POST['contrasena'], PASSWORD_DEFAULT);

$sql="SELECT* FROM usuarios WHERE usuario='$usuario'";
echo $sql;
$result=$conexion->query($sql);
if($result->num_rows>0){
	echo "El usuario ya existe";
	header("location:form_reg.php");
}else{
	$sql = "INSERT INTO usuarios (idcliente, usuario, contrasena, foto) VALUES ('$clavephp', '$usuario', '$contrasena', '$fotophp')";
	if($conexion->query($sql)=== TRUE){
		 header("location:Proyect.php");
	}else{
		echo "Error:".sql."<br>".$conexion->error;
	}
}
//}
?>