<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Untitled Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<style>
#p
{ 
text-align:center;
}


.table1 {
    border: 1px solid black;
}

</style>
<body >
 
<!-- <form id="form1" name="form1" method="GET" action="cetak_nilai.php">

  <p align="center"><strong>###<br>###<br> ###<br>
  <hr color="#000000" width="100%" size="10"> </p>
  
  <p align="center"><strong>### </strong>
  <p align="center">
 </p> -->
 
 <?php
$nama_dokumen='E-RUBRIC'; //Beri nama file PDF hasil.
define('_MPDF_PATH','mpdf60/');
include(_MPDF_PATH . "mpdf.php");
$mpdf=new mPDF('utf-8', 'A4'); // Create new mPDF Document
 
//Beginning Buffer to save PHP variables and HTML tags
ob_start(); 

include 'koneksi.php';
$id_penilaian = $_GET['id_hasil_nilai'];


function getRata($con, $id_hasil_nilai){
    $sql = "SELECT
               SUM(score) / 15 as nilai
           FROM
               tbl_hasil_penilaian
           WHERE
               id_hasil_nilai = '$id_hasil_nilai'
           GROUP BY id_hasil_nilai";

   $result = mysqli_query($con,$sql);
   
   $nilai;
   while ($row = mysqli_fetch_assoc($result)){
       $nilai = $row['nilai'];
   }

   return $nilai;
}


?>

<h2 class="text-center">E-RUBRIC LESSON STUDY</h2>

<hr>

<?php 
    $sql1   = " SELECT tbl_pengevaluasi.*, tbl_dosen.* 
                FROM `tbl_pengevaluasi`, tbl_dosen 
                WHERE tbl_pengevaluasi.nid = tbl_dosen.nid 
                AND id_hasil_nilai ='$id_penilaian'";
    $query1 = mysqli_query($con,$sql1) or die(mysqli_error($con));
    while ($hasil = mysqli_fetch_assoc($query1)) {
?>

<!-- tabel header -->
<table width="100%">
    <tr>
        <td>Sekolah</td>
        <td>: <?= $hasil['Sekolah_Universitas'] ?></td>        
        <td width="10%"></td>
        <td>Hari/Tanggal</td>
        <td>: <?= $hasil['hari_tanggal'] ?></td>   
    </tr>
    <tr>
        <td>Kelas</td>
        <td>: <?= $hasil['Kelas'] ?></td>
        <td width="10%"></td>
        <td>Waktu</td>
        <td>: <?= $hasil['waktu'] ?></td>   
    </tr>
    <tr>
        <td>Mata Pelajaran/Mata Kuliah</td>        
        <td>: <?= $hasil['Mata_Pelajaran'] ?></td>
        <td width="1%"></td>
        <td>Guru/Dosen Model</td>
        <td>: <?= $hasil['nama_dosen'] ?></td>   
    </tr>
    <tr>
        <td>Topik</td>
        <td>: <?= $hasil['topik_evaluasi'] ?></td>
    </tr>
</table>

<?php } ?>

<br><br>

<!-- table content -->
<table class"table table-bordered" border="1" cellpadding="5">
    <tr>
        <td><b>No</b></td>
        <td><b>Aspek</b></td>
        <td><b>Nilai</b></td>
        <td><b>Ulasan/Komentar</b></td>  
    </tr>
  <?php
    $no = 0;
    $number = 1;   

    $sql = "SELECT
                tbl_hasil_penilaian.id_hasil_nilai,
                tbl_kategori_penilaian.nama_kategori,
                tbl_penilaian.nama_penilaian,
                tbl_hasil_penilaian.score,
                tbl_hasil_penilaian.ulasan
            FROM
                tbl_hasil_penilaian,
                tbl_kategori_penilaian,
                tbl_penilaian    
            WHERE
                tbl_kategori_penilaian.id_kategori = tbl_penilaian.id_kategori 
                AND tbl_hasil_penilaian.id_penilaian = tbl_penilaian.id_penilaian
                AND tbl_hasil_penilaian.id_hasil_nilai = '$id_penilaian'  
            ORDER BY `tbl_penilaian`.`id_penilaian` ASC";
    $query = mysqli_query($con,$sql) or die(mysqli_error($con));
    while ($hasil = mysqli_fetch_assoc($query)) {
  ?>

    <?php 
        if($no % 3 == 0) { 
            $number = 1;
    ?>
    <tr>
       <td colspan="4"><b> <?= $hasil['nama_kategori'] ?></b></td>
    </tr>
    <?php  } $no++;?>     
    <tr>
        <td><?= $number++ ?></td>
        <td><?= $hasil['nama_penilaian'] ?></td>
        <td><?= $hasil['score'] ?></td>
        <td><?= $hasil['ulasan'] ?></td>
    </tr>
    
  <?php } ?>

    <tr>
        <td colspan="2">Total Skor</td>
        <td><?= $rata = getRata($con,$id_penilaian); ?></td>
        <td>
            <?php 
                $keterangan;
                if($rata <= 60){
                    $keterangan = "kurang";
                }else if($rata >= 60 && $rata <= 70){
                    $keterangan = "cukup";
                }else if($rata >= 71 && $rata <= 85){
                    $keterangan = "baik";
                }else if($rata >= 86 && $rata <= 100){
                    $keterangan = "sangat baik";
                }
                echo $keterangan;
            ?>
        </td>
    </tr>

    <?php 
        $sql2   = "SELECT * FROM `tbl_saran` WHERE id_hasil_nilai ='$id_penilaian'";
        $query2 = mysqli_query($con,$sql2) or die(mysqli_error($con));
        while ($hasil = mysqli_fetch_assoc($query2)) {
    ?>
    <tr>
        <td colspan="4">General Comment</td>
    </tr>
    <tr>
        <td colspan="4"><?= $hasil['komen'] ?></td>
    </tr>
    <tr>
        <td colspan="4">Solusi</td>
    </tr>
    <tr>
        <td colspan="4"><?= $hasil['solusi'] ?></td>
    </tr>
    <?php } ?>
</table>

<!-- </form> -->
</body>
</html>



<?php
    $html = ob_get_contents(); //Proses untuk mengambil hasil dari OB..
    ob_end_clean();
    //Here convert the encode for UTF-8, if you prefer the ISO-8859-1 just change for $mpdf->WriteHTML($html);
    $mpdf->WriteHTML(utf8_encode($html));
    $mpdf->Output($nama_dokumen.".pdf" ,'I');
    exit;
?>