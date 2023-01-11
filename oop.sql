-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 02:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`user_id`, `name`, `username`, `email`, `password`, `address`) VALUES
(19, 'testpass', 'testpass', 'testpass@mail.com', '$2a$10$y8ECUmHD7tfmX.JON82m/eOpLCWuj3L9FQpI3CX.BEir.7bxDMdBe', 'pbb');

-- --------------------------------------------------------

--
-- Table structure for table `electronic`
--

CREATE TABLE `electronic` (
  `seller_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electronic`
--

INSERT INTO `electronic` (`seller_name`, `product_name`, `price`, `description`, `type`) VALUES
('FixPrint Indonesia', 'Printer Canon G2010', 1755000, 'Perbedaan dan Keuntungannya apa??\r\n\r\nORIGINAL INK Menggunakan Tinta Original Canon, Garansi Resmi Canon 2th + 1th\r\n1. 100% Printer New Original Canon\r\n2. 100% Tinta Original Canon\r\n3. Hasil Cetak Tajam\r\n4. Biaya Cetak Lebih mahal karena menggunakan tinta Original dengan estimasi harga tinta refill 400rb++\r\n\r\nCOMPATIBLE INK Menggunakan Tinta Compatible Premium, Garansi Toko 30 hari\r\n1. 100% Printer New Original Canon\r\n2. Menggunakan Tinta Premium Ink (compatible ink)\r\n3. Hasil Cetak Tajam 99% Like Original (Dijamin tinta aman utk head printer)\r\n4. Biaya Cetak jauh lebih murah dengan estimasi harga tinta refill 100rb an untuk 4 botol tinta CMYK\r\n\r\nJika ada yang murah & aman kenapa pilih mahal :-D', 'Printer'),
('FixPrint Indonesia', 'Sony WF 1000XM4 Noise Cancelling Bluetooth Earbud', 3499000, '#STTOMSCO #pastiORIGINAL #pastiLEBIHMURAH #pastiGANTIBARU\r\nGaransi GANTI UNIT BARU jika ada temuan FACTORY DEFECT selama 7 hari dari barang diterima.', 'Earphone'),
('Ideal Brand', 'Ideal Smartphone XS10', 1000000, 'Brand new phone from Ideal Brand: Smartphone XS10', 'Phone'),
('a', 'hp', 90000, 'hp', 'gaming'),
('test', 'monitor', 2500000, 'aoc', '24inch');

-- --------------------------------------------------------

--
-- Table structure for table `fashion`
--

CREATE TABLE `fashion` (
  `seller_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fashion`
--

INSERT INTO `fashion` (`seller_name`, `product_name`, `price`, `description`, `type`) VALUES
('Batik55', 'Kemeja Batik Lengan Panjang', 150000, 'Ini deskripsi', 'Kemeja'),
('Zara', 'Celana Jeans', 200000, 'Ini deskripsi', 'Celana'),
('Uniqlo', 'Kaos Polos Putih', 100000, 'Ini deskripsi', 'Kaos'),
('Batik55', 'Kemeja Batik Lengan Pendek', 150000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In finibus ex velit, a sodales elit accumsan in. Maecenas eu nulla ante. Fusce sed risus ut magna faucibus tincidunt in et dolor. Mauris quis quam dolor. Praesent est justo, tristique id turpis ut, sodales imperdiet velit. Curabitur quis ultrices neque. Sed ultrices sem quis risus imperdiet congue.', 'Kemeja'),
('Ideal Brand', 'Celana Pendek 5 Kantong', 50000, 'Celana Pendek multifungsi yang memiliki 5 kantong', 'Celana'),
('Batik55', 'Celana Jeans motif Batik', 700000, 'Very good celana jeans with batik motive', 'Celana'),
('a', 'celana', 150000, 'black n white', 'cargo'),
('test', 'baju', 100000, 'baju', 'baju');

-- --------------------------------------------------------

--
-- Table structure for table `gamevoucher`
--

CREATE TABLE `gamevoucher` (
  `seller_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamevoucher`
--

INSERT INTO `gamevoucher` (`seller_name`, `product_name`, `price`, `description`, `type`) VALUES
('test', 'steam', 70000, 'idr', 'steam');

-- --------------------------------------------------------

--
-- Table structure for table `kitchen_set`
--

CREATE TABLE `kitchen_set` (
  `seller_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kitchen_set`
--

INSERT INTO `kitchen_set` (`seller_name`, `product_name`, `price`, `description`, `type`) VALUES
('Masak123', 'Wajan Hitam Super 40CM', 20000, 'Wajan anti karat', 'Alat Masak'),
('Ideal Brand', 'Pisau Set 7 in 1', 100000, 'Bahan stainless steel dilapisi dengan lapisan anti lengket, handle nyaman di genggam, mudah dibersihkan, tidak berkarat, mudah disimpan.\r\n1 Set Berupa :\r\n- Pisau Daging Besar ( 29CM × 6,5CM )\r\n- Pisau Sedang (31CM×5CM)\r\n- Pisau Buah Kecil ( 23CM × 2,5CM )\r\n- Gunting ( 19,5CM × 8,5CM )\r\n- Peeler ( 13CM × 5CM )\r\n- Talenan ( 32,5CM × 21,5CM )\r\n- Wadah penyimpanan pisau ( 9,5CM × 20CM × 13CM )', 'Alat Masak'),
('KAES Kreations', 'ULMIX Talenan Kayu Ulin Besar', 110000, 'Talenan berbahan kayu ulin yang kokoh dan besar, cocok untuk pekerjaan memotong yang memerlukan tenaga kuat.', 'Aksesoris Dapur'),
('Batik55', 'Wajan motif Batik', 50000, 'Very good wajan', 'Wajan'),
('a', 'a', 99999, 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `pcgamingaccessories`
--

CREATE TABLE `pcgamingaccessories` (
  `seller_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pcgamingaccessories`
--

INSERT INTO `pcgamingaccessories` (`seller_name`, `product_name`, `price`, `description`, `type`) VALUES
('a', 'mouse', 900000, 'light speed', 'hyoerx'),
('test', 'keyboard', 1500000, 'red', 'mecha');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`user_id`, `name`, `username`, `email`, `password`, `address`) VALUES
(1, 'b', 'b', 'b', 'b', 'b'),
(2, 'Farhan', 'farhan_seller', 'farhan@gmail.com', '123456', 'Jalan Sersan Muslim'),
(3, 'a', 'a', 'a', 'a', 'a'),
(4, 'Batik55', 'batik55', 'test@gmail.com', '123456', 'Jalan jalan'),
(5, 'Ideal Brand', 'ideal', 'ideal@gmail.com', '123456', 'Jalan Jalan'),
(6, 'Masak123', 'masak123', 'masak@mail.com', '123456', 'Jalan'),
(7, 'FixPrint Indonesia', 'fixprint', 'fixprint@mail.com', '123456', 'Jalan jalan'),
(8, 'Farhan', 'hansoloStore', 'hansolo@gmail.com', '123456', 'Bandung'),
(9, 'My Store', 'store123', 'name@gmail.com', '123456', 'Bandung'),
(10, 'admin', 'admin', 'admin@mail.com', 'adm', 'b'),
(11, 'test', 'test', 'test@mail.com', '$2a$10$XdYhl9MshzOuQ6GS1tBD8.uiPUJEimAh5jzc8wp9UCFnX4MAz8196', 'pbb'),
(12, 'seller', 'seller', 'seller@mail.com', '$2a$10$JQ4EhVgpzZ2F3pBklGJZI.AbRi6ws8dtswnVR87Eg0xgK92eB6wX2', 'telkom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `customer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
