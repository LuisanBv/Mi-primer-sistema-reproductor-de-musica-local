<?php
session_start();
$nickname=$_SESSION['nickname'];

$conexion=mysql_connect("localhost","root","");
$db=mysql_select_db("onmyhead", $conexion);
$consulta="DELETE FROM usuario WHERE nickname ='" .$nickname."'";
mysql_query($consulta);

header("Location:../html/registro.html");
exit();
 mysql_close($conexion);
?>