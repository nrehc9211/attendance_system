-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 06:27 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kehadiran_ahli`
--

-- --------------------------------------------------------

--
-- Table structure for table `ahli`
--

CREATE TABLE `ahli` (
  `nama` varchar(60) DEFAULT NULL,
  `nokp` varchar(12) NOT NULL,
  `id_kelas` int(2) DEFAULT NULL,
  `tahap` varchar(20) DEFAULT NULL,
  `katalaluan` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aktiviti`
--

CREATE TABLE `aktiviti` (
  `id_aktiviti` int(2) NOT NULL,
  `nama_aktiviti` text,
  `tarikh_aktiviti` date DEFAULT NULL,
  `masa_mula` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_aktiviti` int(2) NOT NULL,
  `nokp` varchar(12) NOT NULL,
  `masa_hadir` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(2) NOT NULL,
  `ting` varchar(2) DEFAULT NULL,
  `nama_kelas` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ahli`
--
ALTER TABLE `ahli`
  ADD PRIMARY KEY (`nokp`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `aktiviti`
--
ALTER TABLE `aktiviti`
  ADD PRIMARY KEY (`id_aktiviti`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_aktiviti`,`nokp`),
  ADD KEY `nokp` (`nokp`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktiviti`
--
ALTER TABLE `aktiviti`
  MODIFY `id_aktiviti` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(2) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ahli`
--
ALTER TABLE `ahli`
  ADD CONSTRAINT `ahli_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `kehadiran_ibfk_1` FOREIGN KEY (`nokp`) REFERENCES `ahli` (`nokp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kehadiran_ibfk_2` FOREIGN KEY (`id_aktiviti`) REFERENCES `aktiviti` (`id_aktiviti`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
