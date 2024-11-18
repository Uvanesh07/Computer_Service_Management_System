-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sept 27, 2023 at 08:55 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comsmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(20) DEFAULT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Test1', 'admin', 9876543215, 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', '2023-09-14 07:36:33'),
(2, 'Test2', 'employee1', 9834567892, 'employee1@gmail.com', '09c56d302d0ef02f0977d7048243efc6', '2023-09-14 07:45:28'),
(3, 'Test3', 'employee2', 9909876543, 'employee2@gmail.com', 'c1cec797f0557fd718804763602377e8', '2023-09-14 08:15:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `ID` int(10) NOT NULL,
  `Userid` int(10) DEFAULT NULL,
  `ServiceId` int(10) DEFAULT NULL,
  `BillingId` int(10) DEFAULT NULL,
  `InvoiceDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`ID`, `Userid`, `ServiceId`, `BillingId`, `InvoiceDate`) VALUES
(1, 1, 1, 551647985, '2023-09-17 14:04:52'),
(2, 1, 2, 551647985, '2023-09-17 14:04:52'),
(3, 2, 2, 641986466, '2023-09-18 06:34:48'),
(4, 2, 4, 641986466, '2023-09-18 06:34:48'),
(5, 1, 1, 140262540, '2023-09-18 06:39:24'),
(6, 1, 2, 140262540, '2023-09-18 06:39:24'),
(7, 1, 4, 140262540, '2023-09-18 06:39:24'),
(8, 3, 1, 799528831, '2023-09-21 13:40:49'),
(9, 3, 2, 799528831, '2023-09-21 13:40:49'),
(10, 1, 2, 563558048, '2023-09-21 14:15:37'),
(11, 1, 4, 563558048, '2023-09-21 14:15:37'),
(12, 1, 5, 563558048, '2023-09-21 14:15:37'),
(13, 2, 1, 905269966, '2023-09-21 14:16:41'),
(14, 2, 3, 905269966, '2023-09-21 14:16:41'),
(15, 2, 4, 905269966, '2023-09-21 14:16:41'),
(16, 2, 5, 905269966, '2023-09-21 14:16:41'),
(18, 3, 4, 799905272, '2023-09-27 18:32:50'),
(19, 3, 5, 799905272, '2023-09-27 18:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(30) DEFAULT NULL,
  `PageTitle` varchar(30) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About us', '<font color=\"#747474\" face=\"Roboto, sans-serif, arial\"><span style=\"font-size: 13px;\">This is sample text for about us.</span></font>', NULL, NULL, '2023-09-27 18:31:49'),
(2, 'contactus', 'Contact Us', '                        #890 XYZ Apartment, Saravanampatti, Coimbatore-India.', 'info@gmail.com', 1234567890, '2023-09-27 18:32:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblservice`
--

CREATE TABLE `tblservice` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(30) DEFAULT NULL,
  `ServiceDes` mediumtext DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Price` decimal(10,0) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblservice`
--

INSERT INTO `tblservice` (`ID`, `ServiceName`, `ServiceDes`, `Image`, `Price`, `CreationDate`) VALUES
(1, 'Data Recovery From External Drive', 'We deliver seamless data recovery services, in-lab or at your doorsteps, in 4 simple steps, including free phone consultation, media analysis, data recovery, and final delivery. With Stellar, you get upfront assurance, world-class quality, & a delightful experience with 100% confidentiality of your data.', 'fe5df232cafa4c4e0f1a0294418e56601624727162.jpg', '560', '2023-09-15 12:37:36'),
(2, 'Data Recovery from Desktop Derive', 'Whatever the reason for data loss, the experts at Stellar get back your critical data from all external & internal storage media irrespective of the operating system. Our risk-free, secure, and world-class services have helped innumerable clients in critical data loss situations.', '18e2999891374a475d0687ca9f989d831624727207.jpg', '300', '2023-09-15 12:41:36'),
(3, 'Data Recovery From Laptop Drive', 'sdes', '799bad5a3b514f096e69bbc4a7896cd91624727225.jpg', '125', '2023-09-15 12:42:32'),
(4, 'Computer Repair', 'Exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', '657f262962833de5537abae801adc9ad1624727250.jpg', '200', '2023-09-15 12:44:45'),
(5, 'Network Solution', 'Exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.', '032b2cc936860b03048302d991c3498f1624727277.jpg', '150', '2023-09-15 12:45:46'),
(9, 'Keyboard Reparing', 'sdes', '156005c5baf40ff51a327f1c34f2975b1624727304.jpg', '120', '2023-09-26 17:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(20) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(1, 'Uvanesh', 6546544645, 'yuvii@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-09-17 07:31:49'),
(2, 'Abi', 8787978979, 'abi@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-09-23 07:07:31'),
(3, 'Hari', 1122334455, 'hari@gmail.com', '202cb962ac59075b964b07152d234b70', '2023-09-27 18:28:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Userid` (`Userid`),
  ADD KEY `ServiceId` (`ServiceId`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservice`
--
ALTER TABLE `tblservice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ServiceName` (`ServiceName`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservice`
--
ALTER TABLE `tblservice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
