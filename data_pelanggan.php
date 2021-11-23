<?php
    require 'functions.php';
    $hasil = query("SELECT pelangganID, namaPelanggan, noTelpPelanggan, alamatPelanggan
    FROM PELANGGAN ORDER BY 1");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Tugas SBD 3 - Sewa Lapangan Futsal</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Data Pelanggan</h1>

    <center><table class='table1' border="1" cellpadding="10" cellspacing="0">
		<tr>
            <th>No</th>
            <th>ID Pelanggan</th>
			<th>Nama Pelanggan</th>
			<th>No Telp Pelanggan</th>
			<th>Alamat Pelanggan</th>
		</tr>

        <?php $i = 1; ?>
        <?php foreach ($hasil as $row): ?>
            <tr>
                <td><?= $i; ?></td>
                <td><?=$row['pelangganID']?></td>
                <td><?=$row['namaPelanggan']?></td>
                <td><?=$row['noTelpPelanggan']?></td>
                <td><?=$row['alamatPelanggan']?></td>
            </tr>
        <?php $i++; endforeach ?>
    </table></center>
    <br>
    <center><a href="index.php"><button>Kembali</button></a></center>
    </br>
</body>
</html>