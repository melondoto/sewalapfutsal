<?php
	session_start();
	require 'functions.php';

	// cek apakah tombol submit sudah ditekan atau blm
	if (isset($_POST["submit"])) {

		// cek keberhasilan penambahan data
		if (tambah_pelanggan($_POST) > 0) {
			echo "
				<script>
					alert('data berhasil ditambahkan!');
					document.location.href = 'index.php';
				</script>";
				$_SESSION["pelangganID"] = $_POST["pelangganID"];
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
	<title>Tambah Data Pelanggan</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<h1>Tambah Data Pelanggan</h1>


	<form action="" method="POST" enctype="multipart/form-data">
		
		<center><ul>
			<li style='list-style-type: none;'>
				<label for="pelangganID">ID Pelanggan : </label>
				<input type="text" name="pelangganID" id="pelangganID" required>
			</li>

			<li style='list-style-type: none;'>
				<label for="namaPelanggan">Nama : </label>
				<input type="text" name="namaPelanggan" id="namaPelanggan" required>
			</li>

			<li style='list-style-type: none;'>
				<label for="noTelpPelanggan">No Telp/HP : </label>
				<input type="text" name="noTelpPelanggan" id="noTelpPelanggan" required>
			</li>

			<li style='list-style-type: none;'>
				<label for="alamatPelanggan">Alamat : </label>
				<input type="text" name="alamatPelanggan" id="alamatPelanggan" required>
			</li>

			<li style='list-style-type: none;'>
			<button type="submit" name="submit">Tambah</button>
			<a id='a1' style='color: blue;' href="index.php">Kembali</a>
			</li>
			
		</ul></center>
	</form>
</body>
</html>