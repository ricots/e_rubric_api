<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
		$general_comment = $_POST['general_comment'];
		$id_hasil_nilai = $_POST['id_hasil_nilai'];
		$solusi = $_POST['solusi'];
	
		require_once('koneksi.php');
		
		$sql = "INSERT INTO tbl_saran VALUES ('$id_hasil_nilai','$general_comment','$solusi')";
		
		
		if(mysqli_query($con,$sql)){
			echo "Successfully save";
		}else{
			echo "Could not save";

		}
	}else{
echo 'error';
}

?>