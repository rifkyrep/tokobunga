
<?php
session_start();
include"../config/db-conn.php";
if(@$_SESSION['admin']){
    $sesi = $_SESSION['admin'];
}elseif(@$_SESSION['visitor']) {
    $sesi = $_SESSION['visitor'];
}
?>
<?php
/**
 * Created by PhpStorm.
 * User: Rifky_Rep
 * Date: 11/12/2016
 * Time: 08.09
 */

    include "../config/db-conn.php";
    $user = $_POST['username'];
    $pass = $_POST['pass'];
    $nama = $_POST['nama'];
    $email = $_POST['email'];

    mysqli_query($connect, "update login set username = '$user', pass = '$pass', nama = '$nama', email = '$email', password = md5('$pass') where id = '$sesi'") or die(mysqli_error());
    header('location: ../?page=editprofil');
?>