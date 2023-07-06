<?php
$nickname = $_POST["nickname"];
$titulo = $_POST["titulo"];
$album = $_POST["album"];
$img = $_POST["img"];
$url = $_POST["url"];



$conexion=mysql_connect("localhost","root","");
$db=mysql_select_db("onmyhead", $conexion);
$consulta="INSERT INTO canciones(`nickname`, `titulo`, `album`, `img`, `url`) 
           VALUES ('$nickname','$titulo','$album', '$img', '$url')";

$verificar_usuario=mysql_query("SELECT * FROM canciones WHERE url= '$url'");
if (mysql_num_rows($verificar_usuario) >0) {
	echo '<script> 
		alert ("Esta Cancion ya esta cargada en la plataforma"); 
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
		alert ("Se ha registrado exitosamente");
			
		</script>';
		header("Location:../php/cancion.php");	

	exit;


}
         mysql_close($conexion);	
         
              ?>
