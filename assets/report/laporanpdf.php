<?php
/**
 * Created by PhpStorm.
 * User: Rifky_Rep
 * Date: 05/12/2016
 * Time: 23.18
 */
include "fpdf.php";
include "../../config/db-conn.php";
include "../../config/tool.php";

$pdf = new FPDF();
$pdf->AddPage();

$pdf->SetFont('Arial','B',16);
$pdf->Cell(0,5, 'Toko Bunga','0','1','C',false);
$pdf->SetFont('Arial','i',8);
$pdf->Ln(3);
$pdf->Cell(190,0.6,'','0','1','C',true);
$pdf->Ln(5);

$pdf->SetFont('Arial','B',9);
$pdf->Cell(50,5,'Laporan Data Produk','0','1','L',false);
$pdf->Ln(3);

$pdf->SetFont('Arial','B',7);
$pdf->Cell(10,6,'No.',1,0,'C');
$pdf->Cell(36,6,'Nama Produk',1,0,'C');
$pdf->Cell(60,6,'Deskripsi',1,0,'C');
$pdf->Cell(30,6,'Kategori',1,0,'C');
$pdf->Cell(14,6,'Harga',1,0,'C');
$pdf->Cell(10,6,'Stok',1,0,'C');
$pdf->Cell(30,6,'Tanggal Masuk',1,0,'C');
$pdf->Ln(2);
//mulai looping
$no = 0;
$query = mysqli_query($connect,"SELECT produk.id_produk, produk.id_kategori, kategori.id_kategori, kategori.nama_kategori, produk.nama_produk, produk.deskripsi, produk.stok, produk.harga, produk.gambar, produk.tgl_masuk from produk inner join kategori on produk.id_kategori = kategori.id_kategori;");
while($row = mysqli_fetch_array($query)){
    $tgl = $row['tgl_masuk'];
    $no++;
    $pdf->Ln(4);
    $pdf->SetFont('Arial','','7');
    $pdf->Cell(10,4,$no.".",1,0,'C');
    $pdf->Cell(36,4,$row['nama_produk'],1,0,'L');
    $pdf->Cell(60,4,$row['deskripsi'],1,0,'L');
    $pdf->Cell(30,4,$row['nama_kategori'],1,0,'L');
    $pdf->Cell(14,4,$row['harga'],1,0,'L');
    $pdf->Cell(10,4,$row['stok'],1,0,'L');
    $pdf->Cell(30,4,tglindo($tgl),1,0,'R');

}

$pdf->Output();
