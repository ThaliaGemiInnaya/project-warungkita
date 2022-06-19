-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 04:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_warungkita`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL,
  `tipe_login` enum('customer','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`, `tipe_login`) VALUES
(1, 'Thalia Gemi Innaya', 'thalia', '123', '08993739045', 'thaliagemi@gmail.com', 'Kemiling', 'admin'),
(2, 'Chiara', 'chiara', '123', '0821840239', 'chiarathalita@gmail.com', 'Kampung Baru', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Makanan Ringan'),
(2, 'Minuman'),
(3, 'Alat Tulis'),
(4, 'Sembako');

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE `tb_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `customer_telp` varchar(20) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_address` text NOT NULL,
  `Wish_list` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`customer_id`, `customer_name`, `username`, `password`, `customer_telp`, `customer_email`, `customer_address`, `Wish_list`) VALUES
(1, 'Azzahra Nabila', 'azzahra', '123', '08537491023', 'azzahranabilaw@gmail.com', 'Pringsewu', NULL),
(2, 'Aullya Hanan', 'aullya', '123', '081226493027', 'aullyahanan@gmail.com', 'Sekampung', NULL),
(5, 'Satria Sapta', 'satria', '123', '082176120493', 'satriasapta48@gmail.com', 'KENANGA NO.23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_create`) VALUES
(1, 2, 'aqua botol', 3500, '', 'aqua.jpg', 1, '2022-05-30 08:18:41'),
(2, 2, 'club', 3000, '<p>air putih dalam kemasan</p>\r\n', 'club.jpg', 1, '2022-05-30 15:20:40'),
(3, 1, 'chitato', 5000, '<p>keripik kentang dalam kemasan</p>\r\n', 'chitato.jpg', 1, '2022-05-30 15:22:10'),
(4, 1, 'Lays', 5000, '', 'lays.jpg', 1, '2022-05-29 15:23:06'),
(5, 3, 'pensil', 1500, '', 'pencil.jpg', 1, '2022-05-29 15:24:14'),
(6, 3, 'Pulpen', 2500, '', 'pulpen.jpg', 1, '2022-05-29 15:25:50'),
(7, 3, 'Penghapus pensil', 2000, '', 'penghapus.jpg', 0, '2022-05-29 15:27:18'),
(8, 3, 'tipe-ex', 4000, '', 'tipex.jpg', 1, '2022-05-29 15:31:19'),
(9, 4, 'Minyak Goreng', 25000, '', 'minyak.jpg', 1, '2022-05-29 07:14:44'),
(10, 1, 'Oreo', 9000, '', 'oreo.jpg', 1, '2022-05-30 09:24:03'),
(11, 2, 'Fruit Tea', 5000, '', 'fruittea.jpg', 1, '2022-05-30 09:24:59'),
(12, 2, 'Susu Beruang', 9500, '', 'susu.jpg', 1, '2022-05-30 09:24:59'),
(13, 2, 'Susu Ultra Milk', 6750, '', 'ultramilk.jpg', 1, '2022-05-30 09:26:55'),
(14, 1, 'SilverQueen', 22000, '', 'silverqueen.jpg', 1, '2022-05-30 14:25:24'),
(15, 4, 'Gula 1kg', 20000, '', 'gula.jpg', 1, '2022-05-30 14:28:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
