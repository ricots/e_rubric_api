<?php 
	$nid = $_GET['nid'];
	require_once('koneksi.php');
	$sql = "SELECT distinct id_hasil_nilai,nid, Sekolah_Universitas,Kelas,Mata_Pelajaran FROM histori";
	
	$result = mysqli_query($con,$sql);
$number_of_rows = mysqli_num_rows($result);
$temp_array = array();

if($number_of_rows > 0){
while ($row = mysqli_fetch_assoc($result)){
array_push($temp_array,array(
	"nid"=>$row['nid'],
	"id_kategori"=>$row['id_kategori'],
	"nama_kategori"=>$row['nama_kategori'],
	"id_penilaian"=>$row['id_penilaian'],
	"nama_penilaian"=>$row['nama_penilaian'],

	"Sekolah_Universitas"=>$row['Sekolah_Universitas'],
	"Kelas"=>utf8_encode($row['Kelas']),
	"Mata_Pelajaran"=>$row['Mata_Pelajaran'],
	"hari_tanggal"=>$row['hari_tanggal'],

	"waktu"=>$row['waktu'],
	"id_hasil_nilai"=>$row['id_hasil_nilai'],
	"score"=>$row['score'],
	"ulasan"=>$row['ulasan'],

	"komen"=>$row['komen'],
	"solusi"=>$row['solusi']
 ));
}}
 echo json_encode(array("histori"=>$temp_array));

?>