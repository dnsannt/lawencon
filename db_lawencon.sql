-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 03, 2022 at 05:54 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lawencon`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `parent_category_id`) VALUES
(1, 'Fashion', NULL),
(2, 'Elektronik', NULL),
(3, 'Pakaian', 1),
(4, 'Celana', 1),
(5, 'Handphone', 2),
(6, 'Alat rumah tangga', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `customer_code` varchar(200) NOT NULL,
  `customer_name` char(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `birth_date` date NOT NULL,
  `default_payment` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `customer_code`, `customer_name`, `address`, `birth_date`, `default_payment`) VALUES
(124, 'C∪ST389012', 'Lesmana', 'Jln. Diponogoro', '1980-05-15', 'cash'),
(223, 'CUST021000', 'Bunga', 'Jln. Melati', '1960-04-12', 'credit'),
(290, 'CUST278911', 'Ani', 'Jln. Mawar', '1972-01-01', 'cash'),
(432, 'CUST478555', 'Rafi', 'Jln. Bengkoang', '1988-02-24', 'cash'),
(568, 'CUST63255', 'Tori', 'Jawa Barat', '1974-07-31', 'credit');

-- --------------------------------------------------------

--
-- Table structure for table `INVDTLS`
--

CREATE TABLE `INVDTLS` (
  `Invno` int(11) NOT NULL,
  `Prod_desc` varchar(50) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `INVDTLS`
--

INSERT INTO `INVDTLS` (`Invno`, `Prod_desc`, `Amount`) VALUES
(100, 'Argon', 155),
(100, 'Argon', 250),
(101, 'Oxygen', 322),
(101, 'Oxygen', 65);

-- --------------------------------------------------------

--
-- Table structure for table `INVHDR`
--

CREATE TABLE `INVHDR` (
  `Invo` int(11) NOT NULL,
  `Invdate` date NOT NULL,
  `Ac_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `INVHDR`
--

INSERT INTO `INVHDR` (`Invo`, `Invdate`, `Ac_code`) VALUES
(100, '2013-04-01', 2),
(101, '2013-04-30', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(100) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `price` char(200) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_code`, `product_name`, `price`, `category_id`) VALUES
(22, 'PRO001122', 'Iphone 7', '7000000', 5),
(123, 'PRO002321', 'Celana Jeans', '125000', 4),
(221, 'PRO522421', 'Galaxy S1', '2500000', 5),
(245, 'PRO501732', 'Kipas Angin', '320000', 6),
(320, 'PRO342132', 'Baju Bayi', '56000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `so`
--

CREATE TABLE `so` (
  `id` int(11) NOT NULL,
  `so_no` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `trans_date` date NOT NULL,
  `payment` char(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so`
--

INSERT INTO `so` (`id`, `so_no`, `customer_id`, `trans_date`, `payment`) VALUES
(1, 23400001, 290, '2017-02-20', 'cash'),
(2, 23434001, 223, '2017-02-25', 'credit'),
(3, 33400001, 124, '2017-03-15', 'cash'),
(4, 23500321, 124, '2017-03-22', 'cash'),
(5, 23402101, 290, '2017-02-20', 'cash'),
(6, 23789001, 432, '2017-02-13', 'credit'),
(7, 23389001, 432, '2017-04-15', 'credit'),
(8, 22400001, 432, '2017-03-22', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `so_detail`
--

CREATE TABLE `so_detail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` char(200) NOT NULL,
  `discount` int(11) NOT NULL,
  `so_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `so_detail`
--

INSERT INTO `so_detail` (`id`, `product_id`, `qty`, `price`, `discount`, `so_id`) VALUES
(7, 245, 4, '320000', 0, 5),
(8, 221, 23, '2500000', 5, 7),
(178, 221, 2, '2500000', 10, 3),
(221, 245, 5, '320000', 10, 8),
(232, 123, 3, '125000', 0, 1),
(245, 320, 23, '56000', 0, 2),
(333, 123, 1, '125000', 0, 4),
(431, 22, 1, '7000000', 20, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX` (`parent_category_id`) USING BTREE;

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `INVHDR`
--
ALTER TABLE `INVHDR`
  ADD PRIMARY KEY (`Invo`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX` (`category_id`);

--
-- Indexes for table `so`
--
ALTER TABLE `so`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX` (`customer_id`);

--
-- Indexes for table `so_detail`
--
ALTER TABLE `so_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `INDEX` (`product_id`,`so_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;

--
-- AUTO_INCREMENT for table `INVHDR`
--
ALTER TABLE `INVHDR`
  MODIFY `Invo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `so`
--
ALTER TABLE `so`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `so_detail`
--
ALTER TABLE `so_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
