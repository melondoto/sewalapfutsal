-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 06:42 AM
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
-- Error reading structure for table sewalapfutsal.lapangan: #1932 - Table 'sewalapfutsal.lapangan' doesn't exist in engine
-- Error reading data for table sewalapfutsal.lapangan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sewalapfutsal`.`lapangan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `log_pelanggan`
--
-- Error reading structure for table sewalapfutsal.log_pelanggan: #1932 - Table 'sewalapfutsal.log_pelanggan' doesn't exist in engine
-- Error reading data for table sewalapfutsal.log_pelanggan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sewalapfutsal`.`log_pelanggan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `log_pemesanan`
--
-- Error reading structure for table sewalapfutsal.log_pemesanan: #1932 - Table 'sewalapfutsal.log_pemesanan' doesn't exist in engine
-- Error reading data for table sewalapfutsal.log_pemesanan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sewalapfutsal`.`log_pemesanan`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--
-- Error reading structure for table sewalapfutsal.pelanggan: #1932 - Table 'sewalapfutsal.pelanggan' doesn't exist in engine
-- Error reading data for table sewalapfutsal.pelanggan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sewalapfutsal`.`pelanggan`' at line 1

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
-- Error reading structure for table sewalapfutsal.pemesanan: #1932 - Table 'sewalapfutsal.pemesanan' doesn't exist in engine
-- Error reading data for table sewalapfutsal.pemesanan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sewalapfutsal`.`pemesanan`' at line 1

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
-- Error reading structure for table sewalapfutsal.sewatarif: #1932 - Table 'sewalapfutsal.sewatarif' doesn't exist in engine
-- Error reading data for table sewalapfutsal.sewatarif: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sewalapfutsal`.`sewatarif`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `tarif`
--
-- Error reading structure for table sewalapfutsal.tarif: #1932 - Table 'sewalapfutsal.tarif' doesn't exist in engine
-- Error reading data for table sewalapfutsal.tarif: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `sewalapfutsal`.`tarif`' at line 1
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
