<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
		$id_kategori = $_POST['id_kategori'];
		$nama_kategori = $_POST['nama_kategori'];
	
		require_once('koneksi.php');
	
		$no = mysqli_query($con,"select * from tbl_kategori_penilaian order by id_kategori desc limit 0,1");
		$no_excute = mysqli_fetch_array($no);
		$kodeawal=substr($no_excute['id_kategori'],3,4)+1;
		 if($kodeawal<10){
		  $kode='KTO000'.$kodeawal;
		 }elseif($kodeawal > 9 && $kodeawal <=99){
		  $kode='KTO00'.$kodeawal;
		 }else{
		  $kode='KTO00'.$kodeawal;
		 }

		$sql = "INSERT INTO tbl_kategori_penilaian VALUES ('$kode','$nama_kategori')";
		
		
		if(mysqli_query($con,$sql)){
			echo "Successfully";
		}else{
			echo "failed";

		}
	}else{
echo 'error';
}

?>