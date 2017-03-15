<?php
require_once "config/db-conn.php";
include "config/tool.php";

include "models/m_kategori.php";
$kategori = new Kategori($connection);

if(@$_GET['act'] == '' ) {
?>
<div id="page-content">
                    <!-- Datatables Header -->
                    <div class="content-header">
                        <div class="header-section">
                            <h1>
                                <i class="fa fa-table"></i>Kategori Produk Toko Bunga<br>
                            </h1>
                        </div>
                    </div>
                    <ul class="breadcrumb breadcrumb-top">
                        <li>Tables</li>
                        <li><a href="">Kategori Produk</a></li>
                    </ul>
                    <!-- END Datatables Header -->

                    <!-- Datatables Content -->
                    <div class="block full">
                        <div class="block-title"><br>&nbsp;&nbsp;&nbsp;&nbsp;
                            <?php if(@$_SESSION['admin']){ ?>
                            <a href="#" class="btn btn-success btn-alt " data-target="#tambah" data-toggle="modal"><i class="fa fa-plus"></i> Tambah Data</a>
                            <?php } ?>
                            <a href="assets/report/laporanpdf.php" class="btn btn-alt btn-primary" target="_blank"><i class="fi fi-pdf"></i> Eksport to PDF</a>
                            <br>
                            <br>
                        </div>
                        <div class="table-responsive">
                            <table id="example-datatable" class="table table-vcenter table-condensed table-bordered">
                                <thead>
                                    <tr>
                                        <th class="text-center">No.</th>
                                        <th class="text-center">Foto</th>
                                        <th class="text-center">ID Kategori</th>
                                        <th class="text-center">Nama Kategori</th>
                                        <th class="text-center" colspan="2">Opsi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $no = 1;
                                    $query = mysqli_query($connect,"SELECT * from kategori");
                                    while($row=mysqli_fetch_object($query)){
                                    ?>
                                    <tr>
                                        <td align="center"><?php echo $no++."."; ?></td>
                                        <td align="center">
                                            <img src="assets/img/kategori/<?php echo $row->gambar; ?>" width="100px" style="margin: 5px ">
                                        </td>
                                        <td><?php echo $row->id_kategori ?></td>
                                        <td><?php echo $row->nama_kategori ?></td>
                                        <!-- Batasi hak akses untuk pengunjung -->
                                        <?php if(!@$_SESSION['admin']){ ?>
                                            <td class="text-center">
                                                <button class="btn btn-alt btn-primary" onclick="alert('Anda harus login sebagai admin')"><i class="fa fa-edit"></i> Edit Data</button>
                                            </td>
                                            <td align="center">
                                                <button class="btn btn-alt btn-danger" onclick="alert('Anda harus login sebagai admin')"><i class="fa fa-trash-o"></i> Hapus Data</button>
                                            </td>
                                        <?php }else{ ?>
                                            <td class="text-center">
                                                <a href="#" class='open_modal' id='<?php echo $row->id_kategori; ?>'><button class="btn btn-alt btn-primary"><i class="fa fa-edit"></i> Edit Data</button></a>
                                            </td>
                                            <td align="center">
                                                <a href="?page=kategori&act=del&id=<?php echo $row->id_kategori; ?>" onclick="return confirm('Yakin ingin menghapus data ini?')" >
                                                    <button class="btn btn-alt btn-danger sm" title="Hapus Data"><i class="fa fa-trash-o"></i> Hapus Data</button>
                                                </a>
                                            </td>
                                        <?php } ?>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                                 <tfoot>
                                    <tr>
                                        <th class="text-center">No.</th>
                                        <th class="text-center">Foto</th>
                                        <th class="text-center">ID Kategori</th>
                                        <th class="text-center">Nama Kategori</th>
                                        <th class="text-center" colspan="2">Opsi</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                    <!-- END Datatables Content -->
                </div>

<!-- Modal pop up tambah Data -->
<div id="tambah" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Tambah Data Produk</h4>
            </div>
            <form id="form" enctype="multipart/form-data" action="models/input_kategori.php" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label class="control-label" for="id_kategori">ID Kategori</label>
                        <input type="number" name="id_kategori" class="form-control" id="id_kategori" placeholder="ID Kategori">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="nm_kategori">Nama Kategori</label>
                        <input type="text" name="nm_kategori" class="form-control" id="nm_kategori" placeholder="Nama Kategori" required>
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="foto">Foto</label>
                        <input type="file" name="foto" class="form-control" id="foto" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="reset" class="btn btn-warning">Reset</button>
                    <input type="submit" class="btn btn-success" name="tambah" value="Simpan">
                </div>
            </form>
        </div>
    </div>
</div>
<!--Modal Tambah Data-->


    <!--Modal Edit  Data-->
<div id="ModalEdit" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
</div>
    <!--Modal Edit  Data-->

<!-- Proses Edit -->
<script src="assets/js/jquery.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".open_modal").click(function(e) {
            var m = $(this).attr("id");
            $.ajax({
                url: "models/edit_kategori.php",
                type: "GET",
                data : {id: m,},
                success: function (ajaxData){
                    $("#ModalEdit").html(ajaxData);
                    $("#ModalEdit").modal('show',{backdrop: 'true'});
                }
            });
        });
    });
</script>

<!-- Proses Edit -->

    <!-- Proses Edit -->
    <?php
}else if(@$_GET['act'] == 'del'){

    $gbr_awal = $kategori->tampil($_GET['id'])->fetch_object()->gambar;
    unlink("assets/img/kategori/".$gbr_awal);

    $kategori->hapus($_GET['id']);
    header("location: ?page=kategori");
}
?>
