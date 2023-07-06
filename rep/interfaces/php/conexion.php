<?php
 
$hostdb= "localhost";
$userdb= "root";
$passdb= "root";
$db= "onmyhead";




$conexion=mysql_connect("localhost","root","");

if(!$conexion)
{
die("No he podido conectar porque: ".mysql_error());
}
//Seleccion la base de datos
mysql_select_db($db,$conexion);

?>