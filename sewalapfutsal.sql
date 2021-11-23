-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2020 at 04:59 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewalapfutsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `lapangan`
--

CREATE TABLE `lapangan` (
  `lapanganID` varchar(5) NOT NULL,
  `noLapangan` int(2) NOT NULL,
  `deskripsiLapangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lapangan`
--

INSERT INTO `lapangan` (`lapanganID`, `noLapangan`, `deskripsiLapangan`) VALUES
('LAP1', 1, 'Lantai'),
('LAP2', 2, 'Lantai');

-- --------------------------------------------------------

--
-- Table structure for table `log_pelanggan`
--

CREATE TABLE `log_pelanggan` (
  `logID` int(11) NOT NULL,
  `pelangganID` varchar(5) NOT NULL,
  `namaPelanggan` varchar(30) NOT NULL,
  `noTelpPelanggan` varchar(14) NOT NULL,
  `alamatPelanggan` varchar(50) NOT NULL,
  `keteranganPelanggan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_pelanggan`
--

INSERT INTO `log_pelanggan` (`logID`, `pelangganID`, `namaPelanggan`, `noTelpPelanggan`, `alamatPelanggan`, `keteranganPelanggan`) VALUES
(1, 'PG9', 'Jepon', '08123142135', 'disini senang', 'Memasukkan data'),
(2, 'PG9', 'Jepon Wahyu', '08123142135', 'dimana mana', 'Memperbaharui data'),
(3, 'PG10', 'Kamu', '08437271', 'nanana', 'Memasukkan data'),
(4, 'PG1', 'Libra', '0816666666666', 'Manyaran, Wonogiri', 'Memperbaharui data'),
(5, 'PG2', 'AFK PI', '081623123421', 'Kartasura', 'Memperbaharui data'),
(6, 'PG3', 'BG FC', '0812345679', 'Wonogiri', 'Memperbaharui data'),
(7, 'PG6', 'Revyn', '08123142135', 'nayu utara rt 01', 'Memperbaharui data'),
(8, 'PG7', 'Paijo', '081231472', 'disana', 'Memperbaharui data'),
(9, 'PG8', 'Sumbog', '01234214', 'disana', 'Memperbaharui data'),
(10, 'PG9', 'Jepon Wahyu', '08123142135', 'dimana mana', 'Memperbaharui data'),
(11, 'PG11', 'bebas', '01823123', 'nayu', 'Memasukkan data'),
(12, 'PG12', 'Test', '9123412', 'naninu', 'Memasukkan data'),
(13, 'PG15', 'Gideon', '081234521', 'nayu utara rt 01', 'Memasukkan data'),
(14, 'PG05', 'Gideon Yunior Pamungkas', '0814318341', 'Sukorejo RT01/09, Giritirto, Wonogiri', 'Memasukkan data'),
(15, 'PG06', 'Muhammad Akas Vashola', '08921347312', 'Donoharjo RT01/01, Wuryorejo, Wonogiri', 'Memasukkan data'),
(16, 'PG07', 'Brilian Pradito', '08147313198', 'Bulusari RT01/03, Bulusulur, Wonogiri', 'Memasukkan data'),
(17, 'PG08', 'Peter Gagah Sejati', '0852375323', 'Karang Lor RT03/01, Karang Lor, Manyaran', 'Memasukkan data'),
(18, 'PG09', 'Wigar Adwityarahajeng', '08942315', 'Perum Siwani Sukses B.89 RT03/08, Singodutan, Selo', 'Memasukkan data'),
(19, 'PG04', 'Tiar Dwi Kristianto', '089537152', 'Plosorejo RT01/07, Wonokerto, Wonogiri', 'Memasukkan data'),
(20, 'PG10', 'Budwi Sarosa', '081572325', 'Sukorejo RT01/09, Giritirto, Wonogiri', 'Memasukkan data'),
(21, 'PG11', 'Suryatmi Hastuti', '0895123851', 'Sukorejo RT01/09, Giritirto, Wonogiri', 'Memasukkan data'),
(22, 'PG12', 'Dennis Arthur Kurniawan', '08148351308', 'Sukorejo RT01/09, Giritirto, Wonogiri', 'Memasukkan data'),
(23, 'PG13', 'Elisabeth Deseva Haryantoro', '085829124', 'Jl. Arjuna 3/1 Wonokarto RT04/02, Wonokarto, Wonog', 'Memasukkan data'),
(24, 'PG14', 'Hariadi Murjandoro', '08812472194', 'Jl. Lamsari No. B-1', 'Memasukkan data'),
(25, 'PG15', 'Agatha Maheswari Adita Putri', '08724857123', 'Bedingin Wetan', 'Memasukkan data'),
(26, 'PG16', 'Demetria Siti Lestari', '08152184512', 'Bedingin Wetan', 'Memasukkan data'),
(27, 'PG17', 'Clarisaa Adelia Agustiar', '08571248553', 'Jl. Monjali No. 171', 'Memasukkan data'),
(28, 'PG18', 'Damianus Duta Galih Pramudita', '0856214082', 'Bedingin Wetan', 'Memasukkan data'),
(29, 'PG19', 'Harris Kurniadi Sumbogo', '08956217123', 'Patran', 'Memasukkan data'),
(30, 'PG20', 'Nasa Balthazar St Padan', '08722135120', 'Jl. Sengkawit GG Merpati', 'Memasukkan data'),
(31, 'PG21', 'Vera', '08512085312', 'Jl. Bumi Raya No. 14', 'Memasukkan data'),
(32, 'PG22', 'Janer Danilo', '0894751238', 'Jl. Uma Bilung Lung', 'Memasukkan data'),
(33, 'PG23', 'Edwin Pradipta', '0881537914', 'Nglarang', 'Memasukkan data'),
(34, 'PG24', 'Alan Satria Julius Putra Herma', '0857129853', 'Margorejo RT 01/10, Gilingan, Banjarsari, Surakart', 'Memasukkan data'),
(35, 'PG25', 'Jevon Juwono', '089571235', 'Gading Permai AG-10 RT 03/09, Grogol, Grogol, Suko', 'Memasukkan data'),
(36, 'PG26', 'Revyn Pradana Putra', '081395315505', 'Nayu Utara RT 01/13, Kadipiro, Banjarsari, Surakar', 'Memasukkan data'),
(37, 'PG27', 'Gilbert Shilo Tanjaya', '089561273953', 'Banaran RT 04/07, Ngringo, Jaten, Karanganyar', 'Memasukkan data'),
(38, 'PG28', 'Evangela Joceline Erifin', '0812678342', 'Jl. Raya Sukowati No. 312 RT 02/05, Sragen Tengah,', 'Memasukkan data'),
(39, 'PG29', 'Samuel Christian Wibisono', '0891247351', 'Ngasinan RT 05/04, Kwarasan, Grogol, Sukoharjo', 'Memasukkan data'),
(40, 'PG30', 'Hilda Cuang', '0817539282', 'Gedangan Permai S.9 J.62 RT 05/05, Gedangan, Grogo', 'Memasukkan data'),
(41, 'PG31', 'Nurendra Febriyanto', '089756183432', 'Kembang RT 07/02, Keputran, Kemalang, Klaten', 'Memasukkan data'),
(42, 'PG32', 'M Shildam Niwa', '0857298531', 'Trombol Kulon RT 01/01, Jatipurwo, Jatipuro', 'Memasukkan data'),
(43, 'PG33', 'William Wijaya', '0858295321', 'Jl. Merak Perum Dosen UNS RT 03/08, Triyagan, Mojo', 'Memasukkan data');

-- --------------------------------------------------------

--
-- Table structure for table `log_pemesanan`
--

CREATE TABLE `log_pemesanan` (
  `logID` int(11) NOT NULL,
  `sewaID` varchar(5) NOT NULL,
  `tglSewa` date NOT NULL,
  `durasiSewa` int(2) NOT NULL,
  `waktuMulaiSewa` time NOT NULL,
  `metodeBayar` enum('Cash') NOT NULL,
  `pelangganID` varchar(5) NOT NULL,
  `lapanganID` varchar(5) NOT NULL,
  `buktiBayar` enum('Lunas','DP') NOT NULL,
  `keteranganPemesanan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_pemesanan`
--

INSERT INTO `log_pemesanan` (`logID`, `sewaID`, `tglSewa`, `durasiSewa`, `waktuMulaiSewa`, `metodeBayar`, `pelangganID`, `lapanganID`, `buktiBayar`, `keteranganPemesanan`) VALUES
(1, 'SW7', '2020-11-27', 2, '18:19:00', 'Cash', 'PG6', 'LAP2', 'Lunas', 'Memasukkan data'),
(2, 'SW8', '2020-11-28', 2, '16:00:00', 'Cash', 'PG6', 'LAP1', 'DP', 'Memasukkan data'),
(3, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP2', 'Lunas', 'Memasukkan data'),
(4, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP2', 'Lunas', 'Memasukkan data'),
(5, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP2', 'Lunas', 'Memasukkan data'),
(6, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP2', 'Lunas', 'Memasukkan data'),
(7, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP2', 'Lunas', 'Memasukkan data'),
(8, 'SW7', '2020-11-28', 2, '16:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(9, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP2', 'Lunas', 'Memasukkan data'),
(10, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(11, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(12, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(13, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(14, 'SW8', '2020-11-27', 2, '21:00:00', 'Cash', 'PG6', 'LAP2', 'Lunas', 'Memasukkan data'),
(15, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(16, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(17, 'SW8', '2020-11-28', 2, '09:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(18, 'SW7', '2020-11-28', 2, '16:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(19, 'SW8', '2020-11-28', 2, '09:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(20, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(21, 'SW8', '2020-11-27', 2, '09:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(22, 'SW9', '2020-11-28', 2, '19:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(23, 'SW10', '2020-11-27', 3, '15:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(24, 'SW7', '2020-11-28', 3, '15:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(25, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG6', 'LAP2', 'Lunas', 'Memasukkan data'),
(26, 'SW8', '2020-11-27', 3, '09:00:00', 'Cash', 'PG6', 'LAP1', 'Lunas', 'Memasukkan data'),
(27, 'SW9', '2020-11-27', 3, '19:00:00', 'Cash', 'PG6', 'LAP2', 'Lunas', 'Memasukkan data'),
(28, 'SW1', '2020-10-03', 1, '17:00:00', 'Cash', 'PG01', 'LAP1', 'Lunas', 'Memperbaharui data'),
(29, 'SW2', '2020-10-05', 2, '09:00:00', 'Cash', 'PG02', 'LAP2', 'Lunas', 'Memperbaharui data'),
(30, 'SW3', '2020-10-08', 2, '17:00:00', 'Cash', 'PG03', 'LAP2', 'DP', 'Memperbaharui data'),
(31, 'SW4', '2020-10-10', 1, '17:00:00', 'Cash', 'PG01', 'LAP2', 'Lunas', 'Memperbaharui data'),
(32, 'SW6', '2020-11-26', 2, '17:30:00', 'Cash', 'PG06', 'LAP1', 'Lunas', 'Memperbaharui data'),
(33, 'SW7', '2020-11-27', 2, '16:00:00', 'Cash', 'PG06', 'LAP2', 'Lunas', 'Memperbaharui data'),
(34, 'SW9', '2020-11-27', 3, '19:00:00', 'Cash', 'PG06', 'LAP2', 'Lunas', 'Memperbaharui data'),
(35, 'SW009', '2020-11-27', 2, '19:00:00', 'Cash', 'PG06', 'LAP2', 'Lunas', 'Memperbaharui data'),
(36, 'SW009', '2020-11-27', 3, '19:00:00', 'Cash', 'PG06', 'LAP2', 'Lunas', 'Memperbaharui data'),
(37, 'SW010', '2020-12-04', 5, '03:00:00', 'Cash', 'PG06', 'LAP2', 'Lunas', 'Memasukkan data'),
(38, 'SW010', '2020-12-03', 5, '15:00:00', 'Cash', 'PG06', 'LAP2', 'Lunas', 'Memasukkan data'),
(39, 'SW011', '2020-12-11', 2, '16:00:00', 'Cash', 'PG15', 'LAP1', 'Lunas', 'Memasukkan data'),
(40, 'SW011', '2020-12-12', 2, '16:00:00', 'Cash', 'PG15', 'LAP1', 'Lunas', 'Memperbaharui data'),
(41, 'SW011', '2020-12-10', 2, '16:00:00', 'Cash', 'PG15', 'LAP1', 'Lunas', 'Memasukkan data');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelangganID` varchar(5) NOT NULL,
  `namaPelanggan` varchar(30) NOT NULL,
  `noTelpPelanggan` varchar(14) NOT NULL,
  `alamatPelanggan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelangganID`, `namaPelanggan`, `noTelpPelanggan`, `alamatPelanggan`) VALUES
('PG01', 'Libra', '0816666666666', 'Manyaran, Wonogiri'),
('PG02', 'AFK PI', '081623123421', 'Kartasura'),
('PG03', 'BG FC', '0812345679', 'Wonogiri'),
('PG04', 'Tiar Dwi Kristianto', '089537152', 'Plosorejo RT01/07, Wonokerto, Wonogiri'),
('PG05', 'Gideon Yunior Pamungkas', '0814318341', 'Sukorejo RT01/09, Giritirto, Wonogiri'),
('PG06', 'Muhammad Akas Vashola', '08921347312', 'Donoharjo RT01/01, Wuryorejo, Wonogiri'),
('PG07', 'Brilian Pradito', '08147313198', 'Bulusari RT01/03, Bulusulur, Wonogiri'),
('PG08', 'Peter Gagah Sejati', '0852375323', 'Karang Lor RT03/01, Karang Lor, Manyaran'),
('PG09', 'Wigar Adwityarahajeng', '08942315', 'Perum Siwani Sukses B.89 RT03/08, Singodutan, Selo'),
('PG10', 'Budwi Sarosa', '081572325', 'Sukorejo RT01/09, Giritirto, Wonogiri'),
('PG11', 'Suryatmi Hastuti', '0895123851', 'Sukorejo RT01/09, Giritirto, Wonogiri'),
('PG12', 'Dennis Arthur Kurniawan', '08148351308', 'Sukorejo RT01/09, Giritirto, Wonogiri'),
('PG13', 'Elisabeth Deseva Haryantoro', '085829124', 'Jl. Arjuna 3/1 Wonokarto RT04/02, Wonokarto, Wonog'),
('PG14', 'Hariadi Murjandoro', '08812472194', 'Jl. Lamsari No. B-1'),
('PG15', 'Agatha Maheswari Adita Putri', '08724857123', 'Bedingin Wetan'),
('PG16', 'Demetria Siti Lestari', '08152184512', 'Bedingin Wetan'),
('PG17', 'Clarisaa Adelia Agustiar', '08571248553', 'Jl. Monjali No. 171'),
('PG18', 'Damianus Duta Galih Pramudita', '0856214082', 'Bedingin Wetan'),
('PG19', 'Harris Kurniadi Sumbogo', '08956217123', 'Patran'),
('PG20', 'Nasa Balthazar St Padan', '08722135120', 'Jl. Sengkawit GG Merpati'),
('PG21', 'Vera', '08512085312', 'Jl. Bumi Raya No. 14'),
('PG22', 'Janer Danilo', '0894751238', 'Jl. Uma Bilung Lung'),
('PG23', 'Edwin Pradipta', '0881537914', 'Nglarang'),
('PG24', 'Alan Satria Julius Putra Herma', '0857129853', 'Margorejo RT 01/10, Gilingan, Banjarsari, Surakart'),
('PG25', 'Jevon Juwono', '089571235', 'Gading Permai AG-10 RT 03/09, Grogol, Grogol, Suko'),
('PG26', 'Revyn Pradana Putra', '081395315505', 'Nayu Utara RT 01/13, Kadipiro, Banjarsari, Surakar'),
('PG27', 'Gilbert Shilo Tanjaya', '089561273953', 'Banaran RT 04/07, Ngringo, Jaten, Karanganyar'),
('PG28', 'Evangela Joceline Erifin', '0812678342', 'Jl. Raya Sukowati No. 312 RT 02/05, Sragen Tengah,'),
('PG29', 'Samuel Christian Wibisono', '0891247351', 'Ngasinan RT 05/04, Kwarasan, Grogol, Sukoharjo'),
('PG30', 'Hilda Cuang', '0817539282', 'Gedangan Permai S.9 J.62 RT 05/05, Gedangan, Grogo'),
('PG31', 'Nurendra Febriyanto', '089756183432', 'Kembang RT 07/02, Keputran, Kemalang, Klaten'),
('PG32', 'M Shildam Niwa', '0857298531', 'Trombol Kulon RT 01/01, Jatipurwo, Jatipuro'),
('PG33', 'William Wijaya', '0858295321', 'Jl. Merak Perum Dosen UNS RT 03/08, Triyagan, Mojo');

--
-- Triggers `pelanggan`
--
DELIMITER $$
CREATE TRIGGER `after_insert_pelanggan` AFTER INSERT ON `pelanggan` FOR EACH ROW BEGIN
	INSERT INTO log_pelanggan
    SET
    pelangganID = NEW.pelangganID,
	namaPelanggan = NEW.namaPelanggan,
    noTelpPelanggan = NEW.noTelpPelanggan,
    alamatPelanggan = NEW.alamatPelanggan,
    keteranganPelanggan = 'Memasukkan data';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_pelanggan` AFTER UPDATE ON `pelanggan` FOR EACH ROW BEGIN
	INSERT INTO log_pelanggan
    SET
    pelangganID = OLD.pelangganID,
	namaPelanggan = NEW.namaPelanggan,
    noTelpPelanggan = NEW.noTelpPelanggan,
    alamatPelanggan = NEW.alamatPelanggan,
    keteranganPelanggan = 'Memperbaharui data';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `sewaID` varchar(5) NOT NULL,
  `tglSewa` date NOT NULL,
  `durasiSewa` int(2) NOT NULL,
  `waktuMulaiSewa` time NOT NULL,
  `metodeBayar` enum('Cash') NOT NULL,
  `pelangganID` varchar(5) NOT NULL,
  `lapanganID` varchar(5) NOT NULL,
  `buktiBayar` enum('Lunas','DP') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`sewaID`, `tglSewa`, `durasiSewa`, `waktuMulaiSewa`, `metodeBayar`, `pelangganID`, `lapanganID`, `buktiBayar`) VALUES
('SW001', '2020-10-03', 1, '17:00:00', 'Cash', 'PG01', 'LAP1', 'Lunas'),
('SW002', '2020-10-05', 2, '09:00:00', 'Cash', 'PG02', 'LAP2', 'Lunas'),
('SW003', '2020-10-08', 2, '17:00:00', 'Cash', 'PG03', 'LAP2', 'DP'),
('SW004', '2020-10-10', 1, '17:00:00', 'Cash', 'PG01', 'LAP2', 'Lunas');

--
-- Triggers `pemesanan`
--
DELIMITER $$
CREATE TRIGGER `after_insert_pemesanan` AFTER INSERT ON `pemesanan` FOR EACH ROW BEGIN
	INSERT INTO log_pemesanan
    SET
    sewaID = NEW.sewaID,
    tglSewa = NEW.tglSewa,
    durasiSewa = NEW.durasiSewa,
    waktuMulaiSewa = NEW.waktuMulaiSewa,
    metodeBayar = NEW.metodeBayar,
    pelangganID = NEW.pelangganID,
    lapanganID = NEW.lapanganID,
    buktiBayar = NEW.buktiBayar,
    keteranganPemesanan = 'Memasukkan data';
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_update_pemesanan` AFTER UPDATE ON `pemesanan` FOR EACH ROW BEGIN
	INSERT INTO log_pemesanan
    SET
    sewaID = OLD.sewaID,
    tglSewa = NEW.tglSewa,
    durasiSewa = NEW.durasiSewa,
    waktuMulaiSewa = NEW.waktuMulaiSewa,
    metodeBayar = NEW.metodeBayar,
    pelangganID = OLD.pelangganID,
    lapanganID = NEW.lapanganID,
    buktiBayar = NEW.buktiBayar,
    keteranganPemesanan = 'Memperbaharui data';
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sewatarif`
--

CREATE TABLE `sewatarif` (
  `sewaID` varchar(5) NOT NULL,
  `tarifID` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sewatarif`
--

INSERT INTO `sewatarif` (`sewaID`, `tarifID`) VALUES
('SW001', 'TR2'),
('SW002', 'TR1'),
('SW003', 'TR2'),
('SW004', 'TR2');

-- --------------------------------------------------------

--
-- Table structure for table `tarif`
--

CREATE TABLE `tarif` (
  `tarifID` varchar(5) NOT NULL,
  `waktuAwal` time NOT NULL,
  `waktuAkhir` time NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tarif`
--

INSERT INTO `tarif` (`tarifID`, `waktuAwal`, `waktuAkhir`, `harga`) VALUES
('TR1', '09:00:00', '16:00:00', 40000),
('TR2', '17:00:00', '23:00:00', 60000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lapangan`
--
ALTER TABLE `lapangan`
  ADD PRIMARY KEY (`lapanganID`);

--
-- Indexes for table `log_pelanggan`
--
ALTER TABLE `log_pelanggan`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `log_pemesanan`
--
ALTER TABLE `log_pemesanan`
  ADD PRIMARY KEY (`logID`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelangganID`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`sewaID`),
  ADD KEY `fk_lapangan` (`lapanganID`),
  ADD KEY `fk_pelanggan` (`pelangganID`);

--
-- Indexes for table `sewatarif`
--
ALTER TABLE `sewatarif`
  ADD PRIMARY KEY (`sewaID`,`tarifID`),
  ADD KEY `tarifID` (`tarifID`);

--
-- Indexes for table `tarif`
--
ALTER TABLE `tarif`
  ADD PRIMARY KEY (`tarifID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_pelanggan`
--
ALTER TABLE `log_pelanggan`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `log_pemesanan`
--
ALTER TABLE `log_pemesanan`
  MODIFY `logID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `fk_lapangan` FOREIGN KEY (`lapanganID`) REFERENCES `lapangan` (`lapanganID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pelanggan` FOREIGN KEY (`pelangganID`) REFERENCES `pelanggan` (`pelangganID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sewatarif`
--
ALTER TABLE `sewatarif`
  ADD CONSTRAINT `sewatarif_ibfk_1` FOREIGN KEY (`sewaID`) REFERENCES `pemesanan` (`sewaID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sewatarif_ibfk_2` FOREIGN KEY (`tarifID`) REFERENCES `tarif` (`tarifID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
