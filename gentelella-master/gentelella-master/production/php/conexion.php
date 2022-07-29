<?php
$server="localhost" ;
$user="root";
$pass="";
$bd="muni";
$conexion=mysqli_connect($server,$user,$pass,$bd);
if(!$conexion){
    echo "<script>alert('Error al conectar con la base de datos')</script>";
}
?>