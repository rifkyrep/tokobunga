<?php
/**
 * Created by PhpStorm.
 * User: Rifky_Rep
 * Date: 06/12/2016
 * Time: 22.19
 */
include "../config/db-conn.php";

$id = $_GET['id'];
$query = mysqli_query($connect,"SELECT * from kategori where id_kategori = '$id'");
while($row=mysqli_fetch_array($query)){
    ?>

<!-- Modal pop up tambah Data -->


    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Tambah Data Produk</h4>
            </div>
            <form id="form" enctype="multipart/form-data" action="models/proses_edit_kategori.php" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label" for="id_kategori">ID Kategori</label>
                        <input type="number" name="id_kategori" value="<?php echo $row['id_kategori'] ?>" class="form-control" id="id_kategori" placeholder="ID Kategori" required>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="nm_kategori">Nama Kategori</label>
                        <input type="text" name="nm_kategori" value="<?php echo $row['nama_kategori'] ?>" class="form-control" id="nm_kategori" placeholder="Nama Kategori" required>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="foto">Foto</label><br>
                        <img src="assets/img/kategori/<?php echo $row['gambar'] ?>" alt="" width="100 px">
                        <input type="file" name="foto" class="form-control" id="foto">
                    </div>
                </div>
                <div class="modal-footer">
                    <input type="submit" class="btn btn-success" name="tambah" value="Simpan">
                </div>
            </form>
        </div>
    </div>

<?php } ?>

<!--Modal Tambah Data-->