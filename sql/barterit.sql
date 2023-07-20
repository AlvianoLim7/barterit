-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 03:38 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barterit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `item_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `item_name` varchar(55) NOT NULL,
  `item_qty` int(5) NOT NULL,
  `item_desc` varchar(255) NOT NULL,
  `item_lat` varchar(55) NOT NULL,
  `item_long` varchar(55) NOT NULL,
  `item_state` varchar(55) NOT NULL,
  `item_locality` varchar(55) NOT NULL,
  `item_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`item_id`, `user_id`, `item_name`, `item_qty`, `item_desc`, `item_lat`, `item_long`, `item_state`, `item_locality`, `item_date`) VALUES
(22, 11, 'tv led', 1, 'wdsadwadsawdsa', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-04'),
(23, 11, 'oookeee', 2, '123qweasdzxc', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-04'),
(24, 11, 'asdfgh', 1, 'eddhjiygvbn', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-04'),
(25, 10, 'testing', 2, 'rrggffjhh', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-11'),
(26, 10, 'testing2', 2, 'gggggggg', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-11'),
(27, 12, 'testing', 3, 'fjgjghvvhjjggh', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-11'),
(28, 12, 'tvhh', 8, 'fgcfjhhudvjth', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-11'),
(29, 12, 'tvvvv', 8, 'wdsadwdsawd', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-11'),
(30, 14, 'sdf', 3, 'fdgdfg', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-12'),
(31, 19, 'hula', 5, 'wdaswdsawd', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-13'),
(32, 19, 'huhu', 23, 'tttttggggg', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-13'),
(33, 19, 'wdsawd', 55, 'ffffffff', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-13'),
(34, 19, 'gosh', 6, 'ftffffff', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-13'),
(35, 19, 'ggez', 3, 'ggffvvbg', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-13'),
(36, 19, 'jok', 4, 'rtyhtfj', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(37, 19, 'test', 3, 'trtttert', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(38, 19, 'tur', 2, 'rrtttrr', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(39, 19, 'tur', 2, 'rrtttrr', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(40, 19, 'tur', 2, 'rrtttrr', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(41, 19, 'new', 3, 'fffgggjhhjj', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(42, 22, 'test(2)', 1, 'eeeeeeeee', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(43, 22, 'test(2)(2)', 1, 'rereeeeeerrr', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(45, 22, 'test(2)(3)', 3, 'ddhgujn', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(46, 22, 'test(2)(4)', 3, 'rffjfgvhk', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(47, 22, 'test(2)(5)', 2, 'fhvfufiyu', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(48, 22, 'test(2)(6)', 0, 'rf so if f ghhhh GG if we go', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-15'),
(49, 21, 'meja', 1, 'frhhjfth', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-17'),
(50, 21, 'meja2', 22, 'tttttttt', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-19'),
(51, 21, 'meja3', 1, 'qwerdg', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-19'),
(53, 21, 'testtt', 1, 'ffhjuyg', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-19'),
(54, 21, 'jjj', 5, 'ffhjh', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-19'),
(55, 19, 'feet', 3, 'dchgj', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-19'),
(56, 21, 'ggggg', 5, 'fhfyugjh', '2.9941083', '101.6527067', 'Selangor', 'Seri Kembangan', '2023-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(5) NOT NULL,
  `buyer_id` int(5) NOT NULL,
  `buyer_name` varchar(255) NOT NULL,
  `seller_id` int(5) NOT NULL,
  `seller_name` varchar(255) NOT NULL,
  `buyer_item_id` int(5) NOT NULL,
  `seller_item_id` int(5) NOT NULL,
  `order_status` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `buyer_id`, `buyer_name`, `seller_id`, `seller_name`, `buyer_item_id`, `seller_item_id`, `order_status`) VALUES
(38, 12, 'qwerty', 11, 'onaivla', 28, 22, 'Success'),
(39, 12, 'qwerty', 11, 'onaivla', 27, 24, 'Success'),
(40, 12, 'qwerty', 11, 'onaivla', 27, 24, 'Success'),
(41, 12, 'qwerty', 11, 'onaivla', 29, 24, 'Rejected'),
(42, 14, 'lemuel', 12, 'qwerty', 30, 29, 'Success'),
(51, 22, 'test2', 21, 'final', 46, 56, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(5) NOT NULL,
  `user_name` varchar(55) NOT NULL,
  `user_email` varchar(55) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_otp` int(5) NOT NULL,
  `user_datareg` date NOT NULL DEFAULT current_timestamp(),
  `user_coin` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_otp`, `user_datareg`, `user_coin`) VALUES
(10, 'rashal1', 'alviano@gmail.com', '3e4a70ec47545c6164d9aacb55b2d0e59b4df982', 63467, '2023-06-12', 0),
(12, 'qwerty', 'qwerty@gmail.com', '882937f06eba449dac28750f741acc14c19ffbbf', 26436, '2023-07-11', 0),
(14, 'jajaja', 'lemuelasaf@gmail.com', '0337b1812d92f92d0cd7ca2d3ae93f5859b45890', 71322, '2023-07-12', 0),
(19, 'final', 'guy@gmail.com', 'cc9f816a42431cf852cdc7a3fad42a6f65ffce24', 71685, '2023-07-13', 10),
(20, 'bobz', 'bobz@gmail.com', 'cc9f816a42431cf852cdc7a3fad42a6f65ffce24', 10943, '2023-07-13', 0),
(21, 'final', 'test@gmail.com', 'cc9f816a42431cf852cdc7a3fad42a6f65ffce24', 82652, '2023-07-15', 25),
(22, 'test2', 'test2@gmail.com', 'cc9f816a42431cf852cdc7a3fad42a6f65ffce24', 42226, '2023-07-15', 0),
(23, 'test3', 'test3@gmail.com', 'cc9f816a42431cf852cdc7a3fad42a6f65ffce24', 85805, '2023-07-16', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
