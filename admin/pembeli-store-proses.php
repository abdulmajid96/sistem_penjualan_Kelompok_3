<?php
include 'config.php';

$nip = $_POST['nip'];
$nama_depan = $_POST['nama_depan'];
$nama_belakang = $_POST['nama_belakang'];
$alamat = $_POST['alamat'];
$no_tlp = $_POST['no_tlp'];
$email = $_POST['email'];
$ttl = $_POST['tgl_lahir'];
$jk = $_POST['jk'];

if($jk=='L'){
    $jkw = 'Laki-Laki';
}else{
    $jkw = 'Perempuan';
}


$query = "INSERT INTO pembeli VALUES('$nip','$nama_depan','$nama_belakang','$alamat','$no_tlp','$email','$ttl','$jkw')";
$succes = mysqli_query($conn, $query);

$querys = "SELECT * FROM pembeli";
$row = mysqli_query($conn, $querys);
while ($data = mysqli_fetch_array($row)) {

    if($succes){
        header('location: pembeli.php');
    }else if($nip==$data['nip']){
        header("location:pembeli-store.php?pesan=gagal");
    }else{
        echo mysqli_error($conn);
    }

}
