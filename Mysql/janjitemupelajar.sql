-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2023 at 09:29 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-health`
--

-- --------------------------------------------------------

--
-- Table structure for table `janjitemupelajar`
--

CREATE TABLE `janjitemupelajar` (
  `namapelajar` varchar(255) NOT NULL,
  `waktujtpelajar` datetime NOT NULL,
  `tarikhjtpelajar` date NOT NULL,
  `sebabjt` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `id_pelajar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `janjitemupelajar`
--

INSERT INTO `janjitemupelajar` (`namapelajar`, `waktujtpelajar`, `tarikhjtpelajar`, `sebabjt`, `status`, `id_pelajar`) VALUES
('', '2023-07-05 12:51:00', '0000-00-00', 'Selesema', 'Rejected', 3),
('', '2023-07-05 13:03:00', '0000-00-00', 'Keracunan', 'Rejected', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `janjitemupelajar`
--
ALTER TABLE `janjitemupelajar`
  ADD KEY `janjitemupelajar.id_pelajar_loginpelajar.id_fk` (`id_pelajar`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `janjitemupelajar`
--
ALTER TABLE `janjitemupelajar`
  ADD CONSTRAINT `janjitemupelajar.id_pelajar_loginpelajar.id_fk` FOREIGN KEY (`id_pelajar`) REFERENCES `loginpelajar` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
