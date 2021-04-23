<?php
include 'header.php';
?>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item"><a href="pembeli.php">Member</a></li>
        <li class="breadcrumb-item active" aria-current="page">Update Member</li>
    </ol>
</nav>

<?php
$id = $_GET['nip'];
$query = "SELECT * FROM pembeli WHERE nip = '$id'";
$row = mysqli_query($conn, $query);
while ($data = mysqli_fetch_assoc($row)) {
    ?>
    <h3>Update Data Member</h3>
    <div class="card">
        <div class="card-body">
            <form action="pembeli-update-proses.php" method="POST">
                <div class="row form-group">
                    <div class="col">
                        <input type="text" class="form-control" placeholder="NIP" name="asc" value="<?php echo $data['nip']; ?>" disabled required>
                        <input type="hidden" name="nip" value="<?php echo $data['nip']; ?>">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-4">
                        <input type="text" class="form-control" placeholder="Nama Depan" name="nama_depan" value="<?php echo $data['nama_depan']; ?>" required>
                    </div>
                    <div class="col-md-4">
                        <input type="text" class="form-control" placeholder="Nama Belakang" name="nama_belakang" value="<?php echo $data['nama_belakang']; ?>" required>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8">
                        <div class="card" style="margin-bottom: 1em;">
                            <div class="card-header">
                                Jenis Kelamin
                            </div>
                            <div class="card-body">
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" id="customRadioInline1" value="L" name="jk" <?= $data['jk'] == "L" ? "checked" : "" ?> class="custom-control-input">
                                    <label class="custom-control-label" for="customRadioInline1">Laki - Laki</label>
                                </div>
                                <div class="custom-control custom-radio custom-control-inline">
                                    <input type="radio" id="customRadioInline2" value="P" name="jk" <?= $data['jk'] == "P" ? "checked" : "" ?> class="custom-control-input">
                                    <label class="custom-control-label" for="customRadioInline2">Perempuan</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" placeholder="Alamat" name="alamat" rows="3"><?php echo $data['alamat']; ?></textarea>
                        </div>
                        <div class="form-group">
                            <input type="number" class="form-control" placeholder="No. Telepon" name="no_tlp" value="<?php echo $data['no_tlp']; ?>" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email" name="email" value="<?php echo $data['email']; ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Tanggal Lahir</label>
                            <input type="date" class="form-control" placeholder="Tanggal Lahir" name="tgl_lahir" value="<?php echo $data['tgl_lahir']; ?>" required>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <a href="pembeli.php"><button type="button" class="btn btn-secondary"><span class="fa fa-arrow-left"></span></button></a>
                    <input type="submit" class="btn btn-primary" value="Update">
                </div>
            </form>
        </div>
    </div>
<?php
}
?>

<?php
include 'footer.php';
?>