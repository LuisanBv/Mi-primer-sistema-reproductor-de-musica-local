<?php
function consultarSQL($query){
    $mysqli= new mysqli("localhost", "root", "", "onmyhead");
    if(mysqli_connect_errno()){
    echo"Hay problemas en la conexion";
    }
    $mysqli->set_charset("utf8");
    $mysqli->autocommit(FALSE);
    $mysqli->begin_transaction(MYSQLI_TRANS_START_WITH_CONSISTENT_SNAPSHOT);
    if($consulta=$mysqli->query($query)){
    if($mysqli->commit()){
    echo '<script>alert("Transaccion exitosa")</script> ';

    echo "<script>location.href='../html/transacciones.html'</script>";
    }else{
    echo "Error";
    }
    }else{
    $mysqli->rollback();
    }
    return $consulta;
}