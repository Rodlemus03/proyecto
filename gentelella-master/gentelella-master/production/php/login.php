<?php
include("conexion.php");
global $conexion;
if(isset($_POST['b1'])){
    $usuario=$_POST['usuarioIngresar'];
    $password=$_POST['passwordIngresar'];
    $bandera=0;
    //Consulta a la base de datos

    $consultaSQL="SELECT * FROM usuariosmuni";
    $result=mysqli_query($conexion,$consultaSQL);
    while($r=mysqli_fetch_array($result)){
        if($usuario==$r['usuario'] and $password==$r['password']){
            $bandera=1;}
    }
    if($bandera==1){echo "<script>window.location='../administrativo.html';</script>";}else{echo "<script>alert('Credenciales incorrectas ');window.location='../login.html'</script>";}

}if(isset($_POST['b2'])){
    $dominio="@ajsolutions.com";
    $newName=$_POST['nombreNuevo'];
    $newPass=$_POST['passNueva'];
    $nuevoUsuario=$newName.$dominio;
    echo $nuevoUsuario;
    $consultaSQL2="INSERT INTO usuariosmuni(usuario,password) VALUES('$nuevoUsuario','$newPass')";
    $result=mysqli_query($conexion,$consultaSQL2);
    if($result){echo "<script>alert('Usuario creado correctamente');window.location='../login.html'</script>";}
}
?>