<?php
    $conn = mysqli_connect("localhost", "root", "", "sewalapfutsal");
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
    FROM PEMESANAN WHERE sewaID = 'SW6'");
    $hit2 = [];
    while ($hit3 = mysqli_fetch_array($hit)) {
         $hit2[] = $hit3;
    }
    foreach($hit2 as $hit4){
        $hitung = $hit4['durasiSewa'];
    }
    $wkt = mysqli_query($conn, "SELECT waktuMulaiSewa
    FROM PEMESANAN WHERE sewaID = 'SW6'");
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
    echo $harga;
    
    // foreach($hit2 as $hitung){
    //     foreach($hitung as $key => $val){
    //         echo "$key: $val";
    //     }
    // }

    // $date = date_create('09:00:00');
    // date_add($date, date_interval_create_from_date_string('-2 hours'));
	// $waktuBerubah = date_create('16:00:00');
	// $hitungPagi = 0;
    // $hitungMalam = 0;
    // $hitung = 2;
	// while ($hitung > 0) {
	// 	if (($waktuBerubah >= date_create('07:00:00')) && ($waktuBerubah < date_create('17:00:00'))) {
	// 		$hitungPagi = 1;
    //         $waktuBerubah = date_add($waktuBerubah, date_interval_create_from_date_string('1 hours'));
    //         echo $hitung,' ';
	// 	} elseif (($waktuBerubah >= date_create('17:00:00')) && ($waktuBerubah <= date_create('23:00:00'))) {
    // 		$hitungMalam = 1;
    //         $waktuBerubah = date_add($waktuBerubah, date_interval_create_from_date_string('1 hours'));
    //         echo $hitung,' ';
	// 	}
	// 	$hitung -= 1;
	// }
    // echo $hitungPagi;
    // echo $hitungMalam;
 ?>

<!DOCTYPE html>
<html>
<head>
    <title>Tugas SBD 3 - Sewa Lapangan Futsal</title>
</head>
<body>
    <h1>Invoice Sewa Lapangan Futsal</h1>

    <table border="1" cellpadding="10" cellspacing="0">
		<tr>
			<th>Durasi sewa (jam)</th>
		</tr>

        <?php $i = 1; ?>
        <?php foreach ($hit2 as $row): ?>
            <tr>
                <td><?=$row['durasiSewa']?></td>
            </tr>
        <?php $i++; endforeach ?>
    </table>
    
</body>
</html>