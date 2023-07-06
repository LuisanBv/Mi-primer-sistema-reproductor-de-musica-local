<?php
include ("conexion.php");

$id_track = $_POST["id_track"];

mysql_select_db($db, $conexion) or die ("Error al conectar en la bd");
mysql_query("DELETE FROM `canciones` WHERE id_track=$id_track");
header("Location:../html/eliminarcancion.html");

?>