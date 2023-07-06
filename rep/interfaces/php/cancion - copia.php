<!doctype html>
<html lang="en">

<head >
<link rel="stylesheet" type="text/css" href="../css/style2.css"> 
<meta charset="UTF-8">
<title>
REPRODUCTORS BASE DE DATOS
</title>
<body>
<!*<form method="POST" action="cancion.php">
	<!*<label for="nickname"></label>
       <!* <input type="text" id="nickname" name="nickname" placeholder="Nickname" >
        <!*<input type="submit" value="consultar">
<div class="bar"> </div>

<div class="toolbar">
      <img src="../invitado/recursos/onmyhead.png" class="user" alt="ON MY HEAD">  

 </div>

 

      


<?php



require ("conexionc.php");
$conexion=mysqli_connect($db_host, $db_usuario, $db_contraseña);
if (mysqli_connect_errno()){
    echo "Fallo al conectar con la base de datos";
    exit();
}

mysqli_select_db($conexion,$db_nombre) or die ("no se encuentra la base de datos");
mysqli_set_charset($conexion,"utf8");

$consulta="SELECT * FROM canciones WHERE id_track='39'";
$resultados=mysqli_query($conexion,$consulta);

while ($fila=mysqli_fetch_array($resultados))
{


             $nickname=$fila['nickname'];
             $titulo=$fila['titulo'];
             $album=$fila['album'];
             $genero=$fila['genero'];
             $archivo=$fila['archivo'];
             $url=$fila['url'];




             $color="#fff";
             echo("<center><h1><font color='".$color."'>$nickname</h1><center>");
             echo("<center><h1>$titulo</h1><center>");

             //echo("<center><video src='$url' controls='controls' width='500' heigth='500' /><center>");     
             echo('<iframe width="250" height="400"  src="'.$fila['img'].'" frameborder="0"  encrypted-media" allowfullscreen></iframe><center><br><br><br>');
             

             echo('<audio controls><source src="'.$fila['url'].'"></audio controls>');






}

mysqli_close($conexion);
?>




</body>

</html>