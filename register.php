<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
		$nid = $_POST['nid'];
		$nama_dosen = $_POST['nama_dosen'];
	
		require_once('koneksi.php');
		
		$sql = "INSERT INTO tbl_dosen VALUES ('$nid','$nama_dosen')";
		
		
		if(mysqli_query($con,$sql)){
			echo "Successfully Registered";
		}else{
			echo "Could not register";

		}
	}else{
echo 'error';
}

?>