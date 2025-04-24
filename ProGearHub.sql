-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Apr 24, 2025 at 10:56 PM
-- Server version: 10.4.34-MariaDB-1:10.4.34+maria~ubu2004
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ProGearHub`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `Id` int(11) NOT NULL,
  `Name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`Id`, `Name`) VALUES
(1, 'Shoes'),
(2, 'Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `submitted_at`) VALUES
(1, 'John Doe', 'john@example.com', 'Product Inquiry', 'Do you have mountain bikes available?', '2025-04-09 09:05:39'),
(2, 'Jane Smith', 'jane@example.com', 'Order Issue', 'I need to change my shipping address.', '2025-04-09 09:05:39'),
(3, 'Bruno', 'bruno@gmail.com', 'Hello tehere', 'Have a nice day', '2025-04-16 08:21:40'),
(4, 'gina', 'gina@gmail.com', 'Hello, there', 'You have a nice day', '2025-04-22 02:02:25'),
(5, 'gina', 'gina321garcia@gmail.com', 'hola', 'hi', '2025-04-23 07:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL CHECK (`quantity` > 0),
  `price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) GENERATED ALWAYS AS (`quantity` * `price`) STORED,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_name`, `email`, `product_name`, `quantity`, `price`, `order_date`) VALUES
(1, 'Alice Brown', 'alice@example.com', 'Running Shoes', 2, 59.99, '2025-04-09 09:05:39'),
(2, 'Bob White', 'bob@example.com', 'Tennis Racket', 1, 89.99, '2025-04-09 09:05:39');

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCTS`
--

CREATE TABLE `PRODUCTS` (
  `Id` int(11) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Category` int(32) NOT NULL,
  `Price` decimal(6,2) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Image` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `PRODUCTS`
--

INSERT INTO `PRODUCTS` (`Id`, `Name`, `Category`, `Price`, `Description`, `Image`) VALUES
(1, 'Shoes Trainers', 2, 58.00, 'Love a trend that captures form and function.', 'Imagenes-12.jpg'),
(2, 'Racket 16', 3, 65.00, 'We\'ve been helping players find the right racquet for 25+ years.', 'Imagenes-13.jpg'),
(3, 'NordicTrack', 4, 355.00, 'Future with 50 years of innovation and premium materials.', 'imagenes-15.jpg'),
(4, 'Weightlifting', 5, 58.00, 'The best of the best strength equipment brands with a cheap price tag. ', 'imagenes-17.jpg'),
(5, 'Freeform Cardio', 6, 280.00, 'Health and fitness whilst having fun with Gym and Fitness.', 'imagenes-16.jpg'),
(6, 'Gel-Nimbus 27', 7, 78.00, 'From cushioned and lightweight to comfy and stable.', 'Imagenes-14.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `PRODUCTS`
--
ALTER TABLE `PRODUCTS`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `PRODUCTS`
--
ALTER TABLE `PRODUCTS`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
