<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
		//Getting values 
		$id_penilaian = $_POST['id_penilaian'];
		$id_hasil_nilai = $_POST['id_hasil_nilai'];
		$score = $_POST['score'];
		$ulasan = $_POST['ulasan'];
		$komen = $_POST['komen'];
		$solusi = $_POST['solusi'];
		
		//importing database connection script 
		require_once('koneksi.php');
		
		$sql1 = "update tbl_saran set komen='$komen',solusi = '$solusi' where id_hasil_nilai ='$id_hasil_nilai'";
		
		//Updating database table 
		if(mysqli_query($con,$sql1)){
			echo 'sukses';
		}else{
			echo 'coba lagi';
		}
		
		//closing connection 
		mysqli_close($con);
}
?>