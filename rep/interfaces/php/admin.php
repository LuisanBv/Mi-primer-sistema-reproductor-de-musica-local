<?php
include 'config.php';
if (isset($_POST['submit'])) {   
    if(is_uploaded_file($_FILES['fichero']['tmp_name'])) { 
     
     
      // creamos las variables para subir a la db
        $ruta = "upload/"; 
        $nombrefinal= trim ($_FILES['fichero']['name']); //Eliminamos los espacios en blanco
        $nombrefinal= ereg_replace (" ", "", $nombrefinal);//Sustituye una expresión regular
        $upload= $ruta . $nombrefinal;

        //$nombreimagenfinal= trim ($_FILES['imagen']['name']);
        //$nombreimagenfinal= ereg_replace (" ", "", $nombrefinal);//Sustituye una expresión regular
        //$upload= $ruta . $nombreimagenfinal;  



        if(move_uploaded_file($_FILES['fichero']['tmp_name'], $upload)) { //movemos el archivo a su ubicacion 
                    
                    echo "<b>successful upload!. Datos:</b><br>";  
                    echo "Nombre: <i><a href=\"".$ruta . $nombrefinal."\">".$_FILES['fichero']['name']."</a></i><br>";  
                    echo "Tipo MIME: <i>".$_FILES['fichero']['type']."</i><br>";  
                    echo "Peso: <i>".$_FILES['fichero']['size']." bytes</i><br>";  
                    echo "<br><hr><br>";  
                         


                   $nombre  = $_POST["nombre"]; 
                   $description  = $_POST["description"]; 


                   $query = "INSERT INTO archivos (name,description,ruta,tipo,size) 
    VALUES ('$nombre','$description','".$nombrefinal."','".$_FILES['fichero']['type']."','".$_FILES['fichero']['size']."')"; 

       mysql_query($query) or die(mysql_error()); 
       echo "The file '".$nombre."' has been uploaded successfully <br>";       
        }  
    }  
 } 
?> 