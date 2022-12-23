--
-- Table structure for table `excursions`
--

DROP TABLE IF EXISTS `excursions`;
CREATE TABLE `excursions` (
  `excursionID` mediumint(8) PRIMARY KEY AUTO_INCREMENT,
  `excursion_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price_per_person` DECIMAL(7,2) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `bookingID` mediumint(8) PRIMARY KEY AUTO_INCREMENT,
  `excursionID` mediumint(8) NOT NULL,
  `customerID` mediumint(8) NOT NULL,
  `excursion_date` datetime NOT NULL,
  `num_guests` mediumint(2) NOT NULL,
  `total_booking_cost` DECIMAL(7,2) NOT NULL,
  `booking_notes` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customerID` mediumint(8) PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password_hash` char(255) NOT NULL,
  `customer_forename` varchar(255) NOT NULL,
  `customer_surname` varchar(255) NOT NULL,
  `customer_email` varchar(64) NOT NULL,
  `date_of_birth` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
