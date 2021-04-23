<?php
include 'header.php';
?>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item"><a href="laporan_penjualan.php">Laporan Penjualan</a></li>
        <li class="breadcrumb-item active" aria-current="page">Detail Laporan Penjualan</li>
    </ol>
</nav>
<?php
    $id = $_GET['kode_tr'];
    $query = "SELECT kode_tr, tanggal, b.nama_barang, jml_barang, total FROM detail_penjualan d JOIN barang b ON d.kode_barang=b.kode_barang WHERE kode_tr = '$id'";
    $row = mysqli_query($conn, $query);
?>

<div class="card">
    <div class="card-body">
        <h3>Detail Data Penjualan</h3>
        <?php
        while ($data = mysqli_fetch_array($row)) {
            ?>
            <style>
                .green {
                    background: rgba(76, 175, 80, 0.1);
                }
            </style>
            <table class="table">
                <tbody>
                    <tr>
                        <td class="green">Kode Transaksi</td>
                        <td><?php echo $data['kode_tr'] ?></td>
                    </tr>
                    <tr>
                        <td class="green">Tanggal</td>
                        <td><?php echo $data['tanggal'] ?></td>
                    </tr>
                    <tr>
                        <td class="green">Nama Barang</td>
                        <td><?php echo $data['nama_barang'] ?></td>
                    </tr>
                    <tr>
                        <td class="green">Jumlah</td>
                        <td><?php echo $data['jml_barang'] ?></td>
                    </tr>
                    <tr>
                        <td class="green">Total Harga</td>
                        <td>Rp.<?php echo number_format($data['total']) ?>,-</td>
                    </tr>
                    <tr>
                        <td><a href="laporan_penjualan.php"><button type="button" class="btn btn-secondary"><span class="fa fa-arrow-left"></span></button></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
<?php
}
?>

<?php
include 'footer.php';
?>