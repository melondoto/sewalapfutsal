<?php 
	$conn = mysqli_connect("localhost", "root", "", "sewalapfutsal");

	function query($query){
		global $conn;
		$result = mysqli_query($conn, $query); 
		$rows = [];

		while ($row = mysqli_fetch_assoc($result)) {
		 	$rows[] = $row;
		}

		return $rows;
	}


	function tambah_pelanggan($data){
		global $conn;
		$id_pel = $data["pelangganID"];
		$nama = $data["namaPelanggan"];
		$no_telp = $data['noTelpPelanggan'];
		$alamat = $data["alamatPelanggan"];
		$query = "INSERT INTO pelanggan
					VAlUES
				('$id_pel', '$nama', '$no_telp', '$alamat')";

		mysqli_query($conn, $query);

		return mysqli_affected_rows($conn);
	}

	function tambah_sewa($data){
		global $conn;
		$id_sewa = $data["sewaID"];
		$tgl = $data["tglSewa"];
		$durasi = $data['durasiSewa'];
		$waktu = $data["waktuMulaiSewa"];
		$metode = $data["metodeBayar"];
		$id_pel = $_POST["pelangganID"];
		$id_lap = $_POST["lapanganID"];
		$bukti = $data["buktiBayar"];

		$query = "INSERT INTO pemesanan
					VAlUES
				('$id_sewa', '$tgl', '$durasi', '$waktu', '$metode', '$id_pel', '$id_lap', '$bukti')";

		$a = date_create('07:00:00');
		$b = date_create('17:00:00');
		$c = date_create('23:00:00');
		$hitung = $data['durasiSewa'];
		$waktuBerubah = date_create($data['waktuMulaiSewa']);
		while ($hitung > 0) {
			if (($waktuBerubah >= $a) && ($waktuBerubah < $b)) {
				$query1 = "INSERT INTO sewatarif
				VAlUES
				   ('$id_sewa','TR1')";
				$waktuBerubah = date_add($waktuBerubah, date_interval_create_from_date_string('1 hours'));
			} elseif (($waktuBerubah >= $b) && ($waktuBerubah <= $c)) {
				$query2 = "INSERT INTO sewatarif
				VAlUES
		   			('$id_sewa','TR2')";
				$waktuBerubah = date_add($waktuBerubah, date_interval_create_from_date_string('1 hours'));
			}
			$hitung -= 1;
		}
		
		mysqli_query($conn, $query);
		mysqli_query($conn, $query1);
		mysqli_query($conn, $query2);

		return mysqli_affected_rows($conn);
	}

	function harga($id){
		global $conn;
		$pgi = mysqli_query($conn, "SELECT harga
    	FROM TARIF WHERE tarifID = 'TR1'");
    	$pgi2 = [];
    	while ($pgi3 = mysqli_fetch_array($pgi)) {
         	$pgi2[] = $pgi3;
    	}
    	foreach($pgi2 as $pgi4){
        	$hargaPagi = $pgi4['harga'];
    	}
    	$mlm = mysqli_query($conn,"SELECT harga
    	FROM TARIF WHERE tarifID = 'TR2'");
    	$mlm2 = [];
    	while ($mlm3 = mysqli_fetch_array($mlm)) {
         	$mlm2[] = $mlm3;
    	}
    	foreach($mlm2 as $mlm4){
        	$hargaMalam = $mlm4['harga'];
    	}
		$a = date_create('07:00:00');
		$b = date_create('17:00:00');
		$c = date_create('23:00:00');
    	$hit = mysqli_query($conn, "SELECT durasiSewa
    	FROM PEMESANAN WHERE sewaID = '$id'");
    	$hit2 = [];
    	while ($hit3 = mysqli_fetch_array($hit)) {
         	$hit2[] = $hit3;
    	}
    	foreach($hit2 as $hit4){
        	$hitung = $hit4['durasiSewa'];
    	}
    	$wkt = mysqli_query($conn, "SELECT waktuMulaiSewa
    	FROM PEMESANAN WHERE sewaID = '$id'");
    	$waktu2 = [];
    	while ($waktu3 = mysqli_fetch_array($wkt)) {
         	$waktu2[] = $waktu3;
    	}
    	foreach($waktu2 as $waktu4){
        	$waktu = $waktu4['waktuMulaiSewa'];
    	}
    	$waktuBerubah = date_create($waktu);
    	$harga = 0;
		while ($hitung > 0) {
			if (($waktuBerubah >= $a) && ($waktuBerubah < $b)) {
		    	$harga += $hargaPagi;
		    	$waktuBerubah = date_add($waktuBerubah, date_interval_create_from_date_string('1 hours'));
			} elseif (($waktuBerubah >= $b) && ($waktuBerubah <= $c)) {
		    	$harga += $hargaMalam;
		    	$waktuBerubah = date_add($waktuBerubah, date_interval_create_from_date_string('1 hours'));
			}
        	$hitung -= 1;
    	}
    	return $harga;
	}




	function hapus($id) {
		global $conn;
		$result = mysqli_query($conn, "SELECT sewaID FROM pemesanan WHERE sewaID = '$id'");

		mysqli_query($conn, "DELETE FROM pemesanan WHERE sewaID = '$id'");

		return mysqli_affected_rows($conn);
	}



	function ubah($data){
		global $conn;

		// htmlspecialchars berguna untuk mengatasi input html, fungsi tersebut akan merubah html menjadi string biasa.
		$id_ubah = $data['sewaIDBaru'];
		$tgl = $data["tglSewaBaru"];
		$durasi = $data["durasiSewaBaru"];
		$waktu = $data["waktuMulaiSewaBaru"];
		$metode = $data["metodeBayarBaru"];
		$id_pel = $data["pelangganIDBaru"];
		$id_lap = $data["lapanganIDBaru"];
		$bukti = $data["buktiBayarBaru"];
		// query insert data
		$query = "UPDATE pemesanan SET 
					tglSewa = '$tgl',
					durasiSewa = '$durasi',
					waktuMulaiSewa = '$waktu',
					metodeBayar = '$metode',
					pelangganID = '$id_pel',
					lapanganID = '$id_lap',
					buktiBayar = '$bukti'
					WHERE sewaID = '$id_ubah'
					";

		$result = mysqli_query($conn, $query);
		return mysqli_affected_rows($conn);
		
	}




	function cari($keyword) {
		$query = "SELECT pelangganID FROM pelanggan 
					WHERE
				namaPelanggan LIKE '%$keyword%'";

		return ($query);
	}

 ?>