<?php
include ("conexion.php");
$nickname = $_POST["nickname"];
$contrasena = $_POST["contrasena"];

mysql_select_db($db, $conexion) or die ("Error al conectar en la bd");
mysql_query("UPDATE usuario SET contrasena ='$contrasena' WHERE nickname ='$nickname'");
header("Location:../html/log.html");

?>