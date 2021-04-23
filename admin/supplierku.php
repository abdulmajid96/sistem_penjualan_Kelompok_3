<?php
include "config.php";


    $cuk = $_GET["id"];

    $query = "SELECT * FROM supplier WHERE kode_supplier='$cuk'";
    $row = mysqli_query($conn, $query);
    while ($data = mysqli_fetch_assoc($row)) {
       echo json_encode($data);
    }

?>