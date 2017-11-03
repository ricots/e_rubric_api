<?php
if($_SERVER['REQUEST_METHOD']=='POST'){
 //Getting values 
 $nid = $_POST['nid'];
 
 //Creating sql query
 $sql = "select * from tbl_dosen where nid='$nid'";
 
require_once('koneksi.php');

 
 //executing query
 $result = mysqli_query($con,$sql);
 
 //fetching result
 $check = mysqli_fetch_array($result);
 
 //if we got some result 
 if(isset($check)){
 //displaying success 
 echo "success";
 }else{
 //displaying failure
 echo "failure";
 }
// mysqli_close($con);
 }
 ?>