<?php
/**
 * Created by PhpStorm.
 * User: Rifky_Rep
 * Date: 04/12/2016
 * Time: 19.20
 */

require_once('../config/+koneksi.php');
require_once('../models/database.php');
include "../models/m_produk.php";

$connection = new Database($host,$user,$pass,$database);
$produk = new Produk($connection);

$id_produk = $_POST['id_produk'];
$nm_produk = $connection->conn->real_escape_string($_POST['nm_produk']);
$id_kategori = $connection->conn->real_escape_string($_POST['id_kategori']);
$deskripsi = $connection->conn->real_escape_string($_POST['deskripsi']);
$harga = $connection->conn->real_escape_string($_POST['harga']);
$stok = $connection->conn->real_escape_string($_POST['stok']);
$tgl_masuk = $connection->conn->real_escape_string($_POST['tgl_masuk']);

$pict = $_FILES['foto']['name'];
$extensi = explode(".", $_FILES['foto']['name']);
$foto = "foto-produk-".round(microtime(true)).".".end($extensi);
$sumber = $_FILES['foto']['tmp_name'];

if($pict == "") {
    $produk->edit("UPDATE produk set nama_produk = '$nm_produk',id_kategori = '$id_kategori',deskripsi = '$deskripsi',harga = '$harga',stok = '$stok',tgl_masuk = '$tgl_masuk' where id_produk = '$id_produk' ");
    echo "<script>window.location='?page=produk';</script>";
}else{
    $gbr_awal = $produk->tampil($id_produk)->fetch_object()->gambar;
    unlink("../assets/img/produk/".$gbr_awal);

    $upload = move_uploaded_file($sumber, "../assets/img/produk/".$foto);
    if($upload) {
        $produk->edit("UPDATE produk set nama_produk = '$nm_produk',id_kategori = '$id_kategori',deskripsi = '$deskripsi',harga = '$harga',stok = '$stok',tgl_masuk = '$tgl_masuk',gambar = '$foto' where id_produk = '$id_produk' ");
        echo "<script>window.location='?page=produk';</script>";
    }else{
        echo "<script>alert('Upload Gambar Gagal!!')</script>";
    }
}
?>

