-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jun 14, 2014 at 08:19 PM
-- Server version: 5.5.34
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `reportcreator`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerconfiguration`
--

CREATE TABLE `customerconfiguration` (
  `CustomerId` varchar(10) DEFAULT NULL,
  `key` varchar(10) DEFAULT NULL,
  `value` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customerguestinstanceresponse`
--

CREATE TABLE `customerguestinstanceresponse` (
  `customerguestinstanceresponseId` int(2) DEFAULT NULL,
  `customerguestinstanceId` int(1) DEFAULT NULL,
  `customerquestionId` int(1) DEFAULT NULL,
  `response` int(1) DEFAULT NULL,
  `comment` varchar(10) DEFAULT NULL,
  `orderId` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customerguestinstanceresponse`
--

INSERT INTO `customerguestinstanceresponse` (`customerguestinstanceresponseId`, `customerguestinstanceId`, `customerquestionId`, `response`, `comment`, `orderId`) VALUES
(1, 1, 1, 4, '', ''),
(2, 1, 2, 5, '', ''),
(3, 1, 3, 5, '', ''),
(4, 1, 4, 5, '', ''),
(5, 1, 5, 5, '', ''),
(6, 2, 1, 5, '', ''),
(7, 2, 2, 1, '', ''),
(8, 2, 3, 2, '', ''),
(9, 2, 4, 5, '', ''),
(10, 2, 5, 5, '', ''),
(11, 2, 1, 4, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customermessage`
--

CREATE TABLE `customermessage` (
  `CustomerMessageId` varchar(10) DEFAULT NULL,
  `CustomerId` varchar(10) DEFAULT NULL,
  `MessageId` varchar(10) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customerpartner`
--

CREATE TABLE `customerpartner` (
  `customerPartnerId` int(3) DEFAULT NULL,
  `customerId` int(1) DEFAULT NULL,
  `PartnerId` varchar(1) DEFAULT NULL,
  `ServiceItemId` int(3) DEFAULT NULL,
  `CustomerPartnercol` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customerpartner`
--

INSERT INTO `customerpartner` (`customerPartnerId`, `customerId`, `PartnerId`, `ServiceItemId`, `CustomerPartnercol`) VALUES
(1, 1, '2', 1, ''),
(2, 1, '3', 2, ''),
(3, 1, '4', 3, ''),
(4, 1, '', 4, ''),
(5, 1, '', 5, ''),
(6, 1, '', 6, ''),
(7, 1, '', 7, ''),
(8, 1, '', 8, ''),
(9, 1, '', 9, ''),
(10, 1, '', 10, ''),
(11, 1, '', 11, ''),
(12, 1, '', 12, ''),
(13, 1, '', 13, ''),
(14, 1, '', 14, ''),
(15, 1, '', 15, ''),
(16, 1, '', 16, ''),
(17, 1, '', 17, ''),
(18, 1, '', 18, ''),
(19, 1, '', 19, ''),
(20, 1, '', 20, ''),
(21, 1, '', 21, ''),
(22, 1, '', 22, ''),
(23, 1, '', 23, ''),
(24, 1, '', 24, ''),
(25, 1, '', 25, ''),
(26, 1, '', 26, ''),
(27, 1, '', 27, ''),
(28, 1, '', 28, ''),
(29, 1, '', 29, ''),
(30, 1, '', 30, ''),
(31, 2, '', 31, ''),
(32, 2, '', 32, ''),
(33, 2, '', 33, ''),
(34, 2, '', 34, ''),
(35, 2, '', 35, ''),
(36, 2, '', 36, ''),
(37, 2, '', 37, ''),
(38, 2, '', 38, ''),
(39, 2, '', 39, ''),
(40, 2, '', 40, ''),
(41, 2, '', 41, ''),
(42, 2, '', 42, ''),
(43, 2, '', 43, ''),
(44, 2, '', 44, ''),
(45, 2, '', 45, ''),
(46, 2, '', 46, ''),
(47, 2, '', 47, ''),
(48, 2, '', 48, ''),
(49, 2, '', 49, ''),
(50, 2, '', 50, ''),
(51, 2, '', 51, ''),
(52, 2, '', 52, ''),
(53, 2, '', 53, ''),
(54, 2, '', 54, ''),
(55, 2, '', 55, ''),
(56, 2, '', 56, ''),
(57, 2, '', 57, ''),
(58, 2, '', 58, ''),
(59, 2, '', 59, ''),
(60, 2, '', 60, ''),
(61, 2, '', 61, ''),
(62, 2, '', 62, ''),
(63, 2, '', 63, ''),
(64, 2, '', 64, ''),
(65, 2, '', 65, ''),
(66, 3, '', 66, ''),
(67, 3, '', 67, ''),
(68, 3, '', 68, ''),
(69, 3, '', 69, ''),
(70, 3, '', 70, ''),
(71, 3, '', 71, ''),
(72, 3, '', 72, ''),
(73, 3, '', 73, ''),
(74, 3, '', 74, ''),
(75, 3, '', 75, ''),
(76, 3, '', 76, ''),
(77, 3, '', 77, ''),
(78, 3, '', 78, ''),
(79, 3, '', 79, ''),
(80, 3, '', 80, ''),
(81, 3, '', 81, ''),
(82, 3, '', 82, ''),
(83, 3, '', 83, ''),
(84, 3, '', 84, ''),
(85, 3, '', 85, ''),
(86, 3, '', 86, ''),
(87, 3, '', 87, ''),
(88, 3, '', 88, ''),
(89, 3, '', 89, ''),
(90, 3, '', 90, ''),
(91, 3, '', 91, ''),
(92, 3, '', 92, ''),
(93, 3, '', 93, ''),
(94, 3, '', 94, ''),
(95, 3, '', 95, ''),
(96, 3, '', 96, ''),
(97, 3, '', 97, ''),
(98, 3, '', 98, ''),
(99, 3, '', 99, ''),
(100, 3, '', 100, '');

-- --------------------------------------------------------

--
-- Table structure for table `customerquestion`
--

CREATE TABLE `customerquestion` (
  `customerquestionId` int(1) DEFAULT NULL,
  `customerid` int(1) DEFAULT NULL,
  `questionid` int(1) DEFAULT NULL,
  `Descripton` varchar(9) DEFAULT NULL,
  `refserviceId` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customerquestion`
--

INSERT INTO `customerquestion` (`customerquestionId`, `customerid`, `questionid`, `Descripton`, `refserviceId`) VALUES
(1, 1, 1, 'Check-In', ''),
(2, 1, 2, 'Housekeep', ''),
(3, 1, 3, 'Room', ''),
(4, 1, 4, 'Bathroom', ''),
(5, 1, 5, 'Amenities', '');

-- --------------------------------------------------------

--
-- Table structure for table `customertablet`
--

CREATE TABLE `customertablet` (
  `customerTabletid` int(1) DEFAULT NULL,
  `customerId` int(1) DEFAULT NULL,
  `LocationNumber` int(3) DEFAULT NULL,
  `TabletStatus` int(1) DEFAULT NULL,
  `LocationDescription` varchar(8) DEFAULT NULL,
  `TabletMacId` varchar(10) DEFAULT NULL,
  `TabletActivationDate` varchar(10) DEFAULT NULL,
  `LastPingStatus` varchar(10) DEFAULT NULL,
  `tabletId` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customertablet`
--

INSERT INTO `customertablet` (`customerTabletid`, `customerId`, `LocationNumber`, `TabletStatus`, `LocationDescription`, `TabletMacId`, `TabletActivationDate`, `LastPingStatus`, `tabletId`) VALUES
(1, 1, 101, 1, 'Room 101', '', '', '', 1),
(2, 1, 102, 1, 'Room 102', '', '', '', 2),
(3, 1, 103, 1, 'Room 103', '', '', '', 3),
(NULL, 1, 11, 1, 'room 12', '345678087', NULL, NULL, NULL),
(NULL, 1, 11, 1, 'room 12', '345678087', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customeruserrole`
--

CREATE TABLE `customeruserrole` (
  `companyUserRoleId` varchar(10) DEFAULT NULL,
  `customerid` varchar(10) DEFAULT NULL,
  `userId` varchar(10) DEFAULT NULL,
  `roleId` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guestmaster`
--

CREATE TABLE `guestmaster` (
  `GuestMasterId` int(1) DEFAULT NULL,
  `Name` varchar(5) DEFAULT NULL,
  `MobilePhone` varchar(10) DEFAULT NULL,
  `email` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `DevicemacId` varchar(10) DEFAULT NULL,
  `DeviceRSSI` varchar(10) DEFAULT NULL,
  `DeviceVendor` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guestmaster`
--

INSERT INTO `guestmaster` (`GuestMasterId`, `Name`, `MobilePhone`, `email`, `password`, `DevicemacId`, `DeviceRSSI`, `DeviceVendor`) VALUES
(1, 'Adam', '', '', '', '', '', ''),
(2, 'Frank', '', '', '', '', '', ''),
(3, 'Megan', '', '', '', '', '', ''),
(4, 'David', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `COL 1` varchar(9) DEFAULT NULL,
  `COL 2` varchar(11) DEFAULT NULL,
  `COL 3` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`COL 1`, `COL 2`, `COL 3`) VALUES
('messageId', 'Description', 'departmentId');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `COL 1` varchar(7) DEFAULT NULL,
  `COL 2` varchar(23) DEFAULT NULL,
  `COL 3` varchar(13) DEFAULT NULL,
  `COL 4` varchar(8) DEFAULT NULL,
  `COL 5` varchar(10) DEFAULT NULL,
  `COL 6` varchar(8) DEFAULT NULL,
  `COL 7` varchar(11) DEFAULT NULL,
  `COL 8` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`) VALUES
('OrderID', 'CustomerGuestInstanceId', 'ServiceItemID', 'OrderQty', 'OrderValue', 'OrderETA', 'OrderStatus', 'parentOrderId');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `COL 1` varchar(10) DEFAULT NULL,
  `COL 2` varchar(46) DEFAULT NULL,
  `COL 3` varchar(6) DEFAULT NULL,
  `COL 4` varchar(12) DEFAULT NULL,
  `COL 5` varchar(12) DEFAULT NULL,
  `COL 6` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`) VALUES
('questionId', 'Description', 'Active', 'DepartmentId', 'timeOffsetId', 'basetime'),
('1', 'How was your check-in experience?', '1', '', '', ''),
('2', 'How is your room cleanliness?', '1', '', '', ''),
('3', 'How is your room condition?', '1', '', '', ''),
('4', 'Is your bathroom clean and stocked?', '1', '', '', ''),
('5', 'Are you satisfied with the amenities provided?', '1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `refbrand`
--

CREATE TABLE `refbrand` (
  `refBrandId` int(1) DEFAULT NULL,
  `Name` varchar(13) DEFAULT NULL,
  `Descripton` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `refbrand`
--

INSERT INTO `refbrand` (`refBrandId`, `Name`, `Descripton`) VALUES
(1, 'Independent', ''),
(2, 'Marriott', ''),
(3, 'Hilton', ''),
(4, 'Sheraton', ''),
(5, 'Best Western', ''),
(6, 'Choice Hotels', '');

-- --------------------------------------------------------

--
-- Table structure for table `refcustomertype`
--

CREATE TABLE `refcustomertype` (
  `COL 1` varchar(17) DEFAULT NULL,
  `COL 2` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `refcustomertype`
--

INSERT INTO `refcustomertype` (`COL 1`, `COL 2`) VALUES
('refCustomerTypeId', 'Description'),
('1', 'Hotel'),
('2', 'Restaurant'),
('3', 'Spa'),
('4', 'Health club');

-- --------------------------------------------------------

--
-- Table structure for table `refdepartment`
--

CREATE TABLE `refdepartment` (
  `COL 1` varchar(15) DEFAULT NULL,
  `COL 2` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `refdepartment`
--

INSERT INTO `refdepartment` (`COL 1`, `COL 2`) VALUES
('refDepartmentid', 'Description'),
('1', 'Management'),
('2', 'Front Desk'),
('3', 'Housekeeping'),
('4', 'Maintenance'),
('5', 'Restaurant'),
('6', 'Valet');

-- --------------------------------------------------------

--
-- Table structure for table `refrole`
--

CREATE TABLE `refrole` (
  `COL 1` varchar(9) DEFAULT NULL,
  `COL 2` varchar(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `refrole`
--

INSERT INTO `refrole` (`COL 1`, `COL 2`) VALUES
('refRoleid', 'Description'),
('1', 'Manager'),
('2', 'Assistant Manager'),
('3', 'Front Desk Manager'),
('4', 'Housekeeping Manager'),
('5', 'Maintenance Manager'),
('6', 'Restaurant Manager'),
('7', 'Valet Manager'),
('8', 'Accountant'),
('9', 'Director of Sales'),
('10', 'Front Desk Assosciate'),
('11', 'Housekeeper'),
('12', 'Engineer'),
('13', 'Kitchen'),
('14', 'Valet Assosciate');

-- --------------------------------------------------------

--
-- Table structure for table `refservice`
--

CREATE TABLE `refservice` (
  `refserviceId` int(1) DEFAULT NULL,
  `Description` varchar(12) DEFAULT NULL,
  `departmentId` varchar(1) DEFAULT NULL,
  `HasDetails` int(1) DEFAULT NULL,
  `HasFeedback` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `refservice`
--

INSERT INTO `refservice` (`refserviceId`, `Description`, `departmentId`, `HasDetails`, `HasFeedback`) VALUES
(1, 'CheckIn', '2', 0, 1),
(2, 'Wakeup', '2', 0, 1),
(3, 'Booking Stay', '2', 0, 1),
(4, 'Valet', '6', 0, 1),
(5, 'Amenities', '3', 1, 1),
(6, 'Food', '5', 1, 1),
(7, 'Valet', '6', 0, 1),
(8, 'WakeUp', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `refservicecategory`
--

CREATE TABLE `refservicecategory` (
  `COL 1` varchar(20) DEFAULT NULL,
  `COL 2` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `refservicecategory`
--

INSERT INTO `refservicecategory` (`COL 1`, `COL 2`) VALUES
('refserviceCategoryId', 'Value'),
('1', 'Appetizers'),
('2', 'Salads'),
('3', 'Tio''s Grill'),
('4', 'Tacos'),
('5', 'Los Favoritos'),
('6', 'Sandwiches'),
('7', 'Burgers'),
('8', 'Party Platters'),
('9', 'Breakfast'),
('10', 'Chips, Dips & Nacho Hits'),
('11', 'Rings & Fries'),
('12', 'Starters'),
('13', 'From the Land'),
('14', 'From the Land of the Sea'),
('15', 'Slow Cookers'),
('16', 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `reftimeoffset`
--

CREATE TABLE `reftimeoffset` (
  `reftimeOffsetId` int(1) DEFAULT NULL,
  `Description` varchar(7) DEFAULT NULL,
  `Value` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reftimeoffset`
--

INSERT INTO `reftimeoffset` (`reftimeOffsetId`, `Description`, `Value`) VALUES
(1, 'minutes', 30),
(2, 'minutes', 60),
(3, 'minutes', 120),
(4, 'minutes', -30),
(5, 'minutes', -60),
(6, 'minutes', -90);

-- --------------------------------------------------------

--
-- Table structure for table `serviceitem`
--

CREATE TABLE `serviceitem` (
  `COL 1` varchar(13) DEFAULT NULL,
  `COL 2` varchar(12) DEFAULT NULL,
  `COL 3` varchar(20) DEFAULT NULL,
  `COL 4` varchar(39) DEFAULT NULL,
  `COL 5` varchar(208) DEFAULT NULL,
  `COL 6` varchar(12) DEFAULT NULL,
  `COL 7` varchar(19) DEFAULT NULL,
  `COL 8` varchar(9) DEFAULT NULL,
  `COL 9` varchar(16) DEFAULT NULL,
  `COL 10` varchar(14) DEFAULT NULL,
  `COL 11` varchar(24) DEFAULT NULL,
  `COL 12` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `serviceitem`
--

INSERT INTO `serviceitem` (`COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`) VALUES
('ServiceItemID', 'refServiceId', 'refServiceCategoryId', 'ServiceName', 'ServiceDesc', 'ServiceValue', 'ServiceAvailability', 'IsSpecial', 'ServiceStartTime', 'ServiceEndTime', 'ServiceCategory', 'ServiceType'),
('1', '6', '1', 'Chicken Baby Chimis', 'Lightly Fried mini chimichangas filled with seasoned chicken and cheese. Served with guacamole, sour cream and crema', '8.79', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('2', '6', '1', 'Jalapeno Baby chimis', 'Jalapeno and cream cheese bites served with cool cucumber ranch of dipping', '8.79', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('3', '6', '1', 'Hector''s Quesadilla', 'Melted cheese with mild red and green chilies. Served with guacamole and sour cream', '7.79', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('4', '6', '1', 'Jack Crisp', 'Crispy flour tortilla, salsa fresca and Monterey Jack chseese with choice of avocado or chipotle BBQ chicken. Seved with chipotle source cream', '7.49', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('5', '6', '1', 'Queso Fundilo', 'A skillet of melted cheese, tomatillo sauce, salsa fresca and chipotle BBQ seasoning', '8.79', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('6', '6', '1', 'Nachos el Deluxo', 'Refritos, hand-cut chips, cheese, mild red and green chilies, with guacamole and sour cream', '9.99', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('7', '6', '2', 'Chicken Sunburst Chop Salad', 'Marinated chicken, grilled vegetables and avacado over chopped lettuce', '12.49', '1', '0', '0', '0', 'Salads', 'Restaurant'),
('8', '6', '2', 'Mexican Salad', 'Crisp lettuce, salsa fresca, roasted corn salsa, black beans, avocado, cotija cheese and crema', '12.49', '1', '0', '0', '0', 'Salads', 'Restaurant'),
('9', '6', '2', 'Ahi Tuna Salad', 'Seared rare Ahi tuna over spinach, cucumbers, tomatoes, red peppers, pickled onions and orange slaw. Drizzled with chimichurri', '13.99', '1', '0', '0', '0', 'Salads', 'Restaurant'),
('10', '6', '2', 'Avocado Shrimp Chop Salad', 'Sauteed Chrimp, avocado, grilled red peppers, salsa fresca and cucumbers atop crisp chopped lettuce', '12.49', '1', '0', '0', '0', 'Salads', 'Restaurant'),
('11', '6', '3', 'Carne Asada', 'Grilled steak, salsa fresca and hacienda sauce. With our Raja''s blend of peppers and onions tossed in crema', '15.99', '1', '0', '0', '0', 'Tio''s Grill', 'Restaurant'),
('12', '6', '3', 'Grilled Chicken', 'Juicy, grilled chicken with your choice of sauce: Tequilla Cilantro, Chimichurri or Adobo', '14.29', '1', '0', '0', '0', 'Tio''s Grill', 'Restaurant'),
('13', '6', '3', 'Habanerro Lime Salmon', 'Seared salmon with habanero lime glaze, Fire Roasted Mexican Corn and Mexican rice', '16.99', '1', '0', '0', '0', 'Tio''s Grill', 'Restaurant'),
('14', '6', '3', 'El Diablo Shrimp', 'Spicy shrimp over sauteed spinach, with cotija cheese and white corn tortillas', '14.29', '1', '0', '0', '0', 'Tio''s Grill', 'Restaurant'),
('15', '6', '3', 'NY Strip', 'Our tender 12oz sirloin strip to your liking. For a tasty alternative, ask for it Guadalajara or Chimichurri style', '19.99', '1', '0', '0', '0', 'Tio''s Grill', 'Restaurant'),
('16', '6', '3', 'Gringo Burger', 'A half-pound ground beef burger with lettuce and tomato', '8.99', '1', '0', '0', '0', 'Tio''s Grill', 'Restaurant'),
('17', '6', '3', 'Grilled Chicken Sandwich', 'An 8oz chicken breast with lettuce and tomato', '8.99', '1', '0', '0', '0', 'Tio''s Grill', 'Restaurant'),
('18', '6', '3', 'Juan''s Way', 'Get your Burger or Chicken Sandwich with lettuce, tomato, Amerian cheese, chipotle mayo and guacamole', '9.99', '1', '0', '0', '0', 'Tio''s Grill', 'Restaurant'),
('19', '6', '4', 'Fried Carnitas Tacos', 'Two flour tortillas lightly fried, pork carnitas, bacon, queso, lettuce and salsa fresca. Served with out avocado-tomatillo sauce', '9.99', '1', '0', '0', '0', 'Tacos', 'Restaurant'),
('20', '6', '4', 'Carne Asada Street Tacos', 'Carne asada, onion and cilantro on doubled white corn tortillas. Served with picante and hacienda sauces', '9.99', '1', '0', '0', '0', 'Tacos', 'Restaurant'),
('21', '6', '4', 'Pollo Asado Street Tacos', 'Asado chicken and salsa fresca on doubled white corn tortillas. Served with picante and hacienda sauces', '9.99', '1', '0', '0', '0', 'Tacos', 'Restaurant'),
('22', '6', '4', 'Original Fish Tacos', 'Tortillas encrusted fish, roasted corn salsa, shredded red cabbage and chipotle aioli on white corn tortillas', '10.99', '1', '0', '0', '0', 'Tacos', 'Restaurant'),
('23', '6', '4', 'Fish Tacos Del Mar', 'Baja style tacos with beer-battered fish, onion, cilantro, orange slaw, three-pepper sauce and avocado on white corn tortillas', '10.99', '1', '0', '0', '0', 'Tacos', 'Restaurant'),
('24', '6', '4', 'Carnitas Street Tacos', 'Pork carnitas and salsa fresca on doubled white corn tortillas. Served with picante and hacienda sauces', '9.99', '1', '0', '0', '0', 'Tacos', 'Restaurant'),
('25', '6', '4', 'Salmon Street Tacos', 'Seared salmon, red cabbage, tomatoes, crema and chimichurri glaze on white corn tortillas', '12.29', '1', '0', '0', '0', 'Tacos', 'Restaurant'),
('26', '6', '5', 'Chicken Chimicanga', 'Seasoned chicken and cheese rolled in a flour tortillas, lightly fried, then baked in our mild red chile sauce. With gaucamole, crema, Mexican rice and beans', '13.99', '1', '1', '0', '0', 'Los Favoritos', 'Restaurant'),
('27', '6', '5', 'Grilled Steak Chimichanga', 'Grilled carne asada rolled in a flour tortilla, lightky fried, then baked in our queso. With Mexican rice', '13.99', '1', '1', '0', '0', 'Los Favoritos', 'Restaurant'),
('28', '6', '5', 'Tio''s Super Burrito', 'Carne asada and refritos in a flour tortilla baked in mild red chile sauce and cheese. Topped with lettuce, salsa fresca, guacamole and crema', '13.79', '1', '1', '0', '0', 'Los Favoritos', 'Restaurant'),
('29', '6', '5', 'Burrito Supreme', 'Seasoned ground beef, chicken or pork carnitas and refritos baked in mild red chile sauce and cheese. Topped with crema', '12.79', '1', '1', '0', '0', 'Los Favoritos', 'Restaurant'),
('30', '6', '5', 'Enchiladas Muchahas', 'Two cheese enchiladas with ground beef and chicken, baked in mild ranchera sauce and topped with onion, cilantro and crema. With Mexican rice and beans', '13.79', '1', '1', '0', '0', 'Los Favoritos', 'Restaurant'),
('31', '6', '1', 'California Grilled Chicken Flatbread', 'Topped with grilled chicken, applewood smoked bacon, tomato sauce, Monterey Jack, mozzarella, chopped cilantro, house-made pico de gallo, fresh sliced avocado & a drizzle of roasted garlic aioli', '29', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('32', '6', '1', 'Chipotle Chicken Flatbread', 'Topped with grilled chile-rubbed chicken, tomato sauce, cheddar, Monterey Jack, mozzarella, chopped cilantro, house-made pico de gallo & a drizzle of chipotle pesto', '29', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('33', '6', '1', 'Margherita Flatbread', 'Classic with a definite southwest accent. Topped with Monterey Jack, mozzarella, roasted garlic aioli & fresh tomatoes with a drizzle of cilantro-ranch pesto', '29', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('34', '6', '1', 'Southwestern Eggrolls', 'A Crispy flour tortillas stuffed with juicy smoked chicken, black beans, corn, jalapeño Jack cheese, chopped red peppers & spinach. Served with avocado-ranch sauce', '29', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('35', '6', '1', 'Sweet Potato Fries', 'Crispy sweet potato fries served with house-made ancho-chile ranch sauce', '29', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('36', '6', '1', 'Loaded Potato Skins', 'Russet potatoes topped with a 3-cheese blend, applewood smoked bacon & hand-chopped green onions. Served with sour cream', '29', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('37', '6', '1', 'Jumbo Soft Pretzels', '4 fresh-baked soft pretzel sticks sprinkled with salt & served with house-made cheese sauce', '29', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('38', '6', '1', 'Classic Nachos', 'Topped with 3-cheese blend, black beans, jalapeños & our Skillet Queso with a hint of seasoned beef. Served with house-made pico de gallo & sour cream', '29', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('39', '6', '1', 'Hot Spinach & Artichoke Dip', 'Blend of Romano, cream cheese, mozzarella, Parmesan, chopped spinach & artichokes, freshly baked & topped with house-made pico de gallo. Served with warm tostada chips', '29', '1', '0', '0', '0', 'Appetizers', 'Restaurant'),
('40', '6', '2', 'Caribbean Salad', 'Fresh, hand-cut pineapple, mandarin oranges, dried cranberries, diced red bell peppers, chopped green onions, cilantro & sesame seeds with a honey-lime dressing', '29', '1', '0', '0', '0', 'Salads', 'Restaurant'),
('41', '6', '2', 'Santa Fe Chicken Salad', 'Grilled chile-rubbed chicken with spicy Santa Fe sauce, house-made pico de gallo, fresh diced avocado, chopped cilantro, crispy tortilla strips with house-made ranch dressing', '29', '1', '0', '0', '0', 'Salads', 'Restaurant'),
('42', '6', '2', 'Quesadilla Explosion Salad', 'Grilled chicken breast with shredded cheese, diced tomatoes, house-made corn & black bean salsa, crispy tortilla strips & citrus-balsamic dressing. Served with freshly toasted 3-cheese quesadillas', '29', '1', '0', '0', '0', 'Salads', 'Restaurant'),
('43', '6', '2', 'Boneless Buffalo Chicken Salad', 'Crispy chicken tossed in our spicy Buffalo sauce with applewood smoked bacon, bleu cheese crumbles, house-made pico de gallo & crispy tortilla strips, with house-made ranch dressing', '29', '1', '0', '0', '0', 'Salads', 'Restaurant'),
('44', '6', '2', 'Chicken Caesar Salad', 'Grilled chicken breast, Parmesan & garlic croutons with a creamy Caesar dressing', '29', '1', '0', '0', '0', 'Salads', 'Restaurant'),
('45', '6', '2', 'House Salad', 'With croutons, tomatoes, red onions, cucumbers & cheese. Served with your choice of dressing', '29', '1', '0', '0', '0', 'Salads', 'Restaurant'),
('46', '6', '6', 'Bacon Avocado Chicken Sandwich', 'Grilled chicken breast topped with applewood smoked bacon, provolone, sliced avocado, sauteed onions, spring mix, tomato &cilantro pesto mayo on a toasted pretzel roll', '29', '1', '0', '0', '0', 'Sandwiches', 'Restaurant'),
('47', '6', '6', 'Southwestern BLT Toasted Sandwich', 'Applewood smoked bacon, lettuce, fresh sliced tomato & seasoned mayo on a toasted pretzel roll', '29', '1', '0', '0', '0', 'Sandwiches', 'Restaurant'),
('48', '6', '6', 'Buffalo Chicken Ranch Sandwich', 'Crispy chicken with our spicy Buffalo sauce, fresh sliced tomato, lettuce & house-made ranch', '29', '1', '0', '0', '0', 'Sandwiches', 'Restaurant'),
('49', '6', '6', 'Grilled Chicken Sandwich', 'Chicken breast with applewood smoked bacon, fresh sliced tomato, lettuce, Swiss cheese & honey-mustard', '29', '1', '0', '0', '0', 'Sandwiches', 'Restaurant'),
('50', '6', '6', 'Classic Turkey Toasted Sandwich', 'Thinly sliced turkey with lettuce, fresh sliced tomato, provolone cheese & mayo on wheat Texas toast', '29', '1', '0', '0', '0', 'Sandwiches', 'Restaurant'),
('51', '6', '6', 'California Turkey Club Toasted Sandwich', 'Thinly sliced turkey, applewood smoked bacon, fresh sliced avocado, tomato & red onion with Swiss cheese, lettuce & cilantro mayo on wheat Texas toast', '29', '1', '0', '0', '0', 'Sandwiches', 'Restaurant'),
('52', '6', '4', 'Spicy Grilled Shrimp Tacos', 'Grilled spicy chile-lime shrimp wrapped in 3 flour tortillas & topped with fresh cilantro slaw, house-made pico de gallo & sliced avocado. Served with rice & black beans', '29', '1', '0', '0', '0', 'Tacos', 'Restaurant'),
('53', '6', '4', 'Crispy Chicken Tacos', '3 flour tortillas stuffed with crispy chicken, applewood smoked bacon, diced tomatoes & 3-cheese blend, drizzled with signature honey-chipotle sauce & house-made ranch. Served with rice & black beans', '29', '1', '0', '0', '0', 'Tacos', 'Restaurant'),
('54', '6', '7', 'Big Mouth Bites', '4 mini burgers with applewood smoked bacon, American cheese, sauteed onions & house-made ranch. Served with freshly made crispy onion strings', '29', '1', '0', '0', '0', 'Burgers', 'Restaurant'),
('55', '6', '7', 'Oldtimer with Cheese', 'Our signature burger, made with a hand-seasoned beef patty seared to perfection. Served with mustard & sliced red onion', '29', '1', '0', '0', '0', 'Burgers', 'Restaurant'),
('56', '6', '7', 'Classic Bacon Burger', 'A crowd-pleasing favorite, topped with applewood smoked bacon, melted cheddar cheese, sliced red onion & mayo', '29', '1', '0', '0', '0', 'Burgers', 'Restaurant'),
('57', '6', '7', 'Guacamole Burger', 'Topped with fresh guacamole, melted Monterey Jack cheese, fire-roasted jalapeños, sauteed red & green bell peppers, caramelized onions & cumin-lime sour cream', '29', '1', '0', '0', '0', 'Burgers', 'Restaurant'),
('58', '6', '7', 'Mushroom-Swiss Burger', 'Smothered with garlic sauteed mushrooms, melted Swiss cheese, sliced red onion & mayo', '29', '1', '0', '0', '0', 'Burgers', 'Restaurant'),
('59', '6', '7', 'Southern Smokehouse Bacon Burger', 'With 4 slices of applewood smoked bacon, melted cheddar cheese, Chili''s BBQ sauce, mayo & freshly made crispy onion strings', '29', '1', '0', '0', '0', 'Burgers', 'Restaurant'),
('60', '6', '8', 'Big Mouth Bites', 'Mini beef burgers with applewood smoked bacon, American cheese, sauteed onions & house-made ranch', '29', '1', '0', '0', '0', 'Party Platters', 'Restaurant'),
('61', '6', '8', 'Boneless Buffalo Wings', 'Hand-tossed in our spicy Buffalo sauce. Served with cool bleu cheese dressing & fresh celery', '29', '1', '0', '0', '0', 'Party Platters', 'Restaurant'),
('62', '6', '8', 'Wings Over Buffalo', 'Hand-tossed in our spicy Buffalo sauce. Served with cool bleu cheese dressing & fresh celery', '29', '1', '0', '0', '0', 'Party Platters', 'Restaurant'),
('63', '6', '8', 'Baby Back Ribs', 'Our tender, juicy racks of ribs are slow-smoked in-house over pecan wood so they''re fall-off-the-bone tender with a bold and savory flavor that''s impossible to resist. Choose from: Original or Memphis Dry Rub', '29', '1', '0', '0', '0', 'Party Platters', 'Restaurant'),
('64', '6', '8', 'Quesadilla Explosion Salad', 'Grilled chicken breast with shredded cheese, diced tomatoes, house-made corn & black bean salsa, crispy tortilla strips & citrus-balsamic dressing. Served with freshly toasted 3-cheese quesadillas', '29', '1', '0', '0', '0', 'Party Platters', 'Restaurant'),
('65', '6', '8', 'Dessert Trio', 'Enjoy our fudge brownie, classic cheesecake & chocolate chip cookie all on one party platter. Served with fresh strawberry puree & chocolate sauce on the side', '29', '1', '0', '0', '0', 'Party Platters', 'Restaurant'),
('66', '6', '9', 'The Four Points Breakfast', 'There are a few things that really matter most. A good start to the day with a great breakfast is one of them', '10.95', '1', '1', '6', '11', 'Breakfast', 'Restaurant'),
('67', '6', '9', 'Scrambled Egg and Bacon Quesadilla', 'Jack cheese, salsa and sour cream', '7.95', '1', '0', '6', '11', 'Breakfast', 'Restaurant'),
('68', '6', '9', 'All American Breakfast Sandwich', 'Served on a kaiser roll with cheddar cheese, choice of bacon or sausage', '6.95', '1', '0', '6', '11', 'Breakfast', 'Restaurant'),
('69', '6', '9', 'French Toast', 'Warm maple syrup and powdered sugar, served with breakfast potatoes, and choice of bacon or sausage', '8.95', '1', '0', '6', '11', 'Breakfast', 'Restaurant'),
('70', '6', '9', 'Egg White, Spinach and Mushroom Omelet', 'Folded with cheddar cheese and served with sliced seasonal fruit and choice of toast', '8.95', '1', '0', '6', '11', 'Breakfast', 'Restaurant'),
('71', '6', '9', 'Golden Buttermilk Pancakes', 'Warm maple syrup and whipped butter', '6.95', '1', '0', '6', '11', 'Breakfast', 'Restaurant'),
('72', '6', '9', 'Bacon & Eggs', 'Two eggs any style served with breakfast potatoes and choice of toast. Substitute ham or sausage', '9.95', '1', '0', '6', '11', 'Breakfast', 'Restaurant'),
('73', '6', '9', 'Old-Fashioned Oatmeal', 'Served with raisins and brown sugar', '3.95', '1', '0', '6', '11', 'Breakfast', 'Restaurant'),
('74', '6', '10', 'Spinach and Artichoke Dip', 'Our house recipe of baby spinach, artichokes, and cheeses in a creamy dip. Served with baked pita chips or celery and carrot sticks', '6.95', '1', '0', '0', '0', 'Chips, Dips & Nacho Hits', 'Restaurant'),
('75', '6', '10', 'Hummus and pita', 'Served with baked pita chips or vegetables for dipping', '5.95', '1', '0', '0', '0', 'Chips, Dips & Nacho Hits', 'Restaurant'),
('76', '6', '10', 'Silver Grill Nachos', 'Tri colored chips, grilled onions, hot peppers, layered with a three cheese blend and fresh scallions', '9.95', '1', '0', '0', '0', 'Chips, Dips & Nacho Hits', 'Restaurant'),
('77', '6', '11', 'Sweet Potato Fries', 'Served with our tangy house dill dipping sauce', '4.95', '1', '0', '0', '0', 'Rings & Fries', 'Restaurant'),
('78', '6', '11', 'Basket O’ Fries', 'Fried golden brown and tossed with our house spice mix', '3.95', '1', '0', '0', '0', 'Rings & Fries', 'Restaurant'),
('79', '6', '11', 'Volcano Rings', 'Battered, thick cut onion rings, deep fried, seasoned and served with our spicy aioli', '5.95', '1', '0', '0', '0', 'Rings & Fries', 'Restaurant'),
('80', '6', '11', 'Triple Cheese and Bacon Fries', 'Jack, Cheddar, and American cheese with bacon baked over golden fries. Served with creamy ranch', '5.95', '1', '0', '0', '0', 'Rings & Fries', 'Restaurant'),
('81', '6', '12', 'Sliders', 'Three mini burgers on toasted brioche rolls, with your choice of cheese', '8.95', '1', '0', '0', '0', 'Starters', 'Restaurant'),
('82', '6', '12', 'Fried Mozzerella', 'Whole milk mozzarella, fried golden brown and served with house made marinara sauceCalamari', '7.95', '1', '0', '0', '0', 'Starters', 'Restaurant'),
('83', '6', '12', 'Calamari', 'Tender squid, battered and fried, served with hot peppers and marinara sauce', '8.99', '1', '0', '0', '0', 'Starters', 'Restaurant'),
('84', '6', '12', 'Popcorn Shrimp', 'Golden fried baby shrimp atop french fries tossed in our Cajun mix, served with bleu cheese', '8.95', '1', '0', '0', '0', 'Starters', 'Restaurant'),
('85', '6', '12', 'Hot Wings', 'Miniature pork shanks, slow cooked, tossed in our own barbecue sauce', '8.95', '1', '0', '0', '0', 'Starters', 'Restaurant'),
('86', '6', '12', 'Silver City Combo Plate', 'Crispy onion rings, golden fingers, buffalo wings, and fried mozzarella', '12.95', '1', '0', '0', '0', 'Starters', 'Restaurant'),
('87', '6', '12', 'Golden Fingers', 'Crispy chicken tenders served with honey mustard, boneless tenders can also be tossed in one of our wing sauces', '7.99', '1', '0', '0', '0', 'Starters', 'Restaurant'),
('88', '6', '12', 'Chick Wings', 'Your choice of sauce: Hot, Mild, BBQ, Spicy Peanut, General Tso, Sweet Chili, Dry Cajun, or Ghost Chili', '9.95', '1', '0', '0', '0', 'Starters', 'Restaurant'),
('89', '6', '12', 'Chicken Quesadilla', 'Marinated pulled chicken, bell peppers, red onion, tomatoes, jack cheese, on a grilled flour tortilla. Served with sour cream and salsa', '9.95', '1', '0', '0', '0', 'Starters', 'Restaurant'),
('90', '6', '13', 'Steak Tips', 'Juicy marinated sirloin tips, served with herbed rice and asparagus', '16.95', '1', '0', '0', '0', 'From the Land', 'Restaurant'),
('91', '6', '13', 'Coulette steak', 'Herb marinated, flame grilled, served with crispy onion strings, mashed potatoes and asparagus', '15.95', '1', '0', '0', '0', 'From the Land', 'Restaurant'),
('92', '6', '13', 'NY strip steak', 'Center cut sirloin steak, grilled to your liking. Topped with a roasted garlic butter and served with mashed potatoes and garlic spinach', '23.95', '1', '0', '0', '0', 'From the Land', 'Restaurant'),
('93', '6', '13', 'Blackened Chicken', 'Marinated chicken covered in a spicy Cajun style rub, seared and grilled. Served with fresh salsa, seasoned rice and broccoli', '14.95', '1', '0', '0', '0', 'From the Land', 'Restaurant'),
('94', '6', '13', 'Marinated Grilled Chicken', 'Grilled to perfection served with mashed potatoes and broccoli with a pesto cream sauce', '14.95', '1', '0', '0', '0', 'From the Land', 'Restaurant'),
('95', '6', '14', 'Fish & Chips', 'Atlantic Cod, beer battered, fried to a golden brown, served with seasoned fries, tartar sauce and coleslaw', '12.95', '1', '0', '0', '0', 'From the Land of the Sea', 'Restaurant'),
('96', '6', '14', 'Baked sole with capers and lemon', 'Served with rice pilaf and asparagus with a lemon caper butter sauce', '16.95', '1', '0', '0', '0', 'From the Land of the Sea', 'Restaurant'),
('97', '6', '14', 'Potato crusted Salmon', 'Served with garlic spinach, rice pilaf and a light Dijon cream sauce', '18.95', '1', '0', '0', '0', 'From the Land of the Sea', 'Restaurant'),
('98', '6', '15', 'Silver City Chili', 'Meaty chili topped with baked cheddar and jack cheese', '7.95', '1', '0', '0', '0', 'Slow Cookers', 'Restaurant'),
('99', '6', '15', 'Soup on a Whim', 'The Chef’s creation of the day', '4.95', '1', '0', '0', '0', 'Slow Cookers', 'Restaurant'),
('100', '6', '15', 'New England Clam Chowder', 'A New England favorite, thick, chunky chowder, served with crackers', '5.95', '1', '0', '0', '0', 'Slow Cookers', 'Restaurant'),
('101', '5', '', 'Room Service', '', '', '1', '0', '0', '0', '', 'Amenities'),
('102', '5', '', 'Laundry Service', '', '', '1', '0', '0', '0', '', 'Amenities'),
('103', '5', '', 'Toiletries', '', '', '1', '0', '0', '0', '', 'Amenities'),
('104', '', '', 'Check In', 'Check In', '', '1', '0', '0', '0', 'Service', 'Front Desk');

-- --------------------------------------------------------

--
-- Table structure for table `systemconfiguration`
--

CREATE TABLE `systemconfiguration` (
  `key` varchar(10) DEFAULT NULL,
  `Value` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablet`
--

CREATE TABLE `tablet` (
  `tabletId` int(1) DEFAULT NULL,
  `MacAddress` int(4) DEFAULT NULL,
  `Vendor` varchar(9) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tablet`
--

INSERT INTO `tablet` (`tabletId`, `MacAddress`, `Vendor`, `Status`, `Description`) VALUES
(1, 2222, 'Samsung G', 1, ''),
(2, 2223, 'Samsung G', 1, ''),
(3, 2234, 'Samsung G', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` varchar(10) DEFAULT NULL,
  `userName` varchar(10) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `activeFlag` varchar(10) DEFAULT NULL,
  `departmentId` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `password`, `activeFlag`, `departmentId`) VALUES
('1', 'admin', 'admin', '1', NULL);
