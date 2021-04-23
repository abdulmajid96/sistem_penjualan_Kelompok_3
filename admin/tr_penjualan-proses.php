<?php
include 'config.php';

$kode_tr = $_POST['kode_tr'];
$tgl = $_POST['tgl'];
$pembeli = $_POST['pembeli'];
$total = $_POST['total'];
$ppn = $_POST['ppn'];
$diskon = $_POST['diskon'];
$g_total = $_POST['g_total'];

    $array1 = explode(",",$_POST['isitabel1']); //kode
    $array2 = explode(",",$_POST['isitabel2']); //nama
    $array3 = explode(",",$_POST['isitabel3']); //satuan
    $array4 = explode(",",$_POST['isitabel4']); //harga jual
    $array5 = explode(",",$_POST['isitabel5']); //jumlah
    $array6 = explode(",",$_POST['isitabel6']); //harga total
    $i = 0;
    // insert detail penjualan
    foreach ($array1 as $key) {
        $queryzzz = "INSERT INTO detail_penjualan VALUES(
            '$kode_tr',
            '$tgl',
            '$array1[$i]',
            '$array2[$i]',
            '$array3[$i]',
            '$array5[$i]',
            '$array4[$i]',
            '$array6[$i]')";
        $insert_detil = mysqli_query($conn, $queryzzz);
        $i++;
    }

//insert tabel penjualan
$query = "INSERT INTO penjualan VALUES('$kode_tr', '$tgl', '$pembeli','$total', '$ppn', $diskon, $g_total)";
$succes = mysqli_query($conn, $query);

if ($insert_detil && $succes) {
    header('location: transaksi_penjualan.php?pesan=jual_sukses');
}else{
    echo mysqli_error($con);
}
mysqli_close($conn);

?>
