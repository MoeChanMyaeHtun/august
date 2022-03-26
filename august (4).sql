-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2020 at 09:34 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `august`
--
CREATE DATABASE IF NOT EXISTS `august` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `august`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `password`, `email`, `phone`) VALUES
(1, 'aaa', '47bce5c74f589f4867dbd57e9ca9f808', 'aa@gmail.com', '09999999999'),
(2, 'Eaint Thet', '795ed999c1f735bd0ae240ef125b8efe', 'moechan@gmail.com', '09250290102'),
(3, 'Eaint ', '09f71879bebc416e496c12b71f9c5590', 'eaint@gmail.com', '09961586677');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf16_unicode_ci NOT NULL,
  `address` varchar(80) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `password`, `email`, `phone`, `address`) VALUES
(1, 'qqq', 'b2ca678b4c936f905fb82f2733f5297f', 'qq@gmial.com', '987477', 'qqq'),
(2, 'Eaint Thet', '795ed999c1f735bd0ae240ef125b8efe', 'moechan@gmail.com', '09250290102', 'ykn');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
  `delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_name` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(80) NOT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `delivery_name`, `phone`, `address`) VALUES
(8, 'aaa', '09999999999', 'yangon'),
(9, 'Eaint ', '09250290102', 'ykn');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `message` varchar(255) NOT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `name`, `subject`, `email`, `message`) VALUES
(1, 'qqq', 'tea', 'qqq@gmail.com', 'adffggd');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `photo` varchar(225) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fkcat_id` (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`product_id`, `product_name`, `cat_id`, `price`, `photo`) VALUES
(1, 'Bubble Milk Tea', 1, 1500, '14.jpg'),
(2, 'Lemon Passion QQ', 1, 1500, '15.jpg'),
(3, 'Grass Jelly Milk Tea', 1, 1500, '16.jpg'),
(4, 'Lemon Mango Bo Bo', 1, 2000, '17.jpg'),
(5, ' Jelly Milk Tea', 1, 1800, '18.jpg'),
(6, 'Lemon Strawberry ', 1, 2000, '12.jpg'),
(7, 'Pudding Milk Tea', 1, 2000, '19.jpg'),
(8, 'Ice Cream Milk Tea', 1, 2000, '20.jpg'),
(9, 'Milk Tea', 1, 2000, '21.jpg'),
(10, 'Blue Sky', 2, 2000, '22.jpg'),
(11, 'Green Apple', 2, 2000, '23.jpg'),
(12, 'Mango', 2, 2000, '24.jpg'),
(13, 'Strawberry Soda', 2, 2000, '25.jpg'),
(14, 'Milk Ice-cream', 3, 1500, '26.jpg'),
(15, 'Strawberry Ice Cream', 3, 1500, '27.jpg'),
(16, 'Chocolate Ice Cream', 3, 1500, '28.jpg'),
(17, 'Cafe Americano', 4, 1800, '29.jpg'),
(18, 'Cappuccino', 4, 2200, '30.jpg'),
(19, 'Cafe Mocha', 4, 3000, '31.jpg'),
(20, 'Cafe Latte', 4, 3000, '32.jpg'),
(21, 'French fries', 7, 1000, '33.jpg'),
(22, 'Chicken Piece', 7, 1500, '34.jpg'),
(23, 'Hot Dog', 7, 1000, '35.jpg'),
(24, 'Chicken Wing', 7, 1500, '36.jpg'),
(25, 'Taiwan Tofu', 7, 1000, '37.jpg'),
(26, 'Chicken Nugget', 7, 1800, '38.jpg'),
(27, 'Fish Ball', 7, 2000, '39.jpg'),
(28, 'Mushroom Meat Ball', 7, 2800, '40.jpg'),
(29, 'Korea Noodle', 9, 2800, '41.jpg'),
(30, 'Chicken Fillet Rice ', 9, 2800, '42.jpg'),
(31, 'Fried Dumpling', 9, 2200, '43.jpg'),
(32, 'Fried Sweet Potato Stick', 7, 1500, '44.jpg'),
(33, 'Fried chili chicken', 9, 2800, '45.jpg'),
(34, 'Sweet Corn', 5, 2200, '46.jpg'),
(35, 'Chicken Sandwish', 5, 2400, '47.jpg'),
(36, 'Hum Sandwish', 5, 2500, '48.jpg'),
(37, 'Tuna Sandwish', 5, 2600, '49.jpg'),
(38, 'August Special', 5, 3000, '50.jpg'),
(39, 'Tea Egg', 7, 1000, '51.jpg'),
(40, 'Milk', 6, 1500, '52.jpg'),
(41, 'Papaya Milk', 6, 1800, '53.jpg'),
(42, 'Banana Milk', 6, 1800, '54.jpg'),
(43, 'Lemon Juice', 6, 1500, '55.jpg'),
(44, 'Lemon Passion Juice', 6, 1800, '55(1).jpg'),
(45, 'Lemon & Honey', 6, 2300, '58.jpg'),
(46, 'Lemon Mango Juice', 6, 1800, '57.jpg'),
(47, 'Lemon Strawberry Juice', 6, 2000, '59.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menucategory`
--

CREATE TABLE IF NOT EXISTS `menucategory` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `menucategory`
--

INSERT INTO `menucategory` (`cat_id`, `cat_name`) VALUES
(1, 'Tea'),
(2, 'Italian Soda'),
(3, 'Ice Cream'),
(4, 'Coffee'),
(5, 'Sandwich'),
(6, 'Jucies & Milk'),
(7, 'Deep Fried Foods'),
(9, 'Rice & Noodle');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `delivery_name` varchar(30) NOT NULL,
  `delivery_phone` varchar(20) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `send_date` date NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FK_cat_id` (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `delivery_name`, `delivery_phone`, `delivery_address`, `order_date`, `status`, `send_date`) VALUES
(32, 1, 'qqq', '987477', 'qqq', '2020-03-30', 1, '2020-04-03'),
(34, 1, 'qqq', '987477', 'qqq', '2020-04-02', 0, '0000-00-00'),
(35, 1, 'qqq', '987477', 'qqq', '2020-04-03', 0, '0000-00-00'),
(36, 1, 'qqq', '987477', 'qqq', '2020-04-03', 0, '0000-00-00'),
(37, 1, 'qqq', '987477', 'qqq', '2020-04-03', 0, '0000-00-00'),
(39, 1, 'qqq', '987477', 'qqq', '2020-04-04', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `amount` double NOT NULL,
  KEY `FK_order_detail` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `product_id`, `product_qty`, `amount`) VALUES
(32, 1, 2, 3000),
(32, 3, 1, 1500),
(34, 1, 1, 1500),
(35, 1, 1, 1500),
(36, 1, 1, 1500),
(37, 1, 1, 1500),
(39, 1, 1, 1500);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fkcat_id` FOREIGN KEY (`cat_id`) REFERENCES `menucategory` (`cat_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_cat_id` FOREIGN KEY (`customer_id`) REFERENCES `menucategory` (`cat_id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FK_order_detail` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
