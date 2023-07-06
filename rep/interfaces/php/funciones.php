<?php

$funcion = $_POST["funcion"];

$conexion=mysql_connect("localhost","root","");
$db=mysql_select_db("onmyhead", $conexion);


if (!$conexion->query("CALL $funcion")) {
    echo "Falló CALL: (" . $conexion->errno . ") " . $conexion->error;
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
