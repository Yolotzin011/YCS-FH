<?php
include 'ConeC.php';
$usuario=$_POST['usuario'];

if(isset($_POST['usuario'])){
	$usuario=$_POST['usuario'];
	$contrasena=$_POST['contrasena'];

	$sql="SELECT* FROM usuarios WHERE usuario='$usuario'";
	$result=$conexion->query($sql);
	if($result->num_rows>0){
		$row=$result->fetch_assoc();
		$hash=$row['contrasena'];
		 if(password_verify($contrasena,$hash)){
		 	echo "Inicio de sesion exitosa";
		 	 header("location:Proyect.php");
		 }else{
		 	echo "Contraseña incorrecta";
		 	header("location:form_login.php");
		 	
		 }
	}else{
		echo "El usuario no existe";
		header("location:form_reg.php");

	}

	}

?>