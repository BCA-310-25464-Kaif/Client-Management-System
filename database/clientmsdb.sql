-- phpMyAdmin SQL Dump

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clientmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Kaif', 'admin', 8979555562, 'kaif123@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2026-04-03 07:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `ID` int(10) NOT NULL,
  `AccountID` int(10) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `ContactName` varchar(120) DEFAULT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `State` varchar(120) DEFAULT NULL,
  `ZipCode` int(10) DEFAULT NULL,
  `Workphnumber` bigint(10) DEFAULT NULL,
  `Cellphnumber` bigint(10) DEFAULT NULL,
  `Otherphnumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `WebsiteAddress` varchar(200) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`ID`, `AccountID`, `AccountType`, `ContactName`, `CompanyName`, `Address`, `City`, `State`, `ZipCode`, `Workphnumber`, `Cellphnumber`, `Otherphnumber`, `Email`, `WebsiteAddress`, `Notes`, `Password`, `CreationDate`) VALUES
(1, 292848098, 'Active Account', 'Tanweer Anwar', 'ABC Private Limited', 'ABC Private Limited\r\nTajpur , Bihar', 'Tajpur', 'Bihar', 843111, 9834879088, 4354354354, 4564645646, 'tanweer00@gmail.com', 'www.abc.com', 'Good Client', '55becd1739fc051325b9811c29a3732d', '2026-05-15 12:40:01'),
(2, 834290370, 'Contact/Lead', 'Satyam Kumar', 'KML Pvt Ltd', 'Infosys Pvt Ltd\r\nSamastipur, Bihar ', 'Samastipur ', 'Bihar', 848101, 8907609840, 7787878787, 5454545454, 'satyam00@gmail.com', 'www.infosys.com', 'hfghfhffgjgjghgbjhgbhjgjhgvh', '202cb962ac59075b964b07152d234b70', '2026-05-16 08:59:15'),
(3, 439507327, 'Inactive Account', 'Neyaz Ahmad ', 'JK Enterprises ', 'JK Enterprises\r\nTajpur, Bihar', 'Tajpur', 'Bihar ', 843111, 9870604370, 4654654646, 7879877897, 'ghj@gmail.com', 'www.jk.com', ',,,,,,,,,,,,,,', '202cb962ac59075b964b07152d234b70', '2026-05-16 13:36:51'),
(4, 421236771, 'Inactive Account', 'Md Saif ', 'Infosys PVT LTD', 'Infosys PVT LTD\r\nVaishali, Bihar ', 'Patepur', 'Bihar ', 843114, 9876348097, 8985652332, 5451212451, 'saif00@gmail.com', 'www.infosys.com', '.......', '75da61498336101c4faa1d0156d75239', '2026-05-16 13:38:49'),
(5, 679100084, 'Active Account', 'Abc', 'jfk pvt ltd', 'jfk pvt ltd\r\nTajpur, Bihar ', 'Tajpur ', 'Bihar', 843111, 8765432890, 1645489799, 3465465465, 'Abc00@gmail.com', 'www.jfk.com', 'ghjgjguyjgbhjghjghgcfdfgdgf', '202cb962ac59075b964b07152d234b70', '2026-05-16 14:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `ID` int(10) NOT NULL,
  `Userid` varchar(120) DEFAULT NULL,
  `ServiceId` varchar(120) DEFAULT NULL,
  `BillingId` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`ID`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, '1', '3', '528605656', '2026-05-15 13:37:43'),
(2, '1', '4', '528605656', '2026-05-15 13:37:43'),
(3, '1', '1', '900317914', '2026-05-20 16:07:27'),
(4, '1', '2', '900317914', '2026-05-20 16:07:27'),
(5, '4', '3', '780581840', '2026-05-22 12:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'bghjgjhg', NULL, NULL, '2026-05-11 07:54:52'),
(2, 'contactus', 'Contact Us', 'D-204, Hole Town South West,Delhi-110096,India', 'info@gmail.com', 8529631237, '2026-05-11 07:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Web designing', '120', '2026-05-09 13:38:49'),
(2, 'Network Service', '180', '2026-05-10 09:02:15'),
(3, 'Broadband Service', '120', '2026-05-10 09:05:05'),
(4, 'Web Development ', '356', '2026-05-12 12:40:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
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
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
