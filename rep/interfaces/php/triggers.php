<?php

$trigger = $_POST["trigger"];

$conexion=mysql_connect("localhost","root","");
$db=mysql_select_db("onmyhead", $conexion);

$consulta="$trigger";
       

$res=mysql_query($consulta);  
if (!$res) {
	echo '<script> 
		alert ("Error Al implementar"); 
		window.history.go(-1); 
		</script>';
	exit;
}
else{
	echo '<script> 
		alert ("Se ha implementado exitosamente");
			
		</script>';
		header("Location:../html/log.html");	

	exit;


}
         mysql_close($conexion);	
         
              ?>
