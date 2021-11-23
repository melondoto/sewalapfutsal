<?php
require('phpfpdf/fpdf.php');
require('functions.php');
$conn = mysqli_connect("localhost", "root", "", "sewalapfutsal");
$id_sewa = $_GET['id'];
$date = date('d-m-Y');
$psn = mysqli_query($conn, "SELECT sewaID, tglSewa, DATE_FORMAT(tglSewa,'%W') AS 'hariSewa', durasiSewa, waktuMulaiSewa, metodeBayar, pelangganID, lapanganID, buktiBayar
FROM PEMESANAN WHERE sewaID = '$id_sewa'");
$psn2 = [];
while ($psn3 = mysqli_fetch_array($psn)) {
    $psn2[] = $psn3;
}
foreach($psn2 as $psn4){
    $tglSewa = date('d-m-Y',strtotime($psn4['tglSewa']));
    switch($psn4['hariSewa']){
        case 'Monday':      $hariSewa="Senin";       break; 
        case 'Tuesday':     $hariSewa="Selasa";      break; 
        case 'Wednesday':   $hariSewa="Rabu";        break; 
        case 'Thursday':    $hariSewa="Kamis";       break; 
        case 'Friday':      $hariSewa="Jumat";       break; 
        case 'Saturday':    $hariSewa="Sabtu";       break; 
        case 'Sunday':      $hariSewa="Minggu";      break; 
    }
    $pelangganID = $psn4['pelangganID'];
    $waktuMulaiSewa = date_create($psn4['waktuMulaiSewa']);
    $durasiSewa = $psn4['durasiSewa'];
    $waktuSelesaiSewa = date_create($psn4['waktuMulaiSewa']);
    $tambah = $durasiSewa.' hours';
    $waktuSelesaiSewa = date_add($waktuSelesaiSewa, date_interval_create_from_date_string($tambah));
    $lapanganID = $psn4['lapanganID'];   
}


$pel = mysqli_query($conn, "SELECT pelangganID, namaPelanggan, noTelpPelanggan, alamatPelanggan
FROM PELANGGAN WHERE pelangganID = '$pelangganID'");
$pel2 = [];
while ($pel3 = mysqli_fetch_array($pel)) {
    $pel2[] = $pel3;
}
foreach($pel2 as $pel4){
    $namaPelanggan = $pel4['namaPelanggan'];
}
$lap = mysqli_query($conn, "SELECT lapanganID, noLapangan, deskripsiLapangan
FROM LAPANGAN WHERE lapanganID = '$lapanganID'");
$lap2 = [];
while ($lap3 = mysqli_fetch_array($lap)) {
    $lap2[] = $lap3;
}
foreach($lap2 as $lap4){
    $noLapangan = $lap4['noLapangan'];
    $deskripsiLapangan = $lap4['deskripsiLapangan'];
} 
$pdf = new FPDF('L','mm',array(210.9,140.16));
$pdf->AddPage();
$pdf->SetFont('Arial','B',14);

//Cell(width , height , text , border , end line , [align] )

$pdf->Cell(130 ,5,'Jaya Sakti Futsal Wonogiri',0,0);
$pdf->Cell(59 ,5,'INVOICE',0,1);//end of line

//set font jadi arial, regular, 12pt
$pdf->SetFont('Arial','',12);

$pdf->Cell(130 ,5,'Jl. Ahmad Yani, Salak, Giripurwo',0,0);
$pdf->Cell(59 ,5,'',0,1);//end of line

$pdf->Cell(130 ,5,'Wonogiri, Jawa Tengah, 57612',0,0);
$pdf->Cell(30 ,5,'Tanggal',0,0);
$pdf->Cell(34 ,5,$date,0,1);//end of line

$pdf->Cell(130 ,5,'WA +62 852-2935-9877',0,0);
$pdf->Cell(30 ,5,'No Invoice',0,0);
$pdf->Cell(34 ,5,$id_sewa,0,1);//end of line

$pdf->SetLineWidth(1);
$pdf->Line(10,33,200,33);
$pdf->SetLineWidth(0);
$pdf->Line(10,34,200,34);

//buat dummy cell untuk memberi jarak vertikal
$pdf->Cell(189 ,10,'',0,1);//end of line

$pdf->Cell(30 ,5,'ID Pelanggan',0,0);
$pdf->Cell(5 ,5,':',0,0);
$pdf->Cell(90 ,5,$pelangganID,0,1);//end of line

$pdf->Cell(30 ,5,'Nama',0,0);
$pdf->Cell(5 ,5,':',0,0);
$pdf->Cell(90 ,5,$namaPelanggan,0,1);//end of line

$pdf->Cell(30 ,5,'Tanggal Sewa',0,0);
$pdf->Cell(5 ,5,':',0,0);
$pdf->Cell(90 ,5,$hariSewa.', '.$tglSewa,0,1);//end of line

$pdf->SetLineWidth(1);
$pdf->Line(10,60,200,60);
$pdf->SetLineWidth(0);

//buat dummy cell untuk memberi jarak vertikal
$pdf->Cell(189 ,10,'',0,1);//end of line

$pdf->Cell(30 ,5,'Jam Masuk',0,0);
$pdf->Cell(5 ,5,':',0,0);
$pdf->Cell(80 ,5,$waktuMulaiSewa->format('H:i'),0,0);
$pdf->Cell(45 ,5,'Harga (normal) / jam*',0,0);
$pdf->Cell(5 ,5,':',0,0);
$pdf->Cell(34 ,5,'Rp. 40.000',0,1);//end of line

$pdf->Cell(30 ,5,'Jam Keluar',0,0);
$pdf->Cell(5 ,5,':',0,0);
$pdf->Cell(80 ,5,$waktuSelesaiSewa->format('H:i'),0,0);
$pdf->Cell(45 ,5,'Harga (malam) / jam**',0,0);
$pdf->Cell(5 ,5,':',0,0);
$pdf->Cell(34 ,5,'Rp. 60.000',0,1);//end of line

$pdf->Cell(30 ,5,'Durasi',0,0);
$pdf->Cell(5 ,5,':',0,0);
$pdf->Cell(90 ,5,$durasiSewa.' jam',0,1);//end of line

$pdf->Cell(189 ,10,'',0,1);//end of line

$pdf->SetLineWidth(1);
$pdf->Line(10,85,200,85);
$pdf->SetLineWidth(0);

//invoice 
$pdf->SetFont('Arial','B',12);

$pdf->Cell(80 ,5,'Pemesanan',1,0);
$pdf->Cell(30 ,5,'No Lapangan',1,0);
$pdf->Cell(48 ,5,'Deskripsi Lapangan',1,0);
$pdf->Cell(31 ,5,'Harga Bayar',1,1);//end of line

$pdf->SetFont('Arial','',12);

//Angka diratakan kanan, jadi kita beri property 'R'
$pdf->Cell(80 ,5,'Sewa Lapangan',1,0);
$pdf->Cell(30 ,5,$noLapangan,1,0);
$pdf->Cell(48 ,5,$deskripsiLapangan,1,0);
$pdf->Cell(9 ,5,'Rp.',1,0);
$pdf->Cell(22 ,5,number_format(harga($id_sewa),0,",","."),1,1,'R');//end of line

$pdf->Cell(189 ,10,'',0,1);//end of line

$pdf->SetFont('Arial','',10);
$pdf->Cell(5 ,5,'*',0,0);
$pdf->Cell(90 ,5,'Harga (normal) pada pukul 07:00 - 16:00.',0,1);

$pdf->Cell(5 ,5,'**',0,0);
$pdf->Cell(90 ,5,'Harga (malam) pada pukul 17:00 - 23:00.',0,1);

$pdf->Output();
?>