<?php
/**
 * Created by PhpStorm.
 * User: Rifky_Rep
 * Date: 06/12/2016
 * Time: 09.26
 */

class Kategori {
    private $mysqli;

    function __construct($conn){

        $this->mysqli = $conn;
    }

    public function tampil($id = null){
        $db = $this->mysqli->conn;
        $sql = "SELECT * from kategori";
        if($id != null){
            $sql .=" where id_kategori = $id";
        }
        $query = $db->query($sql) or die($db->error);
        return $query;
    }

    public function tambah($id_kategori,$nm_kategori,$foto){
        $db = $this->mysqli->mysqli->conn;
        $db->query("INSERT into kategori(id_kategori,nama_kategori,gambar) values ('$id_kategori','$nm_kategori','$foto')")or die($db->error);

    }

    public function edit($sql){
        $db = $this->mysqli->conn;
        $db->query($sql)or die($db->error);
    }

    public function hapus($id){
        $db = $this->mysqli->conn;
        $db->query("DELETE from kategori where id_kategori = '$id'")or die($db->error);
    }

    function __destruct()
    {
    $db = $this->mysqli->conn;
    $db->close();
    }
}

?>