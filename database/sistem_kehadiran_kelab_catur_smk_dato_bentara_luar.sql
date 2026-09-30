-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2026-09-30 12:26:11
-- 服务器版本： 10.4.32-MariaDB
-- PHP 版本： 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `sistem kehadiran kelab catur smk dato bentara luar`
--

-- --------------------------------------------------------

--
-- 表的结构 `ahli`
--

CREATE TABLE `ahli` (
  `nama` varchar(60) DEFAULT NULL,
  `nokp` varchar(12) NOT NULL,
  `id_kelas` int(2) DEFAULT NULL,
  `tahap` varchar(20) DEFAULT NULL,
  `katalaluan` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转存表中的数据 `ahli`
--

INSERT INTO `ahli` (`nama`, `nokp`, `id_kelas`, `tahap`, `katalaluan`) VALUES
('Lau Wen Le ', '    07031701', 403, 'AHLI BIASA', '123'),
('Ali', '070101011111', 403, 'AHLI BIASA', '123'),
('chumo', '070526015487', 403, 'AHLI BIASA', '1652'),
('Chew', '071129102023', 403, 'ADMIN', '123'),
('Chen', '071229012324', 403, 'AHLI BIASA', '123');

-- --------------------------------------------------------

--
-- 表的结构 `aktiviti`
--

CREATE TABLE `aktiviti` (
  `id_aktiviti` int(2) NOT NULL,
  `nama_aktiviti` text DEFAULT NULL,
  `tarikh_aktiviti` date DEFAULT NULL,
  `masa_mula` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转存表中的数据 `aktiviti`
--

INSERT INTO `aktiviti` (`id_aktiviti`, `nama_aktiviti`, `tarikh_aktiviti`, `masa_mula`) VALUES
(1, 'Mesyuarat Agung Bil 1/2023', '2024-01-11', '7.30');

-- --------------------------------------------------------

--
-- 表的结构 `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_aktiviti` int(2) NOT NULL,
  `nokp` varchar(12) NOT NULL,
  `masa_hadir` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转存表中的数据 `kehadiran`
--

INSERT INTO `kehadiran` (`id_aktiviti`, `nokp`, `masa_hadir`) VALUES
(1, '070101011111', '01:11:56'),
(1, '071129102023', '23:20:09'),
(1, '071229012324', '23:20:09');

-- --------------------------------------------------------

--
-- 表的结构 `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(2) NOT NULL,
  `ting` varchar(2) DEFAULT NULL,
  `nama_kelas` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- 转存表中的数据 `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `ting`, `nama_kelas`) VALUES
(101, '1', 'MAWAR'),
(102, '1', 'MELUR'),
(103, '1', 'MELATI'),
(201, '2', 'MAWAR'),
(202, '2', 'MELUR'),
(203, '2', 'MELATI'),
(301, '3', 'MAWAR'),
(302, '3', 'MELUR'),
(303, '3', 'MELATI'),
(401, '4', 'MAWAR'),
(402, '4', 'MELUR'),
(403, '4', 'MELATI'),
(501, '5', 'MAWAR'),
(502, '5', 'MELUR'),
(503, '5', 'MELATI');

--
-- 转储表的索引
--

--
-- 表的索引 `ahli`
--
ALTER TABLE `ahli`
  ADD PRIMARY KEY (`nokp`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- 表的索引 `aktiviti`
--
ALTER TABLE `aktiviti`
  ADD PRIMARY KEY (`id_aktiviti`);

--
-- 表的索引 `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_aktiviti`,`nokp`),
  ADD KEY `nokp` (`nokp`);

--
-- 表的索引 `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `aktiviti`
--
ALTER TABLE `aktiviti`
  MODIFY `id_aktiviti` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=504;

--
-- 限制导出的表
--

--
-- 限制表 `ahli`
--
ALTER TABLE `ahli`
  ADD CONSTRAINT `ahli_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `kehadiran_ibfk_1` FOREIGN KEY (`nokp`) REFERENCES `ahli` (`nokp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kehadiran_ibfk_2` FOREIGN KEY (`id_aktiviti`) REFERENCES `aktiviti` (`id_aktiviti`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
