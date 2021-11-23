<?php
	session_start();
	require 'functions.php';
	$coba = query("SELECT * FROM lapangan");
	$coba1 = query("SELECT * FROM pemesanan");
	// cek apakah tombol submit sudah ditekan atau blm
	if (isset($_POST["submit"])) {
		foreach($_POST as $row){
            echo $row;
        }
		// cek keberhasilan penambahan data
		if (tambah_sewa($_POST) > 0) {
			echo "
				<script>
					alert('data berhasil ditambahkan!');
					document.location.href = 'index.php';
				</script>";
				$_SESSION["sewaID"] = $_POST["sewaID"];
				header('Location:index.php');
		} else {
			echo "
				<script>
					alert('data gagal ditambahkan!');
				</script>";
		}
	}

 ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tambah Data Pemesanan</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<h1>Tambah Data Pemesanan</h1>


    <form action="" method="POST" enctype="multipart/form-data">
		<center><ul>
            <li style='list-style-type: none;'>
				<label for="sewaID">ID Pemesanan: </label>
				<input type="text" name="sewaID" id="sewaID" required>
			</li>

			<li style='list-style-type: none;'>
				<label for="tglSewa">Tanggal Pemesanan : </label>
				<input type="date" name="tglSewa" id="tglSewa" required>
			</li>

			<li style='list-style-type: none;'>
				<label for="durasiSewa">Durasi (jam) : </label>
				<input type="text" name="durasiSewa" id="durasiSewa" required>
            </li>
            
            <li style='list-style-type: none;'>
				<label for="waktuMulaiSewa">Waktu : </label>
				<input type="time" name="waktuMulaiSewa" id="waktuMulaiSewa" min='07:00' max='23:00' required>
			</li>

			<li style='list-style-type: none;'>
				<label for="metodeBayar">Metode bayar : </label>
				<input type="text" name="metodeBayar" id="metodeBayar" required>
			</li>

			<li style='list-style-type: none;'>
				<label for="pelangganID">Nama pelanggan : </label>
				<input type="text" name="pelangganID" id="pelangganID" required>
			</li>

			<li style='list-style-type: none;'>
			<label for='lapanganID'>No lapangan : </label>
			<select name="lapanganID">
				<?php $i = 1; ?>
  				<?php foreach ($coba as $row): ?>
    				<option value=<?=$row["lapanganID"]?>> <?=$row["noLapangan"]?>
					</option>
				<?php $i++; endforeach ?>
			</select>
			</li>

			<li style='list-style-type: none;'>
				<label for="buktiBayar">Bukti bayar : </label>
				<input type="text" name="buktiBayar" id="buktiBayar" required>
			</li>
            <li style='list-style-type: none;'>
			<button type="submit" name="submit">Sewa</button>
			<a id='a1' style='color: blue;' href="index.php">Kembali</a>
			</li>
        </ul></center>
        
	</form>
	
</body>
</html>