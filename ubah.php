<?php
	session_start();
    require 'functions.php';
    // $url = explode('/', $_SERVER['REQUEST_URI']);
    // $id_sewa = substr($url[2],12);
    $id_sewa = $_GET['id']; 
    $coba = query("SELECT sewaID, tglSewa, durasiSewa, waktuMulaiSewa, metodeBayar, pelangganID, lapanganID, buktiBayar FROM PEMESANAN
    WHERE sewaID = '$id_sewa'");
    $query = "SELECT sewaID, tglSewa, durasiSewa, waktuMulaiSewa, metodeBayar, pelangganID, lapanganID, buktiBayar FROM PEMESANAN
    WHERE sewaID = '$id_sewa'";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($result);
    $id_sewa = $row['sewaID'];
    $tgl = $row['tglSewa'];
    $durasi = $row['durasiSewa'];
    $waktu = $row['waktuMulaiSewa'];
    $metode = $row['metodeBayar'];
    $id_pel = $row['pelangganID'];
    $id_lap = $row['lapanganID'];
    $bukti = $row['buktiBayar'];
	// cek apakah tombol submit sudah ditekan atau blm
    if (isset($_POST["submit"])) {
		// cek keberhasilan penambahan data
		if (ubah($_POST)) {
			echo "
				<script>
					alert('data berhasil ditambahkan!');
					document.location.href = 'index.php';
				</script>";
				$_SESSION["sewaIDBaru"] = $_POST["sewaIDBaru"];
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
    <title>Data Pemesanan</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
	<h1>Ubah Data Pemesanan</h1>


	<form action="" method="POST" enctype="multipart/form-data">
        <input type="hidden" value="<?php echo $row['sewaID'];?>" name="sewaID">
        <center><table>
            <tr><td>ID pemesanan</td><td><input type="text" value="<?php echo "$id_sewa";?>" name="sewaIDBaru"></td></tr>
            <tr><td>Tanggal pemesanan</td><td><input type="date" value="<?php echo "$tgl";?>" name="tglSewaBaru"></td></tr>
            <tr><td>Durasi sewa</td><td><input type="text" value="<?php echo "$durasi";?>" name="durasiSewaBaru"></td></tr>
            <tr><td>Waktu</td><td><input type="time" min='07:00' max='23:00' value="<?php echo "$waktu";?>" name="waktuMulaiSewaBaru"></td></tr>
            <tr><td>Metode bayar</td><td><input type="text" value="<?php echo "$metode";?>" name="metodeBayarBaru"></td></tr>
            <tr><td>ID pelanggan</td><td><input type="text" value="<?php echo "$id_pel";?>" name="pelangganIDBaru"></td></tr>
            <tr><td>ID lapangan</td><td><input type="text" value="<?php echo "$id_lap";?>" name="lapanganIDBaru"></td></tr>
            <tr><td>Bukti bayar</td><td><input type="text" value="<?php echo "$bukti";?>" name="buktiBayarBaru"></td></tr>
            <tr><td colspan="2"><button type="submit" name="submit">Simpan</button>
                    <a id='a1' style='color: blue;' href="index.php">Kembali</a></td></tr>
        </table></center>
	</form>
</body>
</html>