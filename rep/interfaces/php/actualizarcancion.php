<?php
include ("conexion.php");

$titulo = $_POST["titulo"];
$album = $_POST["album"];
$id_track = $_POST["id_track"];

mysql_select_db($db, $conexion) or die ("Error al conectar en la bd");
mysql_query("UPDATE canciones SET titulo ='$titulo', album ='$album' WHERE id_track ='$id_track'");
header("Location:../php/cancion.php");

?>