-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 09:06 PM
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
-- Database: `fashionbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`) VALUES
(42, 'Black formal shirt', '3500', '1c57f2f2-fc83-4c1e-9ffe-966758b4f6c41581635929981-3.webp'),
(54, 'silk saree ', '7069', 'beautiful-woman-indian-saree-indoor-600w-1221508132.jpg'),
(38, 'Three piece', '3500', 'attractive-indian-female-model-posing-600w-362207879.jpg'),
(43, 'Baby barbie gown', '9000', 'little-girl-blue-dress-near-260nw-1011696859.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `orderid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `delivery` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `product`, `feedback`) VALUES
('priya saha', 'ps4966829@gmail.com', '12345678', 'Good'),
('priya saha', 'saha06571@gmail.com', '41', 'good product'),
('priya saha', 'admin@gmail.com', '42', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `loginadmin`
--

CREATE TABLE `loginadmin` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginadmin`
--

INSERT INTO `loginadmin` (`name`, `email`, `pass`) VALUES
('Priya', 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `logincustomer`
--

CREATE TABLE `logincustomer` (
  `username` varchar(255) NOT NULL,
  `nmber` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `pass1` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logincustomer`
--

INSERT INTO `logincustomer` (`username`, `nmber`, `email`, `district`, `address`, `pass`, `pass1`, `token`, `status`) VALUES
('tanvir_ahammed    ', '01766829719', 'b180305047@gmail.com', 'Dhaka', 'Lokkhibazar,puran dahka', '$2y$10$skYTWqW48wdUVYjYzY0P2eRmjiJRKnsFliz4U7WE9vvg9PNDCrBI.', '$2y$10$5Qki6GLp0b.CdKUzjQt9yeA7IC56A5m/3pD5Dz6gvWymVkYXIeyN2', '615d3bea4e35065bc32c11ccf2d5c5', 'inactive'),
('Disha       ', '01766843878  ', 'deshadas799@gmail.com', 'dhaka       ', 'Mirpur', '$2y$10$UcfFMXXOcj7pBD5tu87jOeC4/IUon6/wEPzR5GkVMbNV6n55XASPu', '$2y$10$OGZNTO04vJo9Fxy7V3LsBOa.Us8IfNvfxd8X9rbitiu0.bHcvewDC', '012b4f598413988c5aef9161e37792', 'active'),
('hgg', '9888', 'hmhridoy65@gmail.com', 'dhaka', 'mjbhgf', '$2y$10$Yr6JOkptrGmMliFjQgPE4.ESxalm4ba4qfpG37D2sDL3qGfcWGZRe', '$2y$10$StaMPvQ07wpa/avIu5Mo/.OgBJ3AqSRD7qnsZ.9RXZnJF90eL3/vm', '0fb117aae9253f468d2d43a0965f36', 'inactive'),
('tanvir_ahammed', '01766829719', 'hmhridoy@gmail.com', 'dhaka', 'Lokkhibazar,puran dahka', '$2y$10$2yDMntI2uuCrwFcovTILSedTqOgP3H3Q.ewcMuXXHgdY9RFtesmyO', '$2y$10$4/FJyaHgNf2PCUPgabwjDu5oXKEhfI2.9b8JIu9cvpbpGtGYPS.uq', 'c3d7191721237b69025b29fc2dd3ef', 'active'),
('tanvir_ahammed', '01766829716', 'omi405403@gmail.com', 'dhaka', 'Lokkhibazar,puran dahka', '$2y$10$SiTMIyddCSSr2wHBP6kwu.fqcP4UNE1aQj123ChPkRgCkX19S3v.a', '$2y$10$8X4HEae3DQalVGhBH7FnfeQN.NQ.DQKI4Xk1me05702IWhkdRdAw.', '3e102756d1bace890553f1890d0389', 'inactive'),
('priya saha ', '01766829719  ', 'saha06571@gmail.com', 'dhaka ', 'faridpur', '$2y$10$BGTG3ViFF7nVgDcKS3UHjuTdg1Kr1UAD5WmTIpEdMX8wWEgFesb4K', '$2y$10$RktOszM4DLqA5EaBCnw5r.5ig4OMUk1IRscBHeQFfNkZKGDZDUh8a', 'ac42ceb3b1197d46f06a8a1c0b14a8', 'active'),
('gfd', '01766829719', 'saha0657@gmail.com', 'dhaka', 'Mirpur', '$2y$10$z33ILR2TYgpF1snGDwKEOOO2qZhRy.IwVUXd6RvKurr1cw7kZnCo6', '$2y$10$rvWRT0gdwYopSiaHsslUJeCwIFAQMtojLhRVRu3q7NkfQ3EeLHDAG', '40f2691b0c915bb2fe01c6fb85c0b3', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `logindel`
--

CREATE TABLE `logindel` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `con_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logindel`
--

INSERT INTO `logindel` (`id`, `email`, `name`, `contact`, `address`, `pass`, `con_pass`) VALUES
(12345, 'abcd@gmail.com', 'abcde', 1766829719, 'Lokkhibazar,puran dahka', '$2y$10$Qda.cn9xSnjnfl4YS7kWjuXkBM5DveCoUkWN.Q3TvUoJsg6jNv06.', '$2y$10$vButykFKDdBVfYdrIXNQcu/.TfsqQheifobPAThFeR.94x1rkq8re'),
(12345, 'hridoy@gmail.com', 'hridoy', 1766829712, 'dhaka', '$2y$10$jnyPbNoK/LThuFHYl9u5tOZM94uogYVYkVQ.upRRivlBhHLhlu3GC', '$2y$10$stWbgi9Dy8Ry1V8M0U48t.bDpGZXKm2MV4opXSgpOyjZBpjltBMkO'),
(12345, 'saha06571@gmail.com', 'Priya', 1766829719, 'Lokkhibazar,puran dahka', '$2y$10$Q9L8ficc59Ko5ocC8zEtIOxFEVXUSEXL7AMWgJHgfcvtxFSuWquPW', '$2y$10$NQJMziwWhhSJPyjHhYZNkObPFYzSzqXk.8rSi8rOOrXw.iPlbOr6u');

-- --------------------------------------------------------

--
-- Table structure for table `loginseller`
--

CREATE TABLE `loginseller` (
  `id` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `con_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginseller`
--

INSERT INTO `loginseller` (`id`, `email`, `name`, `contact`, `address`, `pass`, `con_pass`) VALUES
('12345', 'aaaaaa@gmail.com', 'susmita', '01766829719', 'Lokkhibazar,puran dahka', '$2y$10$SzeH/nRN3H/m8Phs/.t1v.uKu1gTgFBi9cPDCEM1/yXJB4lrcii3y', '$2y$10$H.zCkkLqhx1BvJ/TFeQf9.9.YGyo/yZkCW0tw0QTVG/zGKYcpqDFe'),
('12345 ', 'abc@gmail.com', 'priya  ', '01766829712', 'Lokkhibazar,puran dahka', '$2y$10$WVvxQBbNciiSCNQa0qwhpuqQppV8V61Osc.QC8q.kdVCvCA9WsjZy', '$2y$10$VEBMMXrIBwg8ZZKc4.avVOEqFGejTiDsPyRK5Qe.HOyF9wCMeRbCq'),
('12345', 'b180305047@gmail.com', 'susmita', '01766829719', 'Lokkhibazar,puran dahka', '$2y$10$pSyQC5FAoUa/TC7oCVP/2.wfPVNFKYVa.Izz7VTUKsZksQnifBMna', '$2y$10$qwk6Bmng8wtfGkwxxLuSBOFY/iSYeoJzp9BrG1749nW7fCLgNxeby'),
('12345 ', 'dsds@gmail.com', 'abcde', '01766829712 ', 'Lokkhibazar,puran dahka', '$2y$10$3PfD8JLU//T10BK1RXnmuegPqbEjXRvsyHazc4/ECRgxfE866dbDy', '$2y$10$IQDDceLYRoyKv7GcuHPeMe9CKR4MOiwXgKG5O/Nhn5lIxsfF4GwtS'),
('12345 ', 'riya@gmail.com', 'Riya saha ', '01766829712 ', 'dhaka', '$2y$10$CFUYcSXDpUOYiz5lkkCJuuPw6CiHzocwa9yyxpSELjcEFoKr07fh.', '$2y$10$HWP4kI/MSb70jZDDzI0lO.uqL9Uq4HTRQuKO/dmJ4pWIR93FTgdK.'),
('12345', 'saha06571@gmail.com', 'priya saha', '01766829719', 'Lokkhibazar,puran dahka', '$2y$10$vTtRTIWefDS016hXrSGE..tDcMpIUMH/JCwkWK1hj2hZ3P2O1Czk6', '$2y$10$9DYlMptOHf35ACMtO0R8F.gQyzMkW99sQ3ekNKL3IWOqRc5FUrY52'),
('12345', 'saha065@gmail.com', 'priya saha', '01766829719', 'Lokkhibazar,puran dahka', '$2y$10$T0b4.McoLW4w3rkyhEknzOxPWcOYXf0GmdLD55dgHkF5NpqlAJSp6', '$2y$10$U42WTcgOIOjC4XPEK6Hbbu/x7ln/ytO4JCyjcTfWJRBikfOUTthbC'),
('12345', 'tanvir@gmail.com', 'hridoy', '01766829719', 'Lokkhibazar,puran dahka', '$2y$10$tmOUxQtCGduxXlo7WZFl.uW6YedjQiJZiAuvuV8O1a57PiMRfC0.m', '$2y$10$gSL6brf0u8K2K.kESl/PF./MdDjwpVEftdE2NAdgrrhbAY5Qz8cBe');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `taken` varchar(255) NOT NULL,
  `del_name` varchar(255) NOT NULL,
  `del_id` int(255) NOT NULL,
  `del_email` varchar(255) NOT NULL,
  `del_contact` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `email`, `username`, `bank`, `number`, `transaction_id`, `product_id`, `amount`, `Address`, `taken`, `del_name`, `del_id`, `del_email`, `del_contact`, `status`) VALUES
(5, 'saha06571@gmail.com', 'priya saha', 'Bkash', '01766829719', '12344567889', '42,41,45,', '43000', 'faridpur', 'Done', 'Priya', 12345, 'saha06571@gmail.com', '1766829719', 'Package Processing'),
(6, 'saha06571@gmail.com', 'priya saha', 'Bkash', '01766829719', '12344567887', '41,46,', '15000', 'faridpur', 'Done', 'Priya', 12345, 'saha06571@gmail.com', '1766829719', 'Handed'),
(7, 'saha06571@gmail.com', 'priya saha', 'Bkash', '01766829719', '12344567881', '42,41,46,', '18500', 'faridpur', 'no', '', 0, '', '', ''),
(8, 'saha06571@gmail.com', 'priya saha', 'Bkash', '01766829719', '12344567889', '42,41,45,', '43000', 'faridpur', 'Done', 'Priya', 12345, 'saha06571@gmail.com', '1766829719', 'Pick up in Progress'),
(9, 'hmhridoy@gmail.com', 'tanvir_ahammed', 'Bkash', '01766829719', '12044567881', '42,39,', '13500', 'Lokkhibazar,puran dahka', 'Done', 'Riya saha ', 12345, 'riya@gmail.com', '01766829712 ', 'Arrived at our Warehouse'),
(10, 'saha06571@gmail.com', 'priya saha', 'Bkash', '01766829719', '12344567889', '42,51,38,', '13000', 'faridpur', 'Done', 'hridoy', 12345, 'hridoy@gmail.com', '1766829712', 'Shipped'),
(11, 'saha06571@gmail.com', 'priya saha', 'Bkash', '01766829719', '12344567889', '42,53,', '17500', 'faridpur', 'no', '', 0, '', '', ''),
(12, 'saha06571@gmail.com', 'priya saha', 'Bkash', '01766829719', '12344567856', '42,53,', '14000', 'faridpur', 'no', '', 0, '', '', ''),
(13, 'saha06571@gmail.com', 'priya saha ', 'Bkash', '01766829719  ', '12344567889', '54,42,', '10569', 'faridpur', 'no', '', 0, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logincustomer`
--
ALTER TABLE `logincustomer`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `logindel`
--
ALTER TABLE `logindel`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `loginseller`
--
ALTER TABLE `loginseller`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
