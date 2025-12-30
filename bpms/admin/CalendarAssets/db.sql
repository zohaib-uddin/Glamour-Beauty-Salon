-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 05:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL,
  `color` varchar(191) DEFAULT NULL,
  `text_color` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start_event`, `end_event`, `color`, `text_color`) VALUES
(1, 'Salon is Off', '2024-09-04 00:00:00', '2024-09-04 00:00:00', '#e80a2f', '#ffffff'),
(2, 'Holiday', '2024-09-11 00:00:00', '2024-09-11 00:00:00', '#ffff00', 'black'),
(3, 'Today Best Offers Discount', '2024-09-17 00:00:00', '2024-09-19 00:05:00', '#00ffff', '#ffffff'),
(4, 'Break Time (1 hr)', '2024-09-06 06:00:00', '2024-09-06 07:00:00', '#00ff4b', '#ffffff'),
(5, 'Best Offer (Discount)', '2024-09-02 00:00:00', '2024-09-02 00:00:00', '#0fed93', '#ffffff'),
(6, 'today is off', '2024-09-03 00:00:00', '2024-09-03 00:00:00', '#6453e9', '#ffffff'),
(8, 'Holiday', '2024-09-28 00:00:00', '2024-09-28 00:00:00', '#0b5900', '#ffffff'),
(9, 'today offfffff', '2024-09-30 12:00:00', '2024-09-30 05:00:00', '#0015ff', '#ffffff'),
(10, 'Off Now', '2024-08-16 12:00:00', '2024-08-16 05:00:00', '#0015ff', '#ffffff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
