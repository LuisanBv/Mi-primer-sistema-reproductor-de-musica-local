
<?php

require_once "prueba.php";
$query="INSERT INTO usuario(nickname)
		VALUES('Daniel')";
$query2="INSERT INTO canciones(titulo)
		VALUES('Rayando el sol')";
		consultarSQL($query);
		consultarSQL($query2);
		


		