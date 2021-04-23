<?php
include 'header.php';
?>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Laporan Penjualan</li>
    </ol>
</nav>

<?php
$query = "SELECT * FROM penjualan p JOIN pembeli pem ON p.nip = pem.nip";
$row = mysqli_query($conn, $query);
?>


<h3>Laporan Penjualan</h3>
<div class="card">
    <div class="card-body">
        <table class="table table-sm table-bordered table-hover" style=" text-align: center;">
            <thead class="table-dark">
                <th>No</th>
                <th>Kode Transaksi</th>
                <th>Tanggal</th>
                <th>Pembeli</th>
                <th>Total</th>
                <th>Action</th>
            </thead>
            <?php
            $no = 1;
            while ($data = mysqli_fetch_assoc($row)) {
                ?>
                <tr>
                    <td><?php echo $no ?></td>
                    <td><?php echo $data["kode_tr"]; ?></td>
                    <td><?php echo $data["tanggal"]; ?></td>
                    <td><?php echo $data["nama_depan"] . ' ' . $data["nama_belakang"]; ?></td>
                    <td>Rp. <?php echo number_format($data["grandtotal"]); ?></td>
                    <td>
                        <a href="Laporan_penjualan-detail.php?kode_tr=<?php echo $data['kode_tr']; ?>"><button type="button" class="btn btn-info btn-sm" title="Detail"><span class="fa fa-info-circle"></span></button></a>
                    </td>
                </tr>
                <?php $no++;
            } ?>
        </table>
    </div>
</div>
<?php
include 'footer.php';
?>