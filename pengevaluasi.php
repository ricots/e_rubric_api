<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
		$id_hasil_nilai = $_POST['id_hasil_nilai'];
		$sekolah_universitas = $_POST['sekolah_universitas'];
		$kelas = $_POST['kelas'];
		$mata_pelajaran = $_POST['mata_pelajaran'];
		$topik_evaluasi = $_POST['topik_evaluasi'];
		$hari_tanggal = $_POST['hari_tanggal'];
		$waktu = $_POST['waktu'];
		$nid = $_POST['nid'];
		$id_hasil_nilai = $_POST['id_hasil_nilai'];

		require_once('koneksi.php');
		
		$no = mysqli_query($con,"select * from tbl_pengevaluasi order by id_hasil_nilai desc limit 0,1");
		$no_excute = mysqli_fetch_array($no);
		$kodeawal=substr($no_excute['id_hasil_nilai'],3,4)+1;
 		if($kodeawal<10){
  		$kode='EVO000'.$kodeawal;
 		}elseif($kodeawal > 9 && $kodeawal <=99){
  		$kode='EVO00'.$kodeawal;
 		}else{
  		$kode='EVO00'.$kodeawal;
 		}

		$sql = "INSERT INTO tbl_pengevaluasi VALUES ('$id_hasil_nilai','$sekolah_universitas','$kelas','$mata_pelajaran','$topik_evaluasi','$hari_tanggal','$waktu','$nid')";
	
		
		if(mysqli_query($con,$sql)){
			echo "Successfully";
		}else{
			echo "Could not save";

		}
	}else{
echo 'error';
}

?>