<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
		$id_kategori = $_POST['id_kategori'];
		$nama_penilaian = $_POST['nama_penilaian'];
	
		require_once('koneksi.php');
	
		$no = mysqli_query($con,"select * from tbl_penilaian order by id_penilaian desc limit 0,1");
		$no_excute = mysqli_fetch_array($no);
		$kodeawal=substr($no_excute['id_penilaian'],3,4)+1;
		 if($kodeawal<10){
		  $kode='PNO000'.$kodeawal;
		 }elseif($kodeawal > 9 && $kodeawal <=99){
		  $kode='PNO00'.$kodeawal;
		 }else{
		  $kode='PNO00'.$kodeawal;
		 }

		$sql = "INSERT INTO tbl_penilaian VALUES ('$id_kategori','$kode','$nama_penilaian')";
		
		
		if(mysqli_query($con,$sql)){
			echo "Successfully";
		}else{
			echo "failed";

		}
	}else{
echo 'error';
}

?>