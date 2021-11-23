<?php
    require 'functions.php';
    $id_sewa = $_GET['id'];
    $hasil = query("SELECT sewaID, tglSewa, DATE_FORMAT(tglSewa,'%W') AS 'hariSewa', durasiSewa, waktuMulaiSewa, metodeBayar, pelangganID, lapanganID, buktiBayar
    FROM PEMESANAN WHERE sewaID = '$id_sewa'");
?>


<!DOCTYPE html>
<html>
<head>
    <title>Tugas SBD 3 - Sewa Lapangan Futsal</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Invoice Sewa Lapangan Futsal</h1>
    <center>
    <table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<th>Sewa ID</th>
			<th>Tanggal sewa</th>
			<th>Hari sewa</th>
			<th>Durasi sewa (jam)</th>
			<th>Waktu mulai</th>
			<th>Metode Bayar</th>
            <th>Pelanggan ID</th>
            <th>Lapangan ID</th>
            <th>Bukti bayar</th>
            <th>Harga Bayar</th>
            <th>Cetak</th>
		</tr>

        <?php $i = 1; ?>
        <?php foreach ($hasil as $row): ?>
            <tr>
                <td><?=$row['sewaID']?></td>
                <td><?=$row['tglSewa']?></td>
                <td><?=$row['hariSewa']?></td>
                <td><?=$row['durasiSewa']?></td>
                <td><?=$row['waktuMulaiSewa']?></td>
                <td><?=$row['metodeBayar']?></td>
                <td><?=$row['pelangganID']?></td>
                <td><?=$row['lapanganID']?></td>
                <td><?=$row['buktiBayar']?></td>
                <td><?='Rp. '.number_format(harga($id_sewa),0,",",".")?></td>
                <td><a href="cetak.php?id=<?= $row["sewaID"]; ?>" target='_blank'><button>Cetak</button></a></td>
            </tr>
        <?php $i++; endforeach ?>
    </table>
    <br>
    <a href="index.php"><button>Kembali</button></a>
    </br>
        </center>
</body>
</html>