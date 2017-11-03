<?php 
 $id_hasil_nilai = $_GET['id_hasil_nilai'];
 
 require_once('koneksi.php');

 $sql = "DELETE FROM tbl_saran WHERE id_hasil_nilai='$id_hasil_nilai'";
  $sql1 = "DELETE FROM tbl_hasil_penilaian WHERE id_hasil_nilai='$id_hasil_nilai'";
  $sql1 = "DELETE FROM tbl_pengevaluasi WHERE id_hasil_nilai='$id_hasil_nilai'";
 
 if((mysqli_query($con,$sql) && (mysqli_query($con,$sql1) && (mysqli_query($con,$sql1))))){
 echo 'Deleted Successfully';
 }else{
 echo 'Try Again';
 }
 ?>