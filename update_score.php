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
		
		//Creating sql query 
		$sql = "update tbl_hasil_penilaian set score='$score',ulasan = '$ulasan' where id_penilaian='$id_penilaian' and id_hasil_nilai ='$id_hasil_nilai'";
		
		//Updating database table 
		if(mysqli_query($con,$sql)){
			echo 'sukses';
		}else{
			echo 'coba lagi';
		}
		
		//closing connection 
		mysqli_close($con);
}
?>