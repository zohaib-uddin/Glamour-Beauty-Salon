-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 05:14 PM
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
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Zohaib', 'admin', 3232806357, 'tester1@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2024-08-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `AptNumber` int(10) DEFAULT NULL,
  `AptDate` date DEFAULT NULL,
  `AptTime` time DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `UserID`, `AptNumber`, `AptDate`, `AptTime`, `Message`, `BookingDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(10, 12, 922981176, '2024-08-28', '09:07:00', 'Hello! Please  Approved My Appointment....', '2024-08-19 12:08:26', 'Ok, Sure', 'Selected', '2024-08-19 12:18:06'),
(11, 12, 880152879, '2024-08-20', '15:30:00', 'Hey! Confirm My Today Appointment.', '2024-08-20 08:08:10', 'Your Appointment is Confirmed\r\nThanks', 'Selected', '2024-08-20 08:10:56'),
(12, 12, 107660754, '2024-08-30', '16:15:00', 'Please Approved My Appointment', '2024-08-20 08:16:05', 'Shop Closed On 30 August\r\n', 'Rejected', '2024-08-20 08:17:09'),
(18, 18, 831561236, '2024-09-26', '16:38:00', 'Please Confirm My Today Appointment ', '2024-09-08 17:38:23', 'Your Appointment is confirmed!', 'Selected', '2024-09-08 17:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Phone`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(7, 'Zohaib', 'Uddin', 323280625, 'zohaibuddin376@gmail.com', 'Hello admin..\r\nRecently i face many issues', '2024-08-19 12:20:32', 1),
(8, 'Zohaib', 'Uddin', 8734639469, 'sdajvdkg@gmail.com', 'weiugfwheohfrwfff!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', '2024-09-10 16:19:58', 1),
(9, 'Zohaibbbb', 'Uddinnnn', 3489493734, 'zohaibbbbbudddddinnnn@gmail.com', 'i have a problem', '2024-09-10 21:11:33', 1),
(10, 'wjhvevwjwe', 'wdecjvdwuvc', 38993, 'ebebecvr@gmail.com', 'swcyigvcdibdcbijl11!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', '2024-09-10 21:12:50', 1),
(11, 'Huzaifa', 'Khan', 983479435, 'huzaifa@gmail.com', 'heloo admin ', '2024-09-17 14:09:49', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(28, 12, 1, 816934716, '2024-09-08 17:59:18'),
(29, 12, 2, 816934716, '2024-09-08 17:59:18'),
(30, 12, 3, 816934716, '2024-09-08 17:59:18'),
(31, 18, 6, 541140013, '2024-09-08 18:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '                        <font face=\"georgia\">                                        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.</font>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '                North Nazimabad Sector 4-F, Karachi', 'zohaibuddin376@gmail.com', 923232806257, NULL, '12:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblproducts`
--

CREATE TABLE `tblproducts` (
  `ID` int(11) NOT NULL,
  `ProductName` varchar(200) DEFAULT NULL,
  `ProductDescription` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproducts`
--

INSERT INTO `tblproducts` (`ID`, `ProductName`, `ProductDescription`, `Cost`, `Image`, `CreationDate`) VALUES
(1, 'Hair Cutting Equipment ', 'Hair Cutting Equipment ', 450, '9d17ce5c4f3d7aacad8453cb350e05131726058430.jpg', '2024-09-02 10:48:49'),
(2, 'Curly Hair Brush', 'Curly Hair Brush', 30, 'ddc94940fe025786b59c195c555392691726057113.jpg', '2024-09-02 10:54:00'),
(3, 'Manicure & Pedicure Tools', 'Manicure & Pedicure Tools\r\n', 245, '613294c32161efab7d670a5a0c8d2b7f1726056008.jpg', '2024-09-02 12:49:04'),
(5, 'Garnier Hair Gel', 'Garnier Hair Gel\r\n', 200, 'a67290fee865cefac290dfa3514b26d71726055784.jpg', '2024-09-11 10:25:43'),
(6, 'Hair Bleach', 'Hair Bleach\r\n', 15, '32d8a9eea31351d2c1892f494df7b4da1726055692.jpg', '2024-09-11 10:27:17'),
(7, 'Wax Cream', 'Wax Cream\r\n', 120, 'f3ccdd27d2000e3f9255a7e3e2c488001726053114.jpg', '2024-09-11 10:51:33'),
(8, 'Deodorant', 'Deodorant\r\n', 35, '156005c5baf40ff51a327f1c34f2975b1726053142.jpg', '2024-09-11 10:52:02'),
(9, 'Hand Cream', 'Hand Cream\r\n', 100, '799bad5a3b514f096e69bbc4a7896cd91726053166.jpg', '2024-09-11 10:52:21'),
(10, 'Cosmetic Brush', 'Cosmetic Brush\r\n', 20, 'd0096ec6c83575373e3a21d129ff8fef1726053190.jpg', '2024-09-11 10:52:46'),
(11, 'Cosmetic Cream', 'Cosmetic Cream\r\n', 60, '032b2cc936860b03048302d991c3498f1726053209.jpg', '2024-09-11 10:53:09'),
(12, 'Angel Statue', 'Angel Statue\r\n', 140, '18e2999891374a475d0687ca9f989d831726053230.jpg', '2024-09-11 10:53:28'),
(13, 'Nature Care', 'Nature Care\r\n', 70, 'fe5df232cafa4c4e0f1a0294418e56601726053252.jpg', '2024-09-11 10:53:46'),
(14, 'Craft Soap', 'Hair Craft Soap\r\n', 60, '8cda81fc7ad906927144235dda5fdf151726053272.jpg', '2024-09-11 10:54:02'),
(15, 'Nail Polish', 'Nail Polish', 25, '30e62fddc14c05988b44e7c02788e1871726053292.jpg', '2024-09-11 10:54:20'),
(16, 'Hair Balsam', 'Hair Balsam\r\n', 45, 'ae566253288191ce5d879e51dae1d8c31726053309.jpg', '2024-09-11 10:54:44'),
(17, 'Body Lotion', 'Body Lotion', 160, '62bf1edb36141f114521ec4bb41755791726053577.jpg', '2024-09-11 10:54:59'),
(18, 'Glitter Nail Polish', 'Glitter Nail Polish', 50, '8df7b73a7820f4aef47864f2a6c5fccf1726053369.jpg', '2024-09-11 10:55:15'),
(19, 'Hair Serums', 'Hair Serums\r\n', 70, '1707da2aecd13169fd6600d284ef78b11726055123.jpg', '2024-09-11 11:27:56'),
(20, 'Face Waxing ', 'Face Waxing \r\n', 120, '6f474ac419f5947f952ebfb90cdc3aa61726055552.jpg', '2024-09-11 11:36:28'),
(21, 'Body Wax', 'Body Wax (Hard & Soft)\r\n', 120, '7ad28999da72bafd05e0c2fd5cc4a80e1726055414.jpg', '2024-09-11 11:50:14'),
(22, 'Eyebrow', 'Eyebrow\r\n', 18, 'f37a910c8ad6931b2da701a527c1e0321726057765.jpg', '2024-09-11 12:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblpurchases`
--

CREATE TABLE `tblpurchases` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Cost` decimal(10,2) NOT NULL,
  `purchaseDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServiceDescription`, `Cost`, `Image`, `CreationDate`) VALUES
(1, 'Brightening Facial', 'Illuminate your skin with our brightening facial, designed to enhance radiance and even out your complexion.', 780, 'fec8e59a94caa8028a8ef5f7666755e41726079659.jpg', '2024-09-04 22:37:38'),
(2, 'Moisturizing Hair Wash', 'Revitalize your hair with our luxurious moisturizing hair wash, leaving it soft, deeply hydrated, and irresistibly silky smooth.', 500, 'bc9f06e58088be83a3892dcbd60b34f41726079680.jpg', '2024-09-04 22:37:53'),
(3, 'Hair Cutting', 'Transform your look with our professional hair cutting services, delivering precise styles and a fresh, modern edge.', 150, 'd289e458b6b584933db335dc84abe3cb1726079699.jpg', '2024-09-04 22:37:10'),
(4, 'Hair Wash', 'Enjoy a refreshing hair wash that cleanses and invigorates your scalp, leaving your hair feeling fresh and revitalized.', 300, 'bbd3b887444208bd5b2d8b07b1bb6def1726079724.jpg', '2024-09-04 22:37:34'),
(5, 'Body Massage', 'Experience ultimate relaxation and relief with our expert body massage services, tailored to ease tension and restore your well-being.', 600, 'aa360033125d59b47103f9cc028f74ee1726079795.jpg', '2024-09-04 22:37:47'),
(6, 'Normal Menicure', 'Pamper your hands with our classic manicure, providing a clean, polished look and soothing care for your nails and cuticles.', 100, '2695ffe57429d27b747a6c8a9205528c1726079818.jpg', '2024-09-04 22:37:01'),
(7, 'Normal Pedicure', 'Revitalize your feet with our standard pedicure, offering a thorough clean, exfoliation, and a touch of polish for a refreshed and smooth finish.', 100, '1cdf2ec2edcc5ecb03ca1a5fac2974e11726079835.jpg', '2024-09-04 22:37:19'),
(8, 'Deluxe Menicure ', 'Experience the ultimate in nail care with our deluxe manicure, featuring enhanced exfoliation, moisturizing treatments, and a luxurious finish for perfectly groomed hands.', 250, 'b39227526243ab874751327fd1883eea1726079855.jpg', '2024-09-04 22:37:38'),
(9, 'Deluxe Pedicure', 'Indulge in our deluxe pedicure for a luxurious treatment that includes advanced exfoliation, soothing massages, and a flawless finish, leaving your feet refreshed and pampered.', 250, '1e766c143176a0738e1b38ef865845f31726079870.jpg', '2024-09-04 22:37:53'),
(10, 'Layer Cut', 'Achieve a dynamic, stylish look with our layer cut, adding texture for a modern hairstyle.', 320, '2f85013704fa9d6b0e0f1531c31eebe61726079886.jpg', '2024-09-04 22:37:08'),
(11, 'Loreal Hair Cut', 'Achieve a flawless style with a Loreal precision haircut.', 450, 'b3a28376ec0f348580d7e07640037a0f1726079902.jpg', '2024-09-04 22:37:35'),
(12, 'Pixie Cut', 'Refresh your look with a sleek, stylish pixie cut for a bold and modern edge.', 230, '0c92c39abf5119031f1ae4ecf61109b71726079916.jpg', '2024-09-05 01:38:27'),
(16, 'Hair Massage', 'Relax with our soothing hair massage, designed to relieve stress, enhance circulation, and promote healthy, revitalized hair.', 50, '9494daa4f7ece5cfc3cb38940609fe191726079934.jpg', '2024-09-04 20:35:13'),
(18, 'Fruit Facial', 'Indulge in a revitalizing fruit facial that nourishes your skin with natural vitamins and leaves your complexion glowing and refreshed.', 400, 'ce54c491b2e8969416c540757e7d3a821726080089.png', '2024-09-05 18:41:29'),
(19, 'Body Spa', 'Relax and rejuvenate with our luxurious body spa services, designed to refresh your mind and revitalize your body.', 900, 'e249cf36947ba251e9c910867a7b617d1726080105.png', '2024-09-05 18:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `balance` float DEFAULT 1500
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`, `balance`) VALUES
(12, 'Zohaib', 'Uddin', 323280625, 'zohaibuddin376@gmail.com', '03b29479725f118c2bcb577df1fea876', '2024-08-19 12:04:25', 1500),
(17, 'Anas', 'Shakil', 8470570545, 'anasshakeel321@gmail.com', '1eed8de7062bf56b2379bc920840bc28', '2024-08-29 15:07:49', 1500),
(18, 'Zohaib', 'Uddin', 4994695757, 'zohaibuddin102030@gmail.com', '36f8e4220a4864d9da5a5a6f7c6e18b1', '2024-09-05 06:31:04', 1500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproducts`
--
ALTER TABLE `tblproducts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpurchases`
--
ALTER TABLE `tblpurchases`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproducts`
--
ALTER TABLE `tblproducts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tblpurchases`
--
ALTER TABLE `tblpurchases`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblpurchases`
--
ALTER TABLE `tblpurchases`
  ADD CONSTRAINT `tblpurchases_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `tbluser` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
