<?php
include 'config.php';

$kode = $_GET['nip'];

$query = "DELETE from pembeli where nip='$kode'";
mysqli_query($conn, $query);
header('location: pembeli.php');

?>