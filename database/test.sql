

--
-- Database: `test`
--

create database test;
use test;
CREATE TABLE IF NOT EXISTS `admin` (
  `adminname` varchar(30) NOT NULL,
  `password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`adminname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminname`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `book_id` int(3) NOT NULL AUTO_INCREMENT,
  `work` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `date` varchar(30) NOT NULL,
  `days` varchar(9) NOT NULL,
  `hours` varchar(30) NOT NULL,
  `reg_id` int(3) NOT NULL,
  `status` varchar(3) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `work`, `city`, `name`, `mobile`, `address`, `date`, `days`, `hours`, `reg_id`, `status`) VALUES
(1, 'electician', 'Bhopal', 'nenital', '7412589632', 'near railway station', '2019-02-02', '2', '6to8', 1, '2'),
(2, 'electician', 'Bhopal', 'anshu', '7745990607', 'abc', '2019-02-01', '30', '1to2', 2, '2'),
(3, 'electician', 'Bhopal', 'anshu', '7745990607', 'abc', '2019-02-01', '30', '1to2', 1, '2'),
(4, 'electician', 'Bhopal', 'ashok', '8602768255', '303 sweet homes Indrapuri, Indrapuri C Sector', '1990-11-16', '2', '1to2', 1, '2'),
(5, 'water', 'Bhopal', 'nancy', '7566011122', 'indrapuri', '2019-11-17', '2', '2to4', 3, '2'),
(6, 'electician', 'Bhopal', 'dolly', '9229465037', 'indrapuri', '2019-11-17', '4', '2to4', 1, '2'),
(7, '1', 'Bhopal', 'anand', '7987851159', '230 Mohini tower F2 Indrapuri C Sector', '2020-04-09', '2', '1to2', 4, '0'),
(8, '1', 'Bhopal', 'anand', '7987851159', '230 Mohini tower F2 Indrapuri C Sector', '2020-04-09', '2', '1to2', 4, '0'),
(9, '1', 'Bhopal', 'raghu', '7987851199', 'ayodhya bypass, H Sector', '2020-04-15', '1', '2to4', 4, '0'),
(10, '1', 'Bhopal', 'munna', '7987851155', 'Indrapuri C Sector neelgiri boys hostel', '2020-04-03', '2', '2to4', 4, '0'),
(11, '1', 'Bhopal', 'meera', '8987851154', '230 Mohini tower F2 Indrapuri C Sector', '2020-04-03', '2', '1to2', 4, '0'),
(12, '1', 'Bhopal', 'rahul', '9229465037', 'indrapuri', '2020-04-03', '1', '1to2', 4, '0'),
(13, '1', 'Bhopal', 'ankit', '8602768289', '303 sweet homes Indrapuri, Indrapuri C Sector', '2020-04-09', '4', '2to4', 4, '0'),
(14, '1', 'Bhopal', 'ravi', '7987851154', 'ayodhya bypass', '2020-06-27', '2', '2to4', 4, '2');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryname`) VALUES
(1, 'Electrician'),
(2, 'Plumber'),
(3, 'Carpenter'),
(4, 'Maid'),
(5, 'WaterSupplier'),
(6, 'LaundryMan');

-- --------------------------------------------------------

--
-- Table structure for table `country_state_city`
--

CREATE TABLE IF NOT EXISTS `country_state_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `country_state_city`
--

INSERT INTO `country_state_city` (`id`, `country`, `state`, `city`) VALUES
(1, 'India', 'MP', 'Bhopal'),
(2, 'India', 'MP', 'Indore'),
(3, 'India', 'MP', 'Jabalpur'),
(4, 'India', 'UP', 'Kanpur'),
(5, 'India', 'UP', 'Lucknow'),
(6, 'India', 'UP', 'Jhansi'),
(7, 'India', 'Rajasthan', 'Jaypur'),
(8, 'India', 'Rajasthan', 'Udaipur'),
(9, 'India', 'Rajasthan', 'Ajmer'),
(10, 'Canada', 'Ontario', 'Toronto'),
(11, 'Canada', 'Ontario', 'Ottawa'),
(12, 'Canada', 'British Columbia', 'Vancouver'),
(13, 'Canada', 'British Columbia', 'Victoria'),
(14, 'Australia', 'New South Wales', 'Sydney'),
(15, 'Australia', 'New South Wales', 'Newcastle'),
(16, 'Australia', 'Queensland', 'City of Brisbane'),
(17, 'Australia', 'Queensland', 'Gold Coast\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(40) NOT NULL,
  `experience` varchar(9) NOT NULL,
  `id_proof` varchar(30) NOT NULL,
  `id_picture` text NOT NULL,
  `work_type` varchar(40) NOT NULL,
  `subcategory` varchar(30) NOT NULL,
  `picture` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `mobile`, `email`, `password`, `city`, `address`, `experience`, `id_proof`, `id_picture`, `work_type`, `subcategory`, `picture`) VALUES
(1, 'pankaj', '7896589658', 'pankaj@gmail.com', '111111', 'Bhopal', 'ashok vihar bhopal', '2', 'Adhaar', 'aadhaar-pvc-card-500x500.png', 'electician', '', 'manjul-Khattar-2.jpg'),
(4, 'harish', '8602768254', 'harish@gmail.com', 'harish', 'Bhopal', 'indrapuri', '7', 'driving', 'driving234.jpg', '1', '2', 'avatar543.jpg'),
(5, 'Rahul', '8602768217', 'rahul@gmail.com', 'rahul', 'Bhopal', 'ayodhya bypass', '4', 'Aadhar', 'aadharid234.jpg', '3', '6', 'avatarboy923.jpg'),
(6, 'Ashok Kumar', '8602768413', 'ashok45@gmail.com', 'ashok', 'Bhopal', 'indrapuri c sector', '5', 'Pan', 'pancard123.jpg', '2', '4', 'boy avatar9421.png');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `categoryid` int(5) DEFAULT NULL,
  `subcategoryname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategoryname`) VALUES
(2, 1, 'laptop'),
(3, 2, 'Sanitary'),
(4, 2, 'Roof'),
(5, 3, 'Trim Carpenter'),
(6, 3, 'Cabinet Maker');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
