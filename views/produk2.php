 <?php
include "models/m_produk.php";
include "config/tool.php";
$produk = new Produk($connection);

if(@$_GET['act'] == '' ) {
  ?>


    <!--setting datepicker untuk edit data -->
    <script src="assets/datepicker/js/jquery.js"></script>
    <style>
        .datepicker{z-index:1151;}
    </style>
    <script>
        $(function(){
            $("#tanggaledit").datepicker({
                format:'yyyy/mm/dd',
            });
        });
    </script>
    <!-- setting date picker -->



    <div id="page-content">
                    <!-- Datatables Header -->
                    <div class="content-header">
                        <div class="header-section">
                            <h1>
                                <i class="fa fa-table"></i>Data Produk Toko Bunga<br>
                            </h1>
                        </div>
                    </div>
                    <ul class="breadcrumb breadcrumb-top">
                        <li>Tables</li>
                        <li><a href="">Data Produk</a></li>
                    </ul>
                    <!-- END Datatables Header -->

                    <!-- Datatables Content -->
                    <div class="block full">
                        <div class="block-title"><br>&nbsp;&nbsp;&nbsp;&nbsp;
                            <button class="btn btn-alt btn-success" data-toggle="modal" data-target="#tambah"><i class="fa fa-plus"></i> Tambah Data</button>
                            <br>
                            <br>
                        </div>


                        <div class="table-responsive">
                            <table id="example-datatable" class="table table-vcenter table-condensed table-bordered">
                                <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th class="text-center">Foto</th>
                                        <th>Nama</th>
                                        <th class="text-center">Deskripsi</th>
                                        <th class="text-center">Harga</th>
                                        <th class="text-center">Stok</th>
                                        <th class="text-center">Tanggal Masuk</th>
                                        <th class="text-center">Pilihan</th>

                                    </tr>
                                </thead>
                                <tbody>
                                <?php
                                $no=1;
                                $tampil = $produk->tampil();
                                while($row = $tampil->fetch_object()){
                                    $tgl_masuk = $row->tgl_masuk;
                                ?>
                                <tr>
                                    <td align="center"><?php echo $no++."."; ?></td>
                                    <td align="center">
                                        <img src="assets/img/produk/<?php echo $row->gambar; ?>" width="180px" style="margin: 5px ">
                                    </td>
                                    <td><?php echo $row->nama_produk; ?></td>
                                    <td><?php echo $row->deskripsi; ?></td>
                                    <td class="text-center"><?php echo $row->harga; ?></td>
                                    <td class="text-center"><?php echo $row->stok; ?></td>
                                    <td class="text-center"><?php echo tglindo($tgl_masuk); ?></td>
                                    <td class="text-center">
                                        <button class="btn btn-alt btn-primary sm" data-toggle="modal" data-target="#edit" id-id_prod><i class="fa fa-edit"></i></button>
                                        <a href="?page=produk&act=del&id=<?php echo $row->id_produk; ?>" onclick="return confirm('Yakin ingin menghapus data ini?')" >
                                            <button class="btn btn-alt btn-danger sm" title="Hapus Data"><i class="fa fa-trash-o"></i></button></a>
                                    </td>
                                </tr>

                                <?php } ?>
                                    <!-- Ikutkan query diatas,agar tidak kerja 2 kali :v -->
                                </tbody>
                                 <tfoot>
                                    <tr>
                                        <th>No.</th>
                                        <th class="text-center">Foto</th>
                                        <th>Nama</th>
                                        <th class="text-center">Deskripsi</th>
                                        <th class="text-center">Harga</th>
                                        <th class="text-center">Stok</th>
                                        <th class="text-center">Tanggal Masuk</th>
                                        <th class="text-center">Pilihan</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                    <!-- END Datatables Content -->
                </div>

    <!-- Modal pop up Edit Data -->
    <div id="edit" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Edit Data Produk</h4>
                </div>
                <form id="form" enctype="multipart/form-data">
                    <div class="modal-body" id="modal-edit">
                        <div class="form-group">
                            <label class="control-label" for="nm_produk">Nama Produk</label>
                            <input type="text" name="nm_produk" class="form-control" id="nm_produk" placeholder="Nama Produk"  required>
                            <input type="hidden" id="id_produk" name="id_produk" >
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="id_kategori">ID Kategori</label>
                            <input type="number" name="id_kategori" class="form-control" id="id_kategori" placeholder="ID Kategori"  required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="deskrpisi">Deskripsi</label>
                            <textarea class="form-control" name="deskripsi" placeholder="Deskripsi" id="deskripsi" required></textarea>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="harga">Harga</label>
                            <input type="number" name="harga" class="form-control" id="harga" placeholder="Harga"  required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="stok">Stok</label>
                            <input type="number" name="stok" class="form-control" id="stok" placeholder="Stok" required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="tgl_masuk">Tanggal Masuk</label>
                            <input type="date" name="tgl_masuk" class="form-control" id="tanggaledit" placeholder="Tanggal Masuk" required>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="foto">Foto</label>
                            <div style="padding-bottom: 5px">
                                <img src="" alt="" id="pict" width="100px">
                            </div>
                            <input type="file" name="foto" class="form-control" id="foto" >
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="btn btn-success" name="edit " value="Simpan">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--Modal Edit  Data-->



    <!--script date picker untuk modal tambah data -->
    <script src="assets/datepicker/js/jquery.js"></script>
    <style>
        .datepicker{z-index:1151;}
    </style>
    <script>
        $(function(){
            $("#tanggaltambah").datepicker({
                format:'yyyy/mm/dd'
            });
        });
    </script>
    <!--script date picker untuk modal tambah data -->

 <!-- Modal pop up tambah Data -->
 <div id="tambah" class="modal fade" role="dialog">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                 <h4 class="modal-title">Tambah Data Produk</h4>
             </div>
             <form action="" method="post" enctype="multipart/form-data">
                 <div class="modal-body">
                     <div class="form-group">
                         <label class="control-label" for="nm_produk">Nama Produk</label>
                         <input type="text" name="nm_produk" class="form-control" id="nm_produk" placeholder="Nama Produk" required>
                     </div>
                     <div class="form-group">
                         <label class="control-label" for="id_kategori">ID Kategori</label>
                         <input type="number" name="id_kategori" class="form-control" id="id_kategori" placeholder="ID Kategori" required>
                     </div>
                     <div class="form-group">
                         <label class="control-label" for="deskrpisi">Deskripsi</label>
                         <textarea class="form-control" name="deskripsi" placeholder="Deskripsi" id="deskripsi" required></textarea>
                     </div>
                     <div class="form-group">
                         <label class="control-label" for="harga">Harga</label>
                         <input type="number" name="harga" class="form-control" id="harga" placeholder="Harga" required>
                     </div>
                     <div class="form-group">
                         <label class="control-label" for="stok">Stok</label>
                         <input type="number" name="stok" class="form-control" id="stok" placeholder="Stok" required>
                     </div>
                     <div class="form-group">
                         <label class="control-label" for="tanggal">Tanggal Masuk</label>
                         <input type="date" name="tgl_masuk" class="form-control" id="tanggaltambah" placeholder="Tanggal Masuk" required>
                     </div>
                     <div class="form-group">
                         <label class="control-label" for="foto">Foto</label>
                         <input type="file" name="foto" class="form-control" id="foto" required>
                     </div>
                 </div>
                 <div class="modal-footer">
                     <button type="reset" class="btn btn-danger">Reset</button>
                     <input type="submit" class="btn btn-success" name="tambah" value="Simpan">
                 </div>
             </form>
         </div>
     </div>
 </div>
 <!--Modal Tambah Data-->

 <!--Proses Tambah-->
 <?php
 if(@$_POST['tambah']){
     $nm_produk = $connection->conn->real_escape_string($_POST['nm_produk']);
     $id_kategori = $connection->conn->real_escape_string($_POST['id_kategori']);
     $deskripsi = $connection->conn->real_escape_string($_POST['deskripsi']);
     $harga = $connection->conn->real_escape_string($_POST['harga']);
     $stok = $connection->conn->real_escape_string($_POST['stok']);
     $tgl_masuk = $connection->conn->real_escape_string($_POST['tanggal']);

     $extensi = explode(".", $_FILES['foto']['name']);
     $foto = "foto-produk-".round(microtime(true)).".".end($extensi);
     $sumber = $_FILES['foto']['tmp_name'];

     $upload = move_uploaded_file($sumber, "assets/img/produk/".$foto);
     if($upload) {
         $produk->tambah($nm_produk,$id_kategori, $deskripsi, $harga, $stok, $tgl_masuk, $foto);
         header('location:?page=produk');
     }else{
         echo "<script>alert('Upload Gambar Gagal!!')</script>";
     }
 }
 ?>
 <!-- Proses Tambah -->



 <!-- Proses Edit -->

    <script src="assets/js/jquery.js"></script>
    <script type="text/javascript">

        $(document).on("click","#edit_produk", function(){
            var idprod = $(this).data('id');
            var nmprod = $(this).data('nama');
            var idkategori = $(this).data('id_kategori');
            var deskprod = $(this).data('desk');
            var hrgprod = $(this).data('hrg');
            var stokprod = $(this).data('stok');
            var tglprod = $(this).data('tgl');
            var fotoprod = $(this).data('foto');
            $("#modal-edit #nm_produk").val(nmprod);
            $("#modal-edit #id_produk").val(idprod);
            $("#modal-edit #id_kategori").val(idkategori);
            $("#modal-edit #deskripsi").val(deskprod);
            $("#modal-edit #harga").val(hrgprod);
            $("#modal-edit #stok").val(stokprod);
            $("#modal-edit #tanggal").val(tglprod);
            $("#modal-edit #pict").attr("src", "assets/img/produk/"+fotoprod)
        })


        $(document).ready(function(e) {
            $("#form").on("submit", (function(e) {
                e.preventDefault();
                $.ajax({
                    url : 'models/proses_edit_produk.php',
                    type : 'POST',
                    data : new FormData(this),
                    contentType : false,
                    cache : false,
                    processData : false,
                    success : function(msg){
                        $('.table').html(msg);
                    }
                });
            }));
        })
    </script>

 <!-- Proses Edit -->

    <?php
}else if(@$_GET['act'] == 'del'){
    $gbr_awal = $produk->tampil($_GET['id'])->fetch_object()->gambar;
    unlink("assets/img/produk/".$gbr_awal);

    $produk->hapus($_GET['id']);
    header("location: ?page=produk");
}
 ?>



