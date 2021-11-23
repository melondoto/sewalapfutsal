<?php
    require 'functions.php';
    $hasil = query("SELECT sewaID, tglSewa, DATE_FORMAT(tglSewa,'%W') AS 'hariSewa', durasiSewa, waktuMulaiSewa, metodeBayar, pelangganID, lapanganID, buktiBayar
    FROM PEMESANAN" );
?>

<!DOCTYPE html>
<html>
<head>
    <title>Tugas SBD 3 - Sewa Lapangan Futsal</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1 id='h1'>Invoice Sewa Lapangan Futsal</h1>

    <a id='a1' href="pelanggan.php">
        <button>Tambah Pelanggan</button>
    </a>
    <a id='a1' href="sewa.php">
        <button>Sewa Lapangan Futsal</button>
    </a>
    <a id='a1' href="data_pelanggan.php">
        <button>Data Pelanggan</button>
    </a>

    <br></br>
    <table border="1" cellpadding="10" cellspacing="0">
		<tr>
            <th>No</th>
            <th>Aksi</th>
			<th>Sewa ID</th>
			<th>Tanggal sewa</th>
			<th>Hari sewa</th>
			<th>Durasi sewa (jam)</th>
			<th>Waktu mulai</th>
			<th>Metode Bayar</th>
            <th>Pelanggan ID</th>
            <th>Lapangan ID</th>
            <th>Bukti bayar</th>
            <th>Invoice</th>
		</tr>

        <?php $i = 1; ?>
        <?php foreach ($hasil as $row): 
            switch($row['hariSewa']){
                    case 'Monday':      $hari="Senin";       break; 
                    case 'Tuesday':     $hari="Selasa";      break; 
                    case 'Wednesday':   $hari="Rabu";        break; 
                    case 'Thursday':    $hari="Kamis";       break; 
                    case 'Friday':      $hari="Jumat";       break; 
                    case 'Saturday':    $hari="Sabtu";       break; 
                    case 'Sunday':      $hari="Minggu";      break; 
                }?>
            <tr>
                <td><?= $i; ?></td>
                <td>
					<a id='a1' href="ubah.php?id=<?= $row["sewaID"]; ?>"><button style="background-color: blue;color: white">ubah</button></a> 

					<a id='a1' href="hapus.php?id=<?= $row["sewaID"]; ?>" onclick="return confirm('Mau dihapus?')"><button style="background-color: red; color: white">hapus</button></a>
                </td>
                
                <td><?=$row['sewaID']?></td>
                <td><?=$row['tglSewa']?></td>
                <td><?=$hari?></td>
                <td><?=$row['durasiSewa']?></td>
                <td><?=$row['waktuMulaiSewa']?></td>
                <td><?=$row['metodeBayar']?></td>
                <td><?=$row['pelangganID']?></td>
                <td><?=$row['lapanganID']?></td>
                <td><?=$row['buktiBayar']?></td>
                <td>
                <a href="invoice.php?id=<?= $row["sewaID"]; ?>"><button>Cetak Nota</button></a>
                </td>
            </tr>
        <?php $i++; endforeach ?>

    </table>

</body>
</html>