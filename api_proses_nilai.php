<?php 
	$id_kategori = $_GET['id_kategori'];
	require_once('koneksi.php');
	$sql = "SELECT * FROM penilaiantokategori where id_kategori = '$id_kategori'";
	
	$result = mysqli_query($con,$sql);
$number_of_rows = mysqli_num_rows($result);
$temp_array = array();

if($number_of_rows > 0){
while ($row = mysqli_fetch_assoc($result)){
array_push($temp_array,array(
	"id_penilaian"=>$row['id_penilaian'],
	"nama_penilaian"=>$row['nama_penilaian'],
	/*"score">$row['score'],
	"ulasan"=>$row['ulasan']*/
 ));
}}
 echo json_encode(array("list_kategori"=>$temp_array));

?>