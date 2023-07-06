<?php
$nickname = $_POST["nickname"];
$email = $_POST["email"];
$contrasena = $_POST["contrasena"];


$conexion=mysql_connect("localhost","root","");
$db=mysql_select_db("onmyhead", $conexion);
$consulta="INSERT INTO usuario(`nickname`, `email`, `contrasena`) 
           VALUES ('$nickname','$email','$contrasena')";

$verificar_usuario=mysql_query("SELECT * FROM usuario WHERE email= '$email'");
if (mysql_num_rows($verificar_usuario) >0) {
	echo '<script> 
		alert ("Este Usuario Ya Esta Registrado"); 
		///regresar ahi mismo///
		window.history.go(-1); 
		</script>';
	exit;
           }           

$res=mysql_query($consulta);  
if (!$res) {
	echo '<script> 
		alert ("Error Al Registrarse"); 
		window.history.go(-1); 
		</script>';
	exit;
}
else{
	echo '<script> 
		alert ("Se ha regristrado exitosamente");
			
		</script>';
		header("Location:../html/log.html");	

	exit;


}
         mysql_close($conexion);	
         
              ?>
