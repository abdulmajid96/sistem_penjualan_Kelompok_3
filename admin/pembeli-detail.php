<?php
include 'header.php';
?>

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
        <li class="breadcrumb-item"><a href="pembeli.php">Member</a></li>
        <li class="breadcrumb-item active" aria-current="page">Detail Member</li>
    </ol>
</nav>

<div class="card">
    <div class="card-body">
        <h3>Detail Data Member</h3>
        <?php
        $id = $_GET['nip'];
        $query = "SELECT * FROM pembeli WHERE nip = '$id'";
        $row = mysqli_query($conn, $query);
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
                        <td class="green">NIP</td>
                        <td><?php echo $data['nip'] ?></td>
                    </tr>
                    <tr>
                        <td class="green">Nama Lengkap</td>
                        <td><?php echo $data['nama_depan'] . ' ' . $data["nama_belakang"];?></td>
                    </tr>
                    <tr>
                        <td class="green">Alamat</td>
                        <td><?php echo $data['alamat'] ?></td>
                    </tr>
                    <tr>
                        <td class="green">No. Telepon</td>
                        <td><?php echo $data['no_tlp'] ?></td>
                    </tr>
                    <tr>
                        <td class="green">email</td>
                        <td><?php echo $data['email'] ?></td>
                    </tr>
                    <tr>
                        <td class="green">Tgl. Lahir</td>
                        <td><?php echo $data['tgl_lahir'] ?></td>
                    </tr>
                    <tr>
                        <?php
                        if($data['jk']=="L"){
                            $jk="Laki-Laki";
                        }else{
                            $jk="Perempuan";
                        }

                        ?>
                        <td class="green">Jenis Kelamin</td>
                        <td><?php echo $jk ?></td>
                    </tr>
                    <tr>
                        <td><a href="pembeli.php"><button type="button" class="btn btn-secondary"><span class="fa fa-arrow-left"></span></button></a></td>
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