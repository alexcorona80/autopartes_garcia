<?php
require_once("conexion.php");
//***************************************************************************
//Preguntamos si el usuario existe en la base de datos
$sql="select user from promociones
where
user='".$_POST["login"]."'";
//$res=mysql_db_query($bd,$sql,$con);
$res=mysqli_query($con,$sql);
if (mysqli_num_rows($res) == 0)
{
	echo "<script type='text/javascript'>
		alert('El usuario ".$_POST["login"]." no existe en la base de datos');
		window.location='productos.php';
	</script>";
}else
{
//******************************************************************************
//Ahora preguntamos el el login y el password coinciden en la base de datos
$consulta="select * from  promociones
where
user='".$_POST["login"]."'
and
pass='".$_POST["pass"]."' ";
$result=mysqli_query($con,$consulta);
if (mysqli_num_rows($result) == 0)
{
	echo "<script type='text/javascript'>
		alert('El usuario y el pass ingresados no conciden');
		window.location='productos.php';
	</script>";
}else
{
//******************************************************************************
//Ahora le damos acceso a nuestros contenidos restringidos
	header("Location: productos_int.php");
//******************************************************************************
}
//******************************************************************************
}
/*
create table usuarios 
(
 id_usuario int not null auto_increment primary key, 
 nombre varchar (100), 
 user varchar (50), 
 pass varchar (50)
)
*/
?>