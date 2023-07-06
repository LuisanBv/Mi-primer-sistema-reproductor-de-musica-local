
<?php

require_once "prueba.php";
$query="INSERT INTO usuario(nickname)
		VALUES('Julio')";
$query2="INSERT INTO canciones(titulo)
		VALUES('MANA')";
		consultarSQL($query);
		consultarSQL($query2);
		


		