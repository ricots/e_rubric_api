<?php 

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include "koneksi.php";

function getPenilaianByIdKategori($con,$id_kategori){
    $sql = "SELECT
            tbl_kategori_penilaian.nama_kategori,
            tbl_penilaian.id_penilaian,
            tbl_penilaian.nama_penilaian
        FROM
            tbl_penilaian,
            tbl_kategori_penilaian
        WHERE
            tbl_penilaian.id_kategori = tbl_kategori_penilaian.id_kategori
        AND tbl_penilaian.id_kategori = '$id_kategori'";

    $result = $con->query($sql);
    $arr_tmp=[];
    while ($row = $result->fetch_assoc()){
        $arr_tmp[] = array(
                        "id_penilaian"   => $row['id_penilaian'],
  						"nama_penilaian" => $row['nama_penilaian']
                        );
        }
    return $arr_tmp;
}

$sql     = "SELECT id_kategori, nama_kategori FROM tbl_kategori_penilaian";
$result  = $con->query($sql);

$arr_tmp = [];
while ($row = $result->fetch_assoc()) {
    $arr_tmp[] = array(
                        "id_kategori"   =>$row['id_kategori'],
                        "nama_kategori" =>$row['nama_kategori'],
                        "detail" => getPenilaianByIdKategori($con, $row['id_kategori'])
                        );
}

echo json_encode(array('penilaian' => $arr_tmp));


?>