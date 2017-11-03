<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
		//Getting values 
		$id_kategori = $_POST['id_kategori'];
		$nama_kategori = $_POST['nama_kategori'];
		
		//importing database connection script 
		require_once('koneksi.php');
		
		//Creating sql query 
		$sql = "update tbl_kategori_penilaian SET nama_kategori='$nama_kategori' WHERE id_kategori='$id_kategori'";
	
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