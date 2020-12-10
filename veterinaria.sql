-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Dez-2020 às 21:04
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veterinaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbl_medicamentos`
--

CREATE TABLE `tbl_medicamentos` (
  `id` smallint(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `descricao` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbl_medicamentos`
--

INSERT INTO `tbl_medicamentos` (`id`, `name`, `descricao`) VALUES
(7, 'Tramadol', 'Analgesico'),
(8, 'Dipirona', 'Analgésico e anti inflamatório'),
(9, 'Fentanil', 'Analgésico'),
(10, 'Maropitant', 'Anti emético e analgésico visceral'),
(11, 'Amoxicilina', 'Antibiótico'),
(12, 'Noradrenalina', 'Vasopressor'),
(13, 'Propofol', 'Anestésico injetável'),
(14, 'Acepromazina', 'Tranquilizante'),
(15, 'Maxicam', 'Anti inflamatório não esteroidal '),
(16, 'Ondansetrona', 'Antiemético'),
(17, 'Ampicilina', 'Antibiótico'),
(65, 'Frontline plus', 'Antipulga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_medicamentos`
--
ALTER TABLE `tbl_medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_medicamentos`
--
ALTER TABLE `tbl_medicamentos`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
