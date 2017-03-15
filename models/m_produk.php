<?php
/**
 * Created by PhpStorm.
 * User: Rifky_Rep
 * Date: 04/12/2016
 * Time: 08.11
 */
class Produk {

    private $mysqli;

    function __construct($conn){
        $this->mysqli = $conn;
    }

    public function tampil($id = null){
        $db = $this->mysqli->conn;
        $sql = "SELECT * from produk";
        if($id != null){
            $sql .= " WHERE id_produk = $id";
        }
        $query = $db->query($sql) or die ($db->error);
        return $query;
    }

    public function tambah($nm_produk,$id_kategori, $deskripsi, $harga, $stok, $tgl_masuk, $foto){
        $db = $this->mysqli->conn;
        $db->query("INSERT INTO produk (id_kategori,nama_produk,deskripsi,harga,stok,tgl_masuk,gambar) values ('$id_kategori', '$nm_produk', '$deskripsi', '$harga', '$stok', '$tgl_masuk', '$foto')")or die ($db->error);
    }

    public function edit($sql){
        $db = $this->mysqli->conn;
        $db->query($sql) or die ($db->error);
    }

    public function hapus($id){
        $db = $this->mysqli->conn;
        $db->query("DELETE from produk where id_produk = '$id' ") or die ($db->error);
    }

    function __destruct()
    {
        $db = $this->mysqli->conn;
        $db->close();
    }
}

?>