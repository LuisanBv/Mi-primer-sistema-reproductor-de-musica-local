
<?php



session_start();
	require("conexionbd.php");

	$nickname=$_POST['nickname'];
	$contrasena=$_POST['contrasena'];
	$contrasena=$_POST['contrasena'];

	$AD=mysqli_query($mysqli,"SELECT * FROM usuario WHERE nickname='$nickname'");
	if($JC=mysqli_fetch_assoc($AD)){
		if($contrasena==$JC['contra']){
			$_SESSION['nickname']=$JC['nickname'];
			$_SESSION['email']=$JC['email'];
			

			echo '<script>alert("BIENVENIDO ADMINISTRADOR")</script> ';
			echo "<script>location.href='../html/paneladmin.html'</script>";
		
		}
	}


	$A=mysqli_query($mysqli,"SELECT * FROM usuario WHERE nickname='$nickname'");
	if($CJ=mysqli_fetch_assoc($A)){
		if($contrasena==$JC['contrasena']){
			$_SESSION['nickname']=$JC['nickname'];
			$_SESSION['email']=$JC['email'];
			

			echo '<script>alert("BIENVENIDO USUARIO")</script> ';
						echo "<script>location.href='../html/webplayer.html'</script>";
			
		 }  
		  }  


?>