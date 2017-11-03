<?php 
	require_once('koneksi.php');
	$sql = "SELECT * FROM tbl_kategori_penilaian";
	
	$result = mysqli_query($con,$sql);
$number_of_rows = mysqli_num_rows($result);
$temp_array = array();

if($number_of_rows > 0){
while ($row = mysqli_fetch_assoc($result)){
array_push($temp_array,array(
	"id_kategori"=>$row['id_kategori'],
	"nama_kategori"=>$row['nama_kategori']
 ));
}}
 echo json_encode(array("list_kategori"=>$temp_array));

?>