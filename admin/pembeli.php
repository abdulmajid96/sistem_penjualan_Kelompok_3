<?php
include 'header.php';
?>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item active" aria-current="page">Member</li>
    </ol>
</nav>

<?php
$query = "SELECT * FROM pembeli";
$row = mysqli_query($conn, $query);
?>

<h3>Data member</h3>
<div class="card">
    <div class="card-body">
        <a href="pembeli-store.php"><button type="button" class="btn btn-sm btn-success" style="margin-bottom:1%; ">+ Tambah</button></a>
        <table class="table table-sm table-bordered table-hover" style=" text-align: center;">
            <thead class="table-dark">
                <th>No</th>
                <th>NIP</th>
                <th>Nama Lengkap</th>
                <th>Jenis Kelamin</th>
                <th>Action</th>
            </thead>
            <?php
            $no = 1;
            while ($data = mysqli_fetch_assoc($row)) {
                ?>
                <tr>
                    <td><?php echo $no ?></td>
                    <td><?php echo $data["nip"]; ?></td>
                    <td><?php echo $data["nama_depan"] . ' ' . $data["nama_belakang"]; ?></td>
                    <td><?php echo $data["jk"]; ?></td>
                    <td>
                        <a href="pembeli-update.php?nip=<?php echo $data['nip']; ?>"><button type="button" class="btn btn-primary btn-sm" title="Edit"><span class="fa fa-pencil"></span></button></a>
                        <a href="pembeli-delete.php?nip=<?php echo $data['nip']; ?>" onclick="deleted()"><button type="button" class="btn btn-danger btn-sm" title="Delete"><span class="fa fa-trash"></span></button></a>
                        <a href="pembeli-detail.php?nip=<?php echo $data['nip']; ?>"><button type="button" class="btn btn-info btn-sm" title="Detail"><span class="fa fa-info-circle"></span></button></a>
                    </td>
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