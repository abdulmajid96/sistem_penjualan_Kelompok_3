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


$query = "UPDATE pembeli SET nama_depan='$nama_depan', nama_belakang='$nama_belakang', alamat='$alamat', no_tlp='$no_tlp', email='$email', tgl_lahir='$ttl', jk='$jkw' where nip='$nip'";
$succes = mysqli_query($conn, $query);

if($succes){
    header('location: pembeli.php');
}else{
    echo mysqli_error($conn);
}


?>