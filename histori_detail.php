<?php 

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$id_hasil_nilai = $_GET['id_hasil_nilai'];
require_once('koneksi.php');
$sql = "SELECT * FROM detail_histori  where id_hasil_nilai = '$id_hasil_nilai'";

$result = mysqli_query($con,$sql);
$number_of_rows = mysqli_num_rows($result);
$temp_array = array();


if($number_of_rows > 0){
	while ($row = mysqli_fetch_assoc($result)){
	    
	    $rata       = getRata($con,$row['id_hasil_nilai']);
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
	    
		array_push($temp_array,array(
			"nid"=>$row['nid'],
			"id_kategori"=>$row['id_kategori'],
			"nama_kategori"=>$row['nama_kategori'],
			"id_penilaian"=>$row['id_penilaian'],
			"nama_penilaian"=>$row['nama_penilaian'],

			"Sekolah_Universitas"=>utf8_encode($row['Sekolah_Universitas']),
			"Kelas"=>$row['Kelas'],
			"Mata_Pelajaran"=>$row['Mata_Pelajaran'],
			"hari_tanggal"=>$row['hari_tanggal'],

			"waktu"=>$row['waktu'],
			"id_hasil_nilai"=>$row['id_hasil_nilai'],
			"score"=>$row['score'],
			"ulasan"=>$row['ulasan'],

			"komen"=>$row['komen'],
			"solusi"=>$row['solusi'],
			"rata"=>$rata,
			"keterangan"=>$keterangan
		));
}}
 echo json_encode(array("histori_detail"=>$temp_array));



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