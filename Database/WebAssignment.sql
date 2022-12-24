-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 24, 2022 at 02:51 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `WebAssignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `BookingID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `ExcursionID` int(11) DEFAULT NULL,
  `Excursiondate` date DEFAULT NULL,
  `Number_of_People` int(11) DEFAULT NULL,
  `Booking_Cost` int(11) DEFAULT NULL,
  `BookingNote` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE `Customers` (
  `CustomerID` int(11) NOT NULL,
  `Username` varchar(30) DEFAULT NULL,
  `Password` varchar(300) DEFAULT NULL,
  `Fullname` text DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`CustomerID`, `Username`, `Password`, `Fullname`, `Email`, `DOB`) VALUES
(1, 'lawalstyle', '$2y$10$9GD2PjTpsplkL2j1FZmn/.KCK9vTxJA0SKBVxxJZ/0VsNU2g95iJq', NULL, NULL, NULL),
(2, 'lawalstyle12', '$2y$10$KnaDf1T626MrIrgKi074R.kFcXh5k/mO3OnpyZSCR75PvEWMBiCdO', NULL, NULL, NULL),
(3, 'musteeystyle', '$2y$10$J4Bm9NdRBjchPA8IN4ItYelgMEv7Pt3LGo9jeYRNUm3RS1mfqwAWq', NULL, NULL, NULL),
(4, 'lawalystyle1', '$2y$10$dJ3LmFbcKaHd6If9WqhK0.eO/tiszPz2Tr02So0pGo2Ppoiqoiq7a', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Excursion`
--

CREATE TABLE `Excursion` (
  `ExcursionID` int(11) NOT NULL,
  `ExcursionName` varchar(100) DEFAULT NULL,
  `Description` varchar(1000) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Excursion`
--

INSERT INTO `Excursion` (`ExcursionID`, `ExcursionName`, `Description`, `Price`, `Location`) VALUES
(3, 'OutDoor Camping', 'Camping is an outdoor activity that involves staying the night/more than one night in a protective shelter out in nature. Camping is a broad term but in its essence, camping is a way of getting away from the hassle of urban life, to a more natural environment for a limited time.', 100, 'Lagos'),
(4, 'Paintball', 'Paintball is a game that originated in America in the early eighties which involves teams or individual players competing against each to eliminate other players by hitting them with paint-filled pellets fired from a compressed gas powered gun, otherwise known as a marker, and complete game objectives.', 50, 'Abuja'),
(5, 'OutDoor Camping', 'Camping is an outdoor activity that involves staying the night/more than one night in a protective shelter out in nature. Camping is a broad term but in its essence, camping is a way of getting away from the hassle of urban life, to a more natural environment for a limited time.', 100, 'Lagos'),
(6, 'Paintball', 'Paintball is a game that originated in America in the early eighties which involves teams or individual players competing against each to eliminate other players by hitting them with paint-filled pellets fired from a compressed gas powered gun, otherwise known as a marker, and complete game objectives.', 50, 'Abuja'),
(7, 'SkyDiving', 'Skydiving is a term used to describe the sport of freefalling (usually from an aeroplane) through the air prior to opening a parachute. Skydiving is a great adventure sport for giving your body a sensory overload and massive adrenaline rush.', 75, 'Port Hacourt'),
(8, 'Skydiving', 'Skydiving is a term used to describe the sport of freefalling (usually from an aeroplane) through the air prior to opening a parachute. Skydiving is a great adventure sport for giving your body a sensory overload and massive adrenaline rush.', 50, 'Port Hacourt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `ExcursionID` (`ExcursionID`);

--
-- Indexes for table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `Excursion`
--
ALTER TABLE `Excursion`
  ADD PRIMARY KEY (`ExcursionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `BookingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Customers`
--
ALTER TABLE `Customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Excursion`
--
ALTER TABLE `Excursion`
  MODIFY `ExcursionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `Customers` (`CustomerID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`ExcursionID`) REFERENCES `Excursion` (`ExcursionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
