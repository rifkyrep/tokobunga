<?php
/**
 * Created by PhpStorm.
 * User: Rifky_Rep
 * Date: 06/12/2016
 * Time: 21.51
 */

include "../config/db-conn.php";

$id_kategori = $_POST['id_kategori'];
$nm_kategori = $_POST['nm_kategori'];

$extensi = explode(".", $_FILES['foto']['name']);
$foto = "foto-produk-".round(microtime(true)).".".end($extensi);
$sumber = $_FILES['foto']['tmp_name'];

$upload = move_uploaded_file($sumber, "../assets/img/kategori/".$foto);
if($upload) {
    mysqli_query($connect,"INSERT into kategori(id_kategori,nama_kategori,gambar) values ('$id_kategori','$nm_kategori','$foto')")or die(mysqli_error());
    header("location: ../index.php?page=kategori");
}else{
    echo "<script>alert('Upload Gambar Gagal!!')</script>";
}
?>