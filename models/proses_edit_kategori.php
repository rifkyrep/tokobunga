<?php
/**
 * Created by PhpStorm.
 * User: Rifky_Rep
 * Date: 08/12/2016
 * Time: 08.42
 */

include "../config/db-conn.php";

$id = $_POST['id_kategori'];
$nama = $_POST['nm_kategori'];
$query = mysqli_query($connect,"SELECT * from kategori where id_kategori = '$id'");
$row=mysqli_fetch_array($query);
$gbr_awal = $row ['gambar'];

    $pict = $_FILES['foto']['name'];
    $extensi = explode(".", $_FILES['foto']['name']);
    $foto = "foto-produk-" . round(microtime(true)) . "." . end($extensi);
    $sumber = $_FILES['foto']['tmp_name'];

    if ($pict == "") {
        mysqli_query($connect, "UPDATE  kategori set id_kategori = '$id', nama_kategori = '$nama' where id_kategori = '$id'");
        header('location: ../index.php?page=kategori');
    } else {
        unlink("../assets/img/kategori/" . $gbr_awal);


        $upload = move_uploaded_file($sumber, "../assets/img/kategori/" . $foto);
        if ($upload) {
            mysqli_query($connect, "UPDATE kategori set id_kategori = '$id', nama_kategori = '$nama',gambar = '$foto' where id_kategori = '$id'");
            header('location: ../index.php?page=kategori');
        } else {
            echo "<script>alert('Upload Gambar Gagal!!')</script>";
        }
    }

?>