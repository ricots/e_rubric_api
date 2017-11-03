<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
		$id_penilaian = $_POST['id_penilaian'];
		$id_hasil_nilai = $_POST['id_hasil_nilai'];
		$score = $_POST['score'];
		$ulasan = $_POST['ulasan'];
	
		require_once('koneksi.php');
		
		$sql = "INSERT INTO tbl_hasil_penilaian (id_hasil_nilai,id_penilaian,score,ulasan) VALUES ('$id_hasil_nilai','$id_penilaian','$score','$ulasan')";
		
		
		if(mysqli_query($con,$sql)){
			echo "Successfully save";
		}else{
			echo "Could not save";

		}
	}else{
echo 'error';
}

?>