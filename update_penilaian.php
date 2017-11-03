<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
		//Getting values 
		$id_penilaian = $_POST['id_penilaian'];
		$nama_penilaian = $_POST['nama_penilaian'];
		
		//importing database connection script 
		require_once('koneksi.php');
		
		//Creating sql query 
		$sql = "update tbl_penilaian SET nama_penilaian='$nama_penilaian' WHERE id_penilaian='$id_penilaian'";
	
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