-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 10, 2016 at 10:49 AM
-- Server version: 5.5.42-37.1
-- PHP Version: 5.4.31

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mneucoll_pwm`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('780d3f9c724a25daf7ab95530124f82ece8a781b', '163.246.0.135', 1462891501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436323839313530313b),
('1778d5705e99c5cd32142e00fd7f03454c4b80ee', '163.246.0.136', 1462891613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436323839313631333b),
('ab8d7fad81f76dbcb15608532ee3b238826ca217', '66.249.88.121', 1462735945, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436323733353934353b),
('c355d1c1559f4ea92c6b4c1ff07b13b7cc13964a', '66.249.88.121', 1462886564, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436323838363536343b),
('3c8529cc502345fa1d4a005748418f33af2f8103', '66.249.88.101', 1462545187, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436323534353138373b),
('1e77cf75e23d36e466b079fd642367e67d5b69b8', '173.17.170.47', 1462421682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436323432313638313b),
('f6e05e2a79b6eed59b1907ffba246a808cc3924f', '66.249.88.111', 1461958222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313935383232323b),
('78e8fca994de32f00fd516526a33fed094baf166', '66.249.80.1', 1462147232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436323134373233313b),
('3690f244dd703da3bcbeaec8573af52012c0d6fd', '128.255.71.96', 1461873044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837323734383b),
('77a97f04909a2d970568f936512755a9a77f8cba', '128.255.71.96', 1461873594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837333335363b),
('72e5e384d463685d25b35c8faadccd11efb267d7', '128.255.71.96', 1461873340, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837333035313b),
('97aeac2c06c05af162d9b35be4bc3c7f0156ecd5', '128.255.71.96', 1461872424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837323139383b),
('755d90cf507a44f0fe72e44a243d488627b5b6ea', '128.255.71.96', 1461871212, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837313231313b),
('fe6e994ce2354e705e0d579971beede3b8203d95', '128.255.71.96', 1461871715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837313731353b),
('b0f1a4ae56e96c436c73efd9a62eb854e1f43eae', '66.249.80.1', 1461874578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837343537383b),
('0deece01b5b683ad2e19e5f9067e5ec44a68c5d4', '128.255.71.180', 1461874581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837343538313b),
('94ee6421284ec10eda98bc639e27faebd251ccaa', '128.255.71.96', 1461870801, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837303739323b),
('e9e9bc0438f5531808de3f8035cfa0ffbba14fb3', '128.255.71.96', 1461870421, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837303231373b),
('7c745a7b37eab7e694e5d2d231cab431d424577f', '128.255.71.96', 1461873910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313436313837333636353b);

-- --------------------------------------------------------

--
-- Table structure for table `counties`
--

DROP TABLE IF EXISTS `counties`;
CREATE TABLE IF NOT EXISTS `counties` (
  `id` int(11) NOT NULL,
  `county` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counties`
--

INSERT INTO `counties` (`id`, `county`) VALUES
(0, ''),
(1, 'Adair'),
(2, 'Adams'),
(3, 'Allamakee'),
(4, 'Appanoose'),
(5, 'Audobon'),
(6, 'Benton'),
(7, 'Blackhawk'),
(8, 'Boone'),
(9, 'Bremer'),
(10, 'Buchanan'),
(11, 'Buena Vista'),
(12, 'Butler'),
(13, 'Calhoun'),
(14, 'Carroll'),
(15, 'Cass'),
(16, 'Cedar'),
(17, 'Cerro Gordo'),
(18, 'Cherokee'),
(19, 'Chickasaw'),
(20, 'Clarke'),
(21, 'Clay'),
(22, 'Clayton'),
(23, 'Clinton'),
(24, 'Crawford'),
(25, 'Dallas'),
(26, 'Davis'),
(27, 'Decatur'),
(28, 'Delaware'),
(29, 'Des Moines'),
(30, 'Dickinson'),
(31, 'Dubuque'),
(32, 'Emmet'),
(33, 'Fayette'),
(34, 'Floyd'),
(35, 'Franklin'),
(36, 'Fremont'),
(37, 'Greene'),
(38, 'Grundy'),
(39, 'Guthrie'),
(40, 'Hamilton'),
(41, 'Hancock'),
(42, 'Hardin'),
(43, 'Harrison'),
(44, 'Henry'),
(45, 'Howard'),
(46, 'Humboldt'),
(47, 'Ida'),
(48, 'Iowa'),
(49, 'Jackson'),
(50, 'Jasper'),
(51, 'Jefferson'),
(52, 'Johnson'),
(53, 'Jones'),
(54, 'Keokuk'),
(55, 'Kossuth'),
(56, 'Lee'),
(57, 'Linn'),
(58, 'Louisa'),
(59, 'Lucas'),
(60, 'Lyon'),
(61, 'Madison'),
(62, 'Mahaska'),
(63, 'Marion'),
(64, 'Marshall'),
(65, 'Mills'),
(66, 'Mitchell'),
(67, 'Monona'),
(68, 'Monroe'),
(69, 'Montgomery'),
(70, 'Muscatine'),
(71, 'O''Brien'),
(72, 'Osceola'),
(73, 'Page'),
(74, 'Palo Alto'),
(75, 'Plymoth'),
(76, 'Pocahontas'),
(77, 'Polk'),
(78, 'Pottawattamie'),
(79, 'Poweshiek'),
(100, 'PWM'),
(80, 'Ringgokd'),
(81, 'Sac'),
(82, 'Scott'),
(83, 'Shelby'),
(84, 'Sioux'),
(85, 'Story'),
(86, 'Tama'),
(87, 'Taylor'),
(88, 'Union'),
(89, 'Van Buren'),
(90, 'Wapello'),
(91, 'Warren'),
(92, 'Washington'),
(93, 'Wayne'),
(94, 'Webster'),
(95, 'Winnebago'),
(96, 'Winneshiek'),
(97, 'Woodbury'),
(98, 'Worth'),
(99, 'Wright');

-- --------------------------------------------------------

--
-- Table structure for table `counties_stories`
--

DROP TABLE IF EXISTS `counties_stories`;
CREATE TABLE IF NOT EXISTS `counties_stories` (
  `id` int(11) NOT NULL,
  `f_county_id` int(11) NOT NULL,
  `story_name` varchar(32) NOT NULL,
  `status` enum('Draft','Active') NOT NULL DEFAULT 'Draft'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `counties_stories`
--

INSERT INTO `counties_stories` (`id`, `f_county_id`, `story_name`, `status`) VALUES
(1, 16, '1944Flood', 'Draft'),
(2, 16, '1979Winter', 'Draft'),
(3, 16, '2013Flood', 'Draft'),
(4, 16, '1936blizzard', 'Draft'),
(5, 16, '1965Tornado', 'Draft'),
(6, 16, '2011Blizzard', 'Draft'),
(7, 43, 'Logan1999', 'Draft'),
(8, 43, 'PersiaYorkshire1925', 'Draft'),
(9, 43, 'Woodbine1913', 'Draft'),
(10, 56, 'EarlyFlooding', 'Draft'),
(11, 56, 'Flood1993', 'Draft'),
(12, 56, 'Mayflies', 'Draft'),
(13, 60, '2014Flood', 'Draft'),
(14, 60, 'EarlyFloods', 'Draft'),
(15, 60, 'Locusts', 'Draft'),
(16, 60, 'PeopleOnTheMove', 'Draft'),
(17, 77, 'Drought1936', 'Draft'),
(18, 77, 'Drought2012', 'Draft'),
(19, 77, 'Tornado1974', 'Draft'),
(20, 47, '1891Flood', 'Draft'),
(21, 47, '1962 Flood', 'Draft'),
(22, 57, 'Midland', 'Draft'),
(23, 57, 'Vets', 'Draft'),
(24, 57, 'WH', 'Draft'),
(25, 85, 'Flood1944', 'Draft'),
(26, 85, 'Flood2010', 'Draft'),
(27, 85, 'Tornado1944', 'Draft');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) unsigned NOT NULL,
  `image_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_path` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumb_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=409 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_name`, `source_path`, `thumb_name`, `image_size`) VALUES
(1, 'DekeHouse-Clarence.jpg', 'cedar/1898tornado/', 'DekeHouse-Clarence_thumb.jpg', 'width="500" height="339"'),
(2, 'ElwynSawyersBarn-Stanwood.jpg', 'cedar/1898tornado/', 'ElwynSawyersBarn-Stanwood_thumb.jpg', 'width="500" height="345"'),
(3, 'HAEmersonBarn-Massillon.jpg', 'cedar/1898tornado/', 'HAEmersonBarn-Massillon_thumb.jpg', 'width="500" height="333"'),
(4, '1936Blizzard-1.jpg', 'cedar/1936blizzard/', '1936Blizzard-1_thumb.jpg', 'width="500" height="767"'),
(5, '1936Blizzard-2.jpg', 'cedar/1936blizzard/', '1936Blizzard-2_thumb.jpg', 'width="500" height="293"'),
(6, '1936Blizzard-3.jpg', 'cedar/1936blizzard/', '1936Blizzard-3_thumb.jpg', 'width="500" height="305"'),
(7, '1944Flood_1_Back.jpg', 'cedar/1944Flood/', '1944Flood_1_Back_thumb.jpg', 'width="500" height="303"'),
(8, '1944Flood_1_Front.jpg', 'cedar/1944Flood/', '1944Flood_1_Front_thumb.jpg', 'width="500" height="303"'),
(9, '1944Flood_2_Back.jpg', 'cedar/1944Flood/', '1944Flood_2_Back_thumb.jpg', 'width="500" height="252"'),
(10, '1944Flood_2_Front.jpg', 'cedar/1944Flood/', '1944Flood_2_Front_thumb.jpg', 'width="500" height="252"'),
(11, '1944Flood_3_Back.jpg', 'cedar/1944Flood/', '1944Flood_3_Back_thumb.jpg', 'width="500" height="316"'),
(12, '1944Flood_3_Front.jpg', 'cedar/1944Flood/', '1944Flood_3_Front_thumb.jpg', 'width="500" height="316"'),
(13, '1944Flood_4_Back.jpg', 'cedar/1944Flood/', '1944Flood_4_Back_thumb.jpg', 'width="500" height="337"'),
(14, '1944Flood_4_Front.jpg', 'cedar/1944Flood/', '1944Flood_4_Front_thumb.jpg', 'width="500" height="337"'),
(15, '1944Flood_5.jpg', 'cedar/1944Flood/', '1944Flood_5_thumb.jpg', 'width="500" height="607"'),
(16, '1944Flood_5_Front.jpg', 'cedar/1944Flood/', '1944Flood_5_Front_thumb.jpg', 'width="500" height="776"'),
(17, 'PalmSundayTornado-1965Kruckenberg-Lg.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Kruckenberg-Lg_thumb.jpg', 'width="1000" height="800"'),
(18, 'PalmSundayTornado-1965Kruckenberg-S.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Kruckenberg-S_thumb.jpg', 'width="500" height="400"'),
(19, 'PalmSundayTornado-1965Nieting-Bk-L.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Nieting-Bk-L_thumb.jpg', 'width="1000" height="805"'),
(20, 'PalmSundayTornado-1965Nieting-Bk-S.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Nieting-Bk-S_thumb.jpg', 'width="500" height="402"'),
(21, 'PalmSundayTornado-1965Nieting-L.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Nieting-L_thumb.jpg', 'width="1000" height="805"'),
(22, 'PalmSundayTornado-1965Nieting-S.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Nieting-S_thumb.jpg', 'width="500" height="402"'),
(23, 'PalmSundayTornado-1965Wenndt_1-B.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_1-B_thumb.jpg', 'width="500" height="385"'),
(24, 'PalmSundayTornado-1965Wenndt_1-F.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_1-F_thumb.jpg', 'width="500" height="385"'),
(25, 'PalmSundayTornado-1965Wenndt_1-S-B.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_1-S-B_thumb.jpg', 'width="300" height="231"'),
(26, 'PalmSundayTornado-1965Wenndt_1-S-F.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_1-S-F_thumb.jpg', 'width="300" height="231"'),
(27, 'PalmSundayTornado-1965Wenndt_2-B.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_2-B_thumb.jpg', 'width="500" height="385"'),
(28, 'PalmSundayTornado-1965Wenndt_2-F.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_2-F_thumb.jpg', 'width="500" height="385"'),
(29, 'PalmSundayTornado-1965Wenndt_2-S-B.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_2-S-B_thumb.jpg', 'width="300" height="231"'),
(30, 'PalmSundayTornado-1965Wenndt_2-S-F.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_2-S-F_thumb.jpg', 'width="300" height="231"'),
(31, 'PalmSundayTornado-1965Wenndt_3-B.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_3-B_thumb.jpg', 'width="500" height="385"'),
(32, 'PalmSundayTornado-1965Wenndt_3-F.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_3-F_thumb.jpg', 'width="500" height="385"'),
(33, 'PalmSundayTornado-1965Wenndt_3-S-B.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_3-S-B_thumb.jpg', 'width="300" height="231"'),
(34, 'PalmSundayTornado-1965Wenndt_3-S-F.jpg', 'cedar/1965Tornado/', 'PalmSundayTornado-1965Wenndt_3-S-F_thumb.jpg', 'width="300" height="231"'),
(35, '1979Winter1-B.jpg', 'cedar/1979Winter/', '1979Winter1-B_thumb.jpg', 'width="500" height="361"'),
(36, '1979Winter1-F.jpg', 'cedar/1979Winter/', '1979Winter1-F_thumb.jpg', 'width="500" height="361"'),
(37, '1979Winter2-B.jpg', 'cedar/1979Winter/', '1979Winter2-B_thumb.jpg', 'width="500" height="361"'),
(38, '1979Winter2-F.jpg', 'cedar/1979Winter/', '1979Winter2-F_thumb.jpg', 'width="500" height="361"'),
(39, '1979Winter3-B.jpg', 'cedar/1979Winter/', '1979Winter3-B_thumb.jpg', 'width="500" height="356"'),
(40, '1979Winter3-F.jpg', 'cedar/1979Winter/', '1979Winter3-F_thumb.jpg', 'width="500" height="356"'),
(41, '2011Blizzard_1.jpg', 'cedar/2011Blizzard/', '2011Blizzard_1_thumb.jpg', 'width="500" height="316"'),
(42, '2011Blizzard_2.jpg', 'cedar/2011Blizzard/', '2011Blizzard_2_thumb.jpg', 'width="500" height="337"'),
(43, 'June2013Flood-1.jpg', 'cedar/2013Flood/', 'June2013Flood-1_thumb.jpg', 'width="500" height="337"'),
(44, 'June2013Flood-25thStInto-Lowden.jpg', 'cedar/2013Flood/', 'June2013Flood-25thStInto-Lowden_thumb.jpg', 'width="500" height="365"'),
(45, 'June2013Flood-3-WestMainSt.jpg', 'cedar/2013Flood/', 'June2013Flood-3-WestMainSt_thumb.jpg', 'width="500" height="348"'),
(46, 'June2013Flood-4.jpg', 'cedar/2013Flood/', 'June2013Flood-4_thumb.jpg', 'width="500" height="397"'),
(47, 'June2013Flood-5.jpg', 'cedar/2013Flood/', 'June2013Flood-5_thumb.jpg', 'width="500" height="373"'),
(48, 'June2013Flood-6.jpg', 'cedar/2013Flood/', 'June2013Flood-6_thumb.jpg', 'width="500" height="356"'),
(49, 'June2013Flood-7.jpg', 'cedar/2013Flood/', 'June2013Flood-7_thumb.jpg', 'width="500" height="703"'),
(50, '1898TornadoPopup.jpg', 'cedar/popups/', '1898TornadoPopup_thumb.jpg', 'width="300" height="402"'),
(51, '1965TornadoPopup.jpg', 'cedar/popups/', '1965TornadoPopup_thumb.jpg', 'width="300" height="390"'),
(53, 'Logan1999_1.jpg', 'harrison/Logan1999/', 'Logan1999_1_thumb.jpg', 'width="500" height="331"'),
(54, 'Logan1999_2.jpg', 'harrison/Logan1999/', 'Logan1999_2_thumb.jpg', 'width="500" height="312"'),
(55, 'LoganMap.jpg', 'harrison/Logan1999/', 'LoganMap_thumb.jpg', 'width="500" height="644"'),
(56, 'PersiaAndYorkshire1.jpg', 'harrison/PersiaYorkshire1925/', 'PersiaAndYorkshire1_thumb.jpg', 'width="500" height="273"'),
(57, 'PersiaAndYorkshire2.jpg', 'harrison/PersiaYorkshire1925/', 'PersiaAndYorkshire2_thumb.jpg', 'width="500" height="300"'),
(58, 'LoganIcon.png', 'harrison/popups/', 'LoganIcon_thumb.png', 'width="120" height="118"'),
(59, 'LoganPopup.jpg', 'harrison/popups/', 'LoganPopup_thumb.jpg', 'width="300" height="215"'),
(60, 'PersiaYorkshireIcon.png', 'harrison/popups/', 'PersiaYorkshireIcon_thumb.png', 'width="120" height="114"'),
(61, 'PersiaYorkshirePopup.jpg', 'harrison/popups/', 'PersiaYorkshirePopup_thumb.jpg', 'width="222" height="210"'),
(62, 'WoodbineTwiner.png', 'harrison/popups/', 'WoodbineTwiner_thumb.png', 'width="557" height="72"'),
(63, 'WoodbineTwiner300.png', 'harrison/popups/', 'WoodbineTwiner300_thumb.png', 'width="300" height="39"'),
(64, 'WoodbineTwinerPopup.jpg', 'harrison/popups/', 'WoodbineTwinerPopup_thumb.jpg', 'width="305" height="412"'),
(65, 'WoodbineWayMarkerIcon.png', 'harrison/popups/', 'WoodbineWayMarkerIcon_thumb.png', 'width="100" height="63"'),
(66, 'Woodbine1913-1.jpg', 'harrison/Woodbine1913/', 'Woodbine1913-1_thumb.jpg', 'width="500" height="286"'),
(67, 'Woodbine1913-2.jpg', 'harrison/Woodbine1913/', 'Woodbine1913-2_thumb.jpg', 'width="500" height="309"'),
(68, 'Woodbine1913-4.jpg', 'harrison/Woodbine1913/', 'Woodbine1913-4_thumb.jpg', 'width="500" height="339"'),
(69, 'Woodbine1913-5.jpg', 'harrison/Woodbine1913/', 'Woodbine1913-5_thumb.jpg', 'width="500" height="251"'),
(70, 'Woodbine1913-6.jpg', 'harrison/Woodbine1913/', 'Woodbine1913-6_thumb.jpg', 'width="500" height="252"'),
(71, 'WoodbineTwiner(Full).jpg', 'harrison/Woodbine1913/', 'WoodbineTwiner(Full)_thumb.jpg', 'width="859" height="1163"'),
(72, '1.jpg', 'ida/1891Flood/', '1_thumb.jpg', 'width="500" height="199"'),
(73, '2.jpg', 'ida/1891Flood/', '2_thumb.jpg', 'width="500" height="234"'),
(74, '3.jpg', 'ida/1891Flood/', '3_thumb.jpg', 'width="500" height="286"'),
(75, 'Photo 1.jpg', 'ida/1962 Flood/', 'Photo 1_thumb.jpg', 'width="986" height="543"'),
(76, 'Photo 2.jpg', 'ida/1962 Flood/', 'Photo 2_thumb.jpg', 'width="223" height="391"'),
(77, 'Photo 3.jpg', 'ida/1962 Flood/', 'Photo 3_thumb.jpg', 'width="512" height="174"'),
(78, 'Photo 4.jpg', 'ida/1962 Flood/', 'Photo 4_thumb.jpg', 'width="548" height="427"'),
(79, 'Photo 5.jpg', 'ida/1962 Flood/', 'Photo 5_thumb.jpg', 'width="528" height="419"'),
(80, 'Idaflood1962Popup.jpg', 'ida/popups/', 'Idaflood1962Popup_thumb.jpg', 'width="350" height="273"'),
(81, 'Idaflood1962Popup.png', 'ida/popups/', 'Idaflood1962Popup_thumb.png', 'width="350" height="273"'),
(82, 'IdaGroveIcon.jpg', 'ida/popups/', 'IdaGroveIcon_thumb.jpg', 'width="150" height="126"'),
(83, 'IdaGrovePopup.jpg', 'ida/popups/', 'IdaGrovePopup_thumb.jpg', 'width="310" height="163"'),
(84, 'IdaIcon.png', 'ida/popups/', 'IdaIcon_thumb.png', 'width="110" height="110"'),
(85, 'cofferdam.jpg', 'lee/EarlyFlooding/', 'cofferdam_thumb.jpg', 'width="500" height="245"'),
(86, 'Lee_ft_dm_rapids_1837.jpg', 'lee/EarlyFlooding/', 'Lee_ft_dm_rapids_1837_thumb.jpg', 'width="500" height="459"'),
(87, 'Lewis-north-river.jpg', 'lee/EarlyFlooding/', 'Lewis-north-river_thumb.jpg', 'width="500" height="326"'),
(88, 'buildingmaterials93.jpg', 'lee/Flood1993/', 'buildingmaterials93_thumb.jpg', 'width="500" height="311"'),
(89, 'NLHSflood93.jpg', 'lee/Flood1993/', 'NLHSflood93_thumb.jpg', 'width="500" height="353"'),
(90, 'Screenprinting93.jpg', 'lee/Flood1993/', 'Screenprinting93_thumb.jpg', 'width="500" height="613"'),
(91, 'Keokuk-DGC-Mayfly.jpg', 'lee/Mayflies/', 'Keokuk-DGC-Mayfly_thumb.jpg', 'width="500" height="337"'),
(92, 'mayflydailydem62315.jpg', 'lee/Mayflies/', 'mayflydailydem62315_thumb.jpg', 'width="500" height="667"'),
(93, '1993FloodIcon.png', 'lee/popups/', '1993FloodIcon_thumb.png', 'width="150" height="58"'),
(94, 'EarlyFloodingIcon.png', 'lee/popups/', 'EarlyFloodingIcon_thumb.png', 'width="100" height="104"'),
(95, 'Lee1993FloodPopup.jpg', 'lee/popups/', 'Lee1993FloodPopup_thumb.jpg', 'width="350" height="285"'),
(96, 'Lee1993FloodPopup.png', 'lee/popups/', 'Lee1993FloodPopup_thumb.png', 'width="350" height="285"'),
(97, 'LeeEarlyFloodingPopup.jpg', 'lee/popups/', 'LeeEarlyFloodingPopup_thumb.jpg', 'width="400" height="196"'),
(98, 'LeeEarlyFloodingPopup.png', 'lee/popups/', 'LeeEarlyFloodingPopup_thumb.png', 'width="400" height="196"'),
(99, 'LeeMayflyPopup.JPG', 'lee/popups/', 'LeeMayflyPopup_thumb.JPG', 'width="400" height="304"'),
(100, 'LeeMayflyPopup.png', 'lee/popups/', 'LeeMayflyPopup_thumb.png', 'width="400" height="304"'),
(101, 'MayflyIcon.png', 'lee/popups/', 'MayflyIcon_thumb.png', 'width="120" height="78"'),
(102, 'Brian.jpg', 'linn/Midland/', 'Brian_thumb.jpg', 'width="500" height="380"'),
(103, 'Church.jpg', 'linn/Midland/', 'Church_thumb.jpg', 'width="500" height="380"'),
(104, 'FrontFloodWForegroundMan.jpg', 'linn/Midland/', 'FrontFloodWForegroundMan_thumb.jpg', 'width="572" height="435"'),
(105, 'Inventory1000.jpg', 'linn/Midland/', 'Inventory1000_thumb.jpg', 'width="1000" height="375"'),
(106, 'Inventory500.jpg', 'linn/Midland/', 'Inventory500_thumb.jpg', 'width="500" height="188"'),
(107, 'Mucking.jpg', 'linn/Midland/', 'Mucking_thumb.jpg', 'width="500" height="380"'),
(108, 'Mucking_Cropped.jpg', 'linn/Midland/', 'Mucking_Cropped_thumb.jpg', 'width="500" height="450"'),
(109, 'ToRoof.jpg', 'linn/Midland/', 'ToRoof_thumb.jpg', 'width="500" height="380"'),
(110, 'MidlandFront.jpg', 'linn/popups/', 'MidlandFront_thumb.jpg', 'width="429" height="300"'),
(111, 'MidlandIcon.jpg', 'linn/popups/', 'MidlandIcon_thumb.jpg', 'width="100" height="75"'),
(112, 'MidlandIcon.png', 'linn/popups/', 'MidlandIcon_thumb.png', 'width="110" height="85"'),
(113, 'VetsIcon.png', 'linn/popups/', 'VetsIcon_thumb.png', 'width="100" height="114"'),
(114, 'VetsPrint.jpg', 'linn/popups/', 'VetsPrint_thumb.jpg', 'width="327" height="400"'),
(115, 'WH.png', 'linn/popups/', 'WH_thumb.png', 'width="614" height="306"'),
(116, 'WHLogo-sm.jpg', 'linn/popups/', 'WHLogo-sm_thumb.jpg', 'width="444" height="48"'),
(117, 'WHmarker.png', 'linn/popups/', 'WHmarker_thumb.png', 'width="108" height="79"'),
(118, 'WilliamsAndHuntingWoodcut.jpg', 'linn/popups/', 'WilliamsAndHuntingWoodcut_thumb.jpg', 'width="542" height="397"'),
(119, 'GrantWoodMuralRededication.jpg', 'linn/Vets/', 'GrantWoodMuralRededication_thumb.jpg', 'width="500" height="697"'),
(120, 'GrantWoodMuralRepair-1020.jpg', 'linn/Vets/', 'GrantWoodMuralRepair-1020_thumb.jpg', 'width="1020" height="482"'),
(121, 'GrantWoodTryptich.jpg', 'linn/Vets/', 'GrantWoodTryptich_thumb.jpg', 'width="1025" height="291"'),
(122, 'LadyOfMourning.jpg', 'linn/Vets/', 'LadyOfMourning_thumb.jpg', 'width="409" height="240"'),
(123, 'MemorialDedication.jpg', 'linn/Vets/', 'MemorialDedication_thumb.jpg', 'width="500" height="786"'),
(124, 'placeholder.jpg', 'linn/Vets/', 'placeholder_thumb.jpg', 'width="500" height="380"'),
(125, 'Vets1929-1020.jpg', 'linn/Vets/', 'Vets1929-1020_thumb.jpg', 'width="1020" height="637"'),
(126, 'Vets1929-500.jpg', 'linn/Vets/', 'Vets1929-500_thumb.jpg', 'width="500" height="312"'),
(127, 'Vets2008-1020.jpg', 'linn/Vets/', 'Vets2008-1020_thumb.jpg', 'width="1020" height="632"'),
(128, 'Vets2008-500.jpg', 'linn/Vets/', 'Vets2008-500_thumb.jpg', 'width="500" height="310"'),
(129, 'IMG_5063-500x850.jpg', 'linn/WH/', 'IMG_5063-500x850_thumb.jpg', 'width="500" height="850"'),
(130, 'IMG_5071-700X400.jpg', 'linn/WH/', 'IMG_5071-700X400_thumb.jpg', 'width="700" height="402"'),
(131, 'IMG_5072-500X830.jpg', 'linn/WH/', 'IMG_5072-500X830_thumb.jpg', 'width="500" height="830"'),
(132, 'L1060572-500X380.jpg', 'linn/WH/', 'L1060572-500X380_thumb.jpg', 'width="500" height="380"'),
(133, 'L1060573-500x380.jpg', 'linn/WH/', 'L1060573-500x380_thumb.jpg', 'width="500" height="380"'),
(134, 'L1060590-420x250.jpg', 'linn/WH/', 'L1060590-420x250_thumb.jpg', 'width="420" height="250"'),
(135, 'L1060590-500x300.jpg', 'linn/WH/', 'L1060590-500x300_thumb.jpg', 'width="500" height="298"'),
(136, 'WandH_1_Recto.jpg', 'linn/WH/', 'WandH_1_Recto_thumb.jpg', 'width="421" height="679"'),
(137, 'WandH_1_Verso.jpg', 'linn/WH/', 'WandH_1_Verso_thumb.jpg', 'width="421" height="679"'),
(138, 'WandH_Ad.jpg', 'linn/WH/', 'WandH_Ad_thumb.jpg', 'width="614" height="306"'),
(139, 'LyonFlood-2014.jpg', 'lyon/2014Flood/', 'LyonFlood-2014_thumb.jpg', 'width="500" height="226"'),
(140, 'LyonFlood2014Two.jpg', 'lyon/2014Flood/', 'LyonFlood2014Two_thumb.jpg', 'width="500" height="216"'),
(141, 'LyonSandbaggers2014.jpg', 'lyon/2014Flood/', 'LyonSandbaggers2014_thumb.jpg', 'width="500" height="479"'),
(142, 'Lewis_and_Clark_Map.jpg', 'lyon/EarlyFloods/', 'Lewis_and_Clark_Map_thumb.jpg', 'width="500" height="459"'),
(143, 'LocustBurn.jpg', 'lyon/Locusts/', 'LocustBurn_thumb.jpg', 'width="500" height="371"'),
(144, 'LocustMachine1.jpg', 'lyon/Locusts/', 'LocustMachine1_thumb.jpg', 'width="500" height="353"'),
(145, 'LocustMachine2.jpg', 'lyon/Locusts/', 'LocustMachine2_thumb.jpg', 'width="500" height="620"'),
(146, 'LocustMap.jpg', 'lyon/Locusts/', 'LocustMap_thumb.jpg', 'width="1000" height="781"'),
(147, 'LocustPortrait.jpg', 'lyon/Locusts/', 'LocustPortrait_thumb.jpg', 'width="500" height="646"'),
(148, 'LocustSide.jpg', 'lyon/Locusts/', 'LocustSide_thumb.jpg', 'width="500" height="397"'),
(149, 'LocustWoodcut.jpg', 'lyon/Locusts/', 'LocustWoodcut_thumb.jpg', 'width="500" height="428"'),
(150, 'BloodRiverLandscape.jpg', 'lyon/PeopleOnTheMove/', 'BloodRiverLandscape_thumb.jpg', 'width="500" height="629"'),
(151, 'BloodRunUIA_MNH.jpg', 'lyon/PeopleOnTheMove/', 'BloodRunUIA_MNH_thumb.jpg', 'width="500" height="368"'),
(152, 'Delisle.jpg', 'lyon/PeopleOnTheMove/', 'Delisle_thumb.jpg', 'width="500" height="445"'),
(153, 'lyon-nhl-bloodrun.jpg', 'lyon/PeopleOnTheMove/', 'lyon-nhl-bloodrun_thumb.jpg', 'width="500" height="334"'),
(154, 'LyonCountyCourthouse.jpg', 'lyon/PeopleOnTheMove/', 'LyonCountyCourthouse_thumb.jpg', 'width="500" height="375"'),
(155, 'EarlyFloodsMarker.jpg', 'lyon/popups/', 'EarlyFloodsMarker_thumb.jpg', 'width="120" height="70"'),
(156, 'EarlyFloodsPopup.jpg', 'lyon/popups/', 'EarlyFloodsPopup_thumb.jpg', 'width="310" height="180"'),
(157, 'LocustMarker.png', 'lyon/popups/', 'LocustMarker_thumb.png', 'width="150" height="70"'),
(158, 'LocustPopup.jpg', 'lyon/popups/', 'LocustPopup_thumb.jpg', 'width="300" height="388"'),
(159, 'Lyon1Marker.png', 'lyon/popups/', 'Lyon1Marker_thumb.png', 'width="120" height="117"'),
(160, 'Lyon1Popup.png', 'lyon/popups/', 'Lyon1Popup_thumb.png', 'width="310" height="174"'),
(161, 'LyonCountyQuartziteMarker.jpg', 'lyon/popups/', 'LyonCountyQuartziteMarker_thumb.jpg', 'width="100" height="67"'),
(162, 'LyonFlood2014Marker.jpg', 'lyon/popups/', 'LyonFlood2014Marker_thumb.jpg', 'width="150" height="99"'),
(163, 'LyonFlood2014Popup.jpg', 'lyon/popups/', 'LyonFlood2014Popup_thumb.jpg', 'width="300" height="200"'),
(164, 'PeopleOnTheMoveIcon.png', 'lyon/popups/', 'PeopleOnTheMoveIcon_thumb.png', 'width="150" height="80"'),
(165, 'PeopleOnTheMovePopup.jpg', 'lyon/popups/', 'PeopleOnTheMovePopup_thumb.jpg', 'width="500" height="316"'),
(166, 'PeopleOnTheMovePopup.png', 'lyon/popups/', 'PeopleOnTheMovePopup_thumb.png', 'width="350" height="221"'),
(167, 'W&H1.jpg', 'markers/', 'W&H1_thumb.jpg', 'width="361" height="583"'),
(168, 'WilliamsAndHuntingWoodcut-sm.png', 'markers/', 'WilliamsAndHuntingWoodcut-sm_thumb.png', 'width="108" height="79"'),
(169, 'Photo 1.jpg', 'polk/Drought1936/', 'Photo 1_thumb.jpg', 'width="956" height="718"'),
(170, 'Photo 2.jpg', 'polk/Drought1936/', 'Photo 2_thumb.jpg', 'width="827" height="621"'),
(171, 'Photo 3.jpg', 'polk/Drought1936/', 'Photo 3_thumb.jpg', 'width="746" height="559"'),
(172, 'Photo 4.jpg', 'polk/Drought1936/', 'Photo 4_thumb.jpg', 'width="697" height="526"'),
(173, 'Photo 5.jpg', 'polk/Drought1936/', 'Photo 5_thumb.jpg', 'width="2448" height="3264"'),
(174, 'Photo 6.jpg', 'polk/Drought1936/', 'Photo 6_thumb.jpg', 'width="2448" height="3264"'),
(175, 'Photo 7.jpg', 'polk/Drought1936/', 'Photo 7_thumb.jpg', 'width="724" height="543"'),
(176, 'Photo 1.jpg', 'polk/Drought2012/', 'Photo 1_thumb.jpg', 'width="620" height="412"'),
(177, 'Photo 2.jpg', 'polk/Drought2012/', 'Photo 2_thumb.jpg', 'width="667" height="473"'),
(178, 'Photo 3.jpg', 'polk/Drought2012/', 'Photo 3_thumb.jpg', 'width="937" height="705"'),
(179, 'Photo 4.jpg', 'polk/Drought2012/', 'Photo 4_thumb.jpg', 'width="3264" height="2448"'),
(180, 'AnkenyIcon.png', 'polk/popups/', 'AnkenyIcon_thumb.png', 'width="110" height="110"'),
(181, 'DMRegisterIcon.png', 'polk/popups/', 'DMRegisterIcon_thumb.png', 'width="300" height="49"'),
(182, 'PolkCountyIcon.png', 'polk/popups/', 'PolkCountyIcon_thumb.png', 'width="120" height="145"'),
(183, 'PolkDrought1936Popup.jpg', 'polk/popups/', 'PolkDrought1936Popup_thumb.jpg', 'width="350" height="178"'),
(184, 'PolkDrought1936Popup.png', 'polk/popups/', 'PolkDrought1936Popup_thumb.png', 'width="350" height="178"'),
(185, 'PolkDrought2012Popup.jpg', 'polk/popups/', 'PolkDrought2012Popup_thumb.jpg', 'width="400" height="244"'),
(186, 'PolkDrought2012Popup.png', 'polk/popups/', 'PolkDrought2012Popup_thumb.png', 'width="400" height="244"'),
(187, 'PolkTornado1974Popup.jpg', 'polk/popups/', 'PolkTornado1974Popup_thumb.jpg', 'width="500" height="235"'),
(188, 'PolkTornado1974Popup.png', 'polk/popups/', 'PolkTornado1974Popup_thumb.png', 'width="500" height="235"'),
(189, 'Photo 1.jpg', 'polk/Tornado1974/', 'Photo 1_thumb.jpg', 'width="2448" height="3264"'),
(190, 'Photo 2.jpg', 'polk/Tornado1974/', 'Photo 2_thumb.jpg', 'width="3264" height="2448"'),
(191, 'Photo 3.jpg', 'polk/Tornado1974/', 'Photo 3_thumb.jpg', 'width="3264" height="2448"'),
(192, 'Photo 4.jpg', 'polk/Tornado1974/', 'Photo 4_thumb.jpg', 'width="3264" height="2448"'),
(193, 'Photo 5.jpg', 'polk/Tornado1974/', 'Photo 5_thumb.jpg', 'width="3264" height="2448"'),
(194, 'Photo 6.jpg', 'polk/Tornado1974/', 'Photo 6_thumb.jpg', 'width="3264" height="2448"'),
(195, 'Photo 7.jpg', 'polk/Tornado1974/', 'Photo 7_thumb.jpg', 'width="3264" height="2448"'),
(199, 'AmesIcon_I.png', 'story/Flood1944/', 'AmesIcon_I_thumb.png', 'width="100" height="97"'),
(200, 'Photo 1.jpg', 'story/Flood1944/', 'Photo 1_thumb.jpg', 'width="406" height="600"'),
(201, 'Photo 2.jpg', 'story/Flood1944/', 'Photo 2_thumb.jpg', 'width="550" height="360"'),
(203, 'Happy Joes.jpg', 'story/Flood2010/', 'Happy Joes_thumb.jpg', 'width="519" height="346"'),
(204, 'HappyJoesIcon_II.png', 'story/Flood2010/', 'HappyJoesIcon_II_thumb.png', 'width="120" height="96"'),
(205, 'Photo 1.jpg', 'story/Flood2010/', 'Photo 1_thumb.jpg', 'width="760" height="506"'),
(206, 'Photo 2.jpg', 'story/Flood2010/', 'Photo 2_thumb.jpg', 'width="760" height="506"'),
(207, 'Photo 3.jpg', 'story/Flood2010/', 'Photo 3_thumb.jpg', 'width="760" height="506"'),
(208, 'Photo 4.jpg', 'story/Flood2010/', 'Photo 4_thumb.jpg', 'width="507" height="760"'),
(209, 'AmesIcon.png', 'story/popups/', 'AmesIcon_thumb.png', 'width="300" height="49"'),
(210, 'HappyJoesIcon.png', 'story/popups/', 'HappyJoesIcon_thumb.png', 'width="125" height="125"'),
(211, 'MaxwellIcon.png', 'story/popups/', 'MaxwellIcon_thumb.png', 'width="90" height="150"'),
(212, 'StoryFlood1944Popup.jpg', 'story/popups/', 'StoryFlood1944Popup_thumb.jpg', 'width="280" height="353"'),
(213, 'StoryFlood1944Popup.png', 'story/popups/', 'StoryFlood1944Popup_thumb.png', 'width="280" height="353"'),
(214, 'StoryFlood2010Popup.jpg', 'story/popups/', 'StoryFlood2010Popup_thumb.jpg', 'width="330" height="220"'),
(215, 'StoryFlood2010Popup.png', 'story/popups/', 'StoryFlood2010Popup_thumb.png', 'width="330" height="220"'),
(216, 'StoryTornado1944Popup.jpg', 'story/popups/', 'StoryTornado1944Popup_thumb.jpg', 'width="300" height="180"'),
(217, 'StoryTornado1944Popup.png', 'story/popups/', 'StoryTornado1944Popup_thumb.png', 'width="300" height="180"'),
(218, 'Maxwell1.jpg', 'story/Tornado1944/', 'Maxwell1_thumb.jpg', 'width="3264" height="2448"'),
(219, 'Maxwell2.jpg', 'story/Tornado1944/', 'Maxwell2_thumb.jpg', 'width="3264" height="2448"'),
(220, 'Photo 1.jpg', 'story/Tornado1944/', 'Photo 1_thumb.jpg', 'width="3264" height="2448"'),
(221, 'Photo 10.jpg', 'story/Tornado1944/', 'Photo 10_thumb.jpg', 'width="3264" height="2448"'),
(222, 'Photo 11.jpg', 'story/Tornado1944/', 'Photo 11_thumb.jpg', 'width="336" height="252"'),
(223, 'Photo 12.jpg', 'story/Tornado1944/', 'Photo 12_thumb.jpg', 'width="367" height="277"'),
(224, 'Photo 13.jpg', 'story/Tornado1944/', 'Photo 13_thumb.jpg', 'width="3264" height="2448"'),
(225, 'Photo 14.jpg', 'story/Tornado1944/', 'Photo 14_thumb.jpg', 'width="3264" height="2448"'),
(226, 'Photo 2.jpg', 'story/Tornado1944/', 'Photo 2_thumb.jpg', 'width="3264" height="2448"'),
(227, 'Photo 3.jpg', 'story/Tornado1944/', 'Photo 3_thumb.jpg', 'width="3264" height="2448"'),
(228, 'Photo 4.jpg', 'story/Tornado1944/', 'Photo 4_thumb.jpg', 'width="3264" height="2448"'),
(229, 'Photo 5.jpg', 'story/Tornado1944/', 'Photo 5_thumb.jpg', 'width="3264" height="2448"'),
(230, 'Photo 6.jpg', 'story/Tornado1944/', 'Photo 6_thumb.jpg', 'width="3264" height="2448"'),
(231, 'Photo 7.jpg', 'story/Tornado1944/', 'Photo 7_thumb.jpg', 'width="3264" height="2448"'),
(232, 'Photo 8.jpg', 'story/Tornado1944/', 'Photo 8_thumb.jpg', 'width="3264" height="2448"'),
(233, 'Photo 9.jpg', 'story/Tornado1944/', 'Photo 9_thumb.jpg', 'width="3264" height="2448"'),
(234, 'BloodRunUIA_MNH1.jpg', 'lyon/PeopleOnTheMove/', 'BloodRunUIA_MNH1_thumb.jpg', 'width="500" height="368"'),
(235, 'BloodRunUIA_MNH2.jpg', 'lyon/PeopleOnTheMove/', 'BloodRunUIA_MNH2_thumb.jpg', 'width="500" height="368"'),
(238, 'Daily_weather_map_Edited.jpg', 'blackhawk/CitizenScientists/', 'Daily_weather_map_Edited_thumb.jpg', 'width="500" height="369"'),
(239, 'Gustavus_Hinrichs_Edited.jpg', 'blackhawk/CitizenScientists/', 'Gustavus_Hinrichs_Edited_thumb.jpg', 'width="500" height="809"'),
(240, 'Kate_Dietrich_Weather_Diary_Resize.jpg', 'blackhawk/CitizenScientists/', 'Kate_Dietrich_Weather_Diary_Resize_thumb.jpg', 'width="500" height="375"'),
(241, 'CitizensSciencePopup.png', 'blackhawk/popups/', 'CitizensSciencePopup_thumb.png', 'width="500" height="401"'),
(242, 'CSDiaryIcon.png', 'blackhawk/popups/', 'CSDiaryIcon_thumb.png', 'width="95" height="88"'),
(246, 'icon-Resized.jpg', 'boone/BooneFloodOf1881/', 'icon-Resized_thumb.jpg', 'width="500" height="318"'),
(247, 'pleading_with_mom-Revised.jpg', 'boone/BooneFloodOf1881/', 'pleading_with_mom-Revised_thumb.jpg', 'width="500" height="434"'),
(248, 'BCFlood1881Icon.jpg', 'boone/popups/', 'BCFlood1881Icon_thumb.jpg', 'width="110" height="143"'),
(249, 'WaterlooFlood2008Popup.jpg', 'blackhawk/popups/', 'WaterlooFlood2008Popup_thumb.jpg', 'width="500" height="412"'),
(252, 'Floodwaters_in_Waterloo_-_(MATTHEW_PUTNEY_-_Courier_Photo_Editor', 'blackhawk/FloodInWaterloo/', 'Floodwaters_in_Waterloo_-_(MATTHEW_PUTNEY_-_Courier_Photo_Editor', 'width="500" height="333"'),
(254, 'SF1965Icon.png', 'scott/popups/', 'SF1965Icon_thumb.png', 'width="175" height="141"'),
(255, 'Scott1965FloodPopup_Edited.jpg', 'scott/popups/', 'Scott1965FloodPopup_Edited_thumb.jpg', 'width="500" height="747"'),
(256, '65_garden_addition_Edited.jpg', 'scott/ScottFloodOf1965/', '65_garden_addition_Edited_thumb.jpg', 'width="500" height="375"'),
(257, '65_ivan_jones_1_Edited.jpg', 'scott/ScottFloodOf1965/', '65_ivan_jones_1_Edited_thumb.jpg', 'width="500" height="352"'),
(258, '65_jones_before_after_Edited.png', 'scott/ScottFloodOf1965/', '65_jones_before_after_Edited_thumb.png', 'width="500" height="628"'),
(259, 'qctimes_65_buffalo_paper_boy_Edited.jpg', 'scott/ScottFloodOf1965/', 'qctimes_65_buffalo_paper_boy_Edited_thumb.jpg', 'width="500" height="1147"'),
(260, 'sandbag_tie_Edited.jpg', 'scott/ScottFloodOf1965/', 'sandbag_tie_Edited_thumb.jpg', 'width="500" height="646"'),
(262, 'ScottFlood1993Popup.jpg', 'scott/popups/', 'ScottFlood1993Popup_thumb.jpg', 'width="500" height="290"'),
(263, '93_kid_fish_Edited.jpg', 'scott/ScottFloodOf1993/', '93_kid_fish_Edited_thumb.jpg', 'width="500" height="1399"'),
(264, '93_mayor_arguing_w_garden_addition_resident_Edited.jpg', 'scott/ScottFloodOf1993/', '93_mayor_arguing_w_garden_addition_resident_Edited_thumb.jpg', 'width="500" height="333"'),
(265, '93_paper_before_crest_Edited.jpg', 'scott/ScottFloodOf1993/', '93_paper_before_crest_Edited_thumb.jpg', 'width="500" height="818"'),
(266, 'sand-trucks-93_Edited.png', 'scott/ScottFloodOf1993/', 'sand-trucks-93_Edited_thumb.png', 'width="500" height="389"'),
(267, 'WapelloFlood1947Icon.png', 'wapello/popups/', 'WapelloFlood1947Icon_thumb.png', 'width="150" height="113"'),
(268, 'WapelloFlood1947Popup.jpg', 'wapello/popups/', 'WapelloFlood1947Popup_thumb.jpg', 'width="500" height="321"'),
(269, 'eddville_Edited_-_Copy.jpg', 'wapello/WapelloFloodOf1947/', 'eddville_Edited_-_Copy_thumb.jpg', 'width="500" height="671"'),
(270, 'flooded_streets_Edited.jpg', 'wapello/WapelloFloodOf1947/', 'flooded_streets_Edited_thumb.jpg', 'width="500" height="269"'),
(271, 'mappicon_Edited.jpg', 'wapello/WapelloFloodOf1947/', 'mappicon_Edited_thumb.jpg', 'width="500" height="552"'),
(272, 'rescue_workers_ott_Edited1.jpg', 'wapello/WapelloFloodOf1947/', 'rescue_workers_ott_Edited1_thumb.jpg', 'width="500" height="384"'),
(273, 'tent_refugees_Edited.jpg', 'wapello/WapelloFloodOf1947/', 'tent_refugees_Edited_thumb.jpg', 'width="500" height="402"'),
(274, 'WapelloFlood1993Icon.png', 'wapello/popups/', 'WapelloFlood1993Icon_thumb.png', 'width="110" height="74"'),
(275, 'WapelloFlood1993Popup.jpg', 'wapello/popups/', 'WapelloFlood1993Popup_thumb.jpg', 'width="500" height="356"'),
(276, 'ariel_Edited.jpg', 'wapello/WapelloFLoodOf1993/', 'ariel_Edited_thumb.jpg', 'width="500" height="379"'),
(277, 'defoiled_soy_Edited.jpg', 'wapello/WapelloFLoodOf1993/', 'defoiled_soy_Edited_thumb.jpg', 'width="500" height="704"'),
(278, 'flood_damaged_field_Edited.jpg', 'wapello/WapelloFLoodOf1993/', 'flood_damaged_field_Edited_thumb.jpg', 'width="500" height="345"'),
(279, 'POPUP_Edited.jpg', 'wapello/WapelloFLoodOf1993/', 'POPUP_Edited_thumb.jpg', 'width="500" height="346"'),
(280, 'rusty_corn_Edited.jpg', 'wapello/WapelloFLoodOf1993/', 'rusty_corn_Edited_thumb.jpg', 'width="500" height="687"'),
(283, 'Bridge_AP_Photo-.jpg', 'blackhawk/FloodInWaterloo/', 'Bridge_AP_Photo-_thumb.jpg', 'width="500" height="308"'),
(284, 'Floodwaters_in_Waterloo_-.jpg', 'blackhawk/FloodInWaterloo/', 'Floodwaters_in_Waterloo_-_thumb.jpg', 'width="500" height="333"'),
(285, 'Humvee_and_Street.jpg', 'blackhawk/FloodInWaterloo/', 'Humvee_and_Street_thumb.jpg', 'width="500" height="251"'),
(286, 'WF2008Icon.png', 'blackhawk/popups/', 'WF2008Icon_thumb.png', 'width="130" height="127"'),
(291, 'Kate-Shelley-looking-at-the-bridge-Edited.jpg', 'boone/BooneFloodOf1881/', 'Kate-Shelley-looking-at-the-bridge-Edited_thumb.jpg', 'width="500" height="651"'),
(293, 'epic_drawing-Edited.jpg', 'boone/popups/', 'epic_drawing-Edited_thumb.jpg', 'width="500" height="328"'),
(294, 'Scott1993FloodIcon.png', 'scott/popups/', 'Scott1993FloodIcon_thumb.png', 'width="90" height="90"'),
(296, 'popup-Edited.jpg', 'boone/popups/', 'popup-Edited_thumb.jpg', 'width="500" height="738"'),
(297, 'StoryFlood1944Icon.jpg', 'story/popups/', 'StoryFlood1944Icon_thumb.jpg', 'width="95" height="107"'),
(298, 'StoryFlood1944Popup1.jpg', 'story/popups/', 'StoryFlood1944Popup1_thumb.jpg', 'width="500" height="623"'),
(299, 'Photo1_Edited.jpg', 'story/Flood1944/', 'Photo1_Edited_thumb.jpg', 'width="500" height="739"'),
(300, 'Photo2_Edited.jpg', 'story/Flood1944/', 'Photo2_Edited_thumb.jpg', 'width="500" height="327"'),
(301, 'StoryFlood2010Icon.png', 'story/popups/', 'StoryFlood2010Icon_thumb.png', 'width="125" height="125"'),
(302, 'StoryFlood2010Popup1.png', 'story/popups/', 'StoryFlood2010Popup1_thumb.png', 'width="500" height="333"'),
(303, 'Photo_3_Edited.jpg', 'story/Flood2010/', 'Photo_3_Edited_thumb.jpg', 'width="500" height="333"'),
(304, 'Photo_4_Edited.jpg', 'story/Flood2010/', 'Photo_4_Edited_thumb.jpg', 'width="500" height="750"'),
(305, 'MaxwellIcon1.png', 'story/popups/', 'MaxwellIcon1_thumb.png', 'width="95" height="159"'),
(306, 'Maxwellpopup.jpg', 'story/popups/', 'Maxwellpopup_thumb.jpg', 'width="500" height="273"'),
(307, 'Photo_1.jpg', 'story/Tornado1944/', 'Photo_1_thumb.jpg', 'width="500" height="351"'),
(308, 'Photo_2.jpg', 'story/Tornado1944/', 'Photo_2_thumb.jpg', 'width="500" height="493"'),
(309, 'Photo_3.jpg', 'story/Tornado1944/', 'Photo_3_thumb.jpg', 'width="500" height="396"'),
(310, 'CitizensSciencePopup1.png', 'blackhawk/popups/', 'CitizensSciencePopup1_thumb.png', 'width="300" height="241"'),
(311, 'WaterlooFlood2008Popup1.jpg', 'blackhawk/popups/', 'WaterlooFlood2008Popup1_thumb.jpg', 'width="300" height="247"'),
(312, 'popup-Edited1.jpg', 'boone/popups/', 'popup-Edited1_thumb.jpg', 'width="250" height="369"'),
(313, 'Scott1965FloodPopup_Edited1.jpg', 'scott/popups/', 'Scott1965FloodPopup_Edited1_thumb.jpg', 'width="250" height="374"'),
(314, 'ScottFlood1993Popup1.jpg', 'scott/popups/', 'ScottFlood1993Popup1_thumb.jpg', 'width="300" height="174"'),
(315, 'SF1965Icon1.png', 'scott/popups/', 'SF1965Icon1_thumb.png', 'width="125" height="101"'),
(316, 'WapelloFlood1947Popup1.jpg', 'wapello/popups/', 'WapelloFlood1947Popup1_thumb.jpg', 'width="300" height="193"'),
(317, 'WapelloFlood1993Popup1.jpg', 'wapello/popups/', 'WapelloFlood1993Popup1_thumb.jpg', 'width="300" height="214"'),
(318, 'StoryFlood1944Popup2.jpg', 'story/popups/', 'StoryFlood1944Popup2_thumb.jpg', 'width="300" height="374"'),
(319, 'StoryFlood1944Popup3.jpg', 'story/popups/', 'StoryFlood1944Popup3_thumb.jpg', 'width="300" height="374"'),
(320, 'StoryFlood2010Popup2.png', 'story/popups/', 'StoryFlood2010Popup2_thumb.png', 'width="300" height="200"'),
(321, 'Maxwellpopup1.jpg', 'story/popups/', 'Maxwellpopup1_thumb.jpg', 'width="300" height="164"'),
(322, 'Desert.jpg', 'story/popups/', 'Desert_thumb.jpg', 'width="1024" height="768"'),
(323, 'Gustavus_Hinrichs_Edited1.jpg', 'blackhawk/CitizenScientists/', 'Gustavus_Hinrichs_Edited1_thumb.jpg', 'width="500" height="606"'),
(324, 'Flood1881Icon.png', 'pottawattamie/popups/', 'Flood1881Icon_thumb.png', 'width="110" height="139"'),
(325, 'Flood1881Popup.jpg', 'pottawattamie/popups/', 'Flood1881Popup_thumb.jpg', 'width="350" height="258"'),
(326, 'Flood1881.jpg', 'pottawattamie/FloodOf1881/', 'Flood1881_thumb.jpg', 'width="500" height="328"'),
(327, 'union_pacific-Edited.jpg', 'pottawattamie/FloodOf1881/', 'union_pacific-Edited_thumb.jpg', 'width="436" height="441"'),
(328, 'Flood1952Icon.png', 'pottawattamie/popups/', 'Flood1952Icon_thumb.png', 'width="145" height="114"'),
(329, 'Flood1952Popup.jpg', 'pottawattamie/popups/', 'Flood1952Popup_thumb.jpg', 'width="350" height="230"'),
(330, '1-Porch.jpg', 'pottawattamie/FloodOf1952/', '1-Porch_thumb.jpg', 'width="500" height="472"'),
(331, '1-Council_Bluffs.jpg', 'pottawattamie/FloodOf1952/', '1-Council_Bluffs_thumb.jpg', 'width="500" height="636"'),
(332, '1-Omaha.jpg', 'pottawattamie/FloodOf1952/', '1-Omaha_thumb.jpg', 'width="500" height="337"'),
(333, '1-Sandbag.jpg', 'pottawattamie/FloodOf1952/', '1-Sandbag_thumb.jpg', 'width="500" height="567"'),
(334, '1-SiouxCity.jpg', 'pottawattamie/FloodOf1952/', '1-SiouxCity_thumb.jpg', 'width="500" height="393"'),
(335, 'Flood2011Icon.png', 'pottawattamie/popups/', 'Flood2011Icon_thumb.png', 'width="115" height="115"'),
(336, 'Flood2011Popup.jpg', 'pottawattamie/popups/', 'Flood2011Popup_thumb.jpg', 'width="350" height="242"'),
(337, '1-_Carp.jpg', 'pottawattamie/FloodOf2011/', '1-_Carp_thumb.jpg', 'width="500" height="751"'),
(338, '1-_Bridge.jpg', 'pottawattamie/FloodOf2011/', '1-_Bridge_thumb.jpg', 'width="500" height="291"'),
(339, '1-_Arial_View.jpg', 'pottawattamie/FloodOf2011/', '1-_Arial_View_thumb.jpg', 'width="500" height="375"'),
(340, '1-_Missouri_River.jpg', 'pottawattamie/FloodOf2011/', '1-_Missouri_River_thumb.jpg', 'width="500" height="281"'),
(341, '1-_Levee_Info.jpg', 'pottawattamie/FloodOf2011/', '1-_Levee_Info_thumb.jpg', 'width="500" height="787"'),
(342, 'Flood2011Icon.jpg', 'pottawattamie/popups/', 'Flood2011Icon_thumb.jpg', 'width="110" height="110"'),
(343, 'BethelIcon.png', 'boone/popups/', 'BethelIcon_thumb.png', 'width="252" height="53"'),
(344, 'BethalPopup.jpg', 'boone/popups/', 'BethalPopup_thumb.jpg', 'width="500" height="317"'),
(345, 'bethel_church_circa_1908-Resized.jpg', 'boone/TornadoOf1918/', 'bethel_church_circa_1908-Resized_thumb.jpg', 'width="500" height="296"'),
(346, 'bethel_debris_after_tornado-Resized.jpg', 'boone/TornadoOf1918/', 'bethel_debris_after_tornado-Resized_thumb.jpg', 'width="500" height="173"'),
(347, 'CNW_Yards_After_Tornado_1918-Resized.jpg', 'boone/TornadoOf1918/', 'CNW_Yards_After_Tornado_1918-Resized_thumb.jpg', 'width="500" height="297"'),
(348, 'icon-Resized.jpg', 'boone/TornadoOf1918/', 'icon-Resized_thumb.jpg', 'width="500" height="152"'),
(349, 'BethalPopup1.jpg', 'boone/popups/', 'BethalPopup1_thumb.jpg', 'width="300" height="190"'),
(350, 'BooneIcon.jpg', 'boone/popups/', 'BooneIcon_thumb.jpg', 'width="207" height="100"'),
(351, 'Boone1976Popup.jpg', 'boone/popups/', 'Boone1976Popup_thumb.jpg', 'width="300" height="173"'),
(352, 'Tornado-Resized.jpg', 'boone/TornadoOf1976/', 'Tornado-Resized_thumb.jpg', 'width="500" height="369"'),
(353, 'Fujita_Resized.jpg', 'boone/TornadoOf1976/', 'Fujita_Resized_thumb.jpg', 'width="500" height="432"'),
(354, 'Debris-Edited.jpg', 'boone/TornadoOf1976/', 'Debris-Edited_thumb.jpg', 'width="500" height="294"'),
(355, 'ButlerIcon.jpg', 'butler/popups/', 'ButlerIcon_thumb.jpg', 'width="110" height="99"'),
(356, 'ButlerPopup.jpg', 'butler/popups/', 'ButlerPopup_thumb.jpg', 'width="300" height="278"'),
(357, '1-Edited.png', 'butler/TornadoOf2008/', '1-Edited_thumb.png', 'width="500" height="429"'),
(358, '2-Edited.png', 'butler/TornadoOf2008/', '2-Edited_thumb.png', 'width="500" height="729"'),
(359, '3-Edited.png', 'butler/TornadoOf2008/', '3-Edited_thumb.png', 'width="500" height="310"'),
(360, 'Table_1.jpg', 'butler/TornadoOf2008/', 'Table_1_thumb.jpg', 'width="300" height="270"'),
(361, 'Table_2.jpg', 'butler/TornadoOf2008/', 'Table_2_thumb.jpg', 'width="300" height="265"'),
(362, 'Table_2_edited.jpg', 'butler/TornadoOf2008/', 'Table_2_edited_thumb.jpg', 'width="200" height="177"'),
(363, '2-Edited_II.png', 'butler/TornadoOf2008/', '2-Edited_II_thumb.png', 'width="400" height="656"'),
(364, '2-Edited_II1.png', 'butler/TornadoOf2008/', '2-Edited_II1_thumb.png', 'width="400" height="656"'),
(365, '2-Edited1.png', 'butler/TornadoOf2008/', '2-Edited1_thumb.png', 'width="450" height="645"'),
(366, 'ClayIcon.jpg', 'clay/popups/', 'ClayIcon_thumb.jpg', 'width="115" height="69"'),
(367, 'ClayPopup.jpg', 'clay/popups/', 'ClayPopup_thumb.jpg', 'width="300" height="189"'),
(368, 'Photo.jpg', 'clay/FloodOf1881/', 'Photo_thumb.jpg', 'width="500" height="534"'),
(369, 'ClayIcon1.jpg', 'clay/popups/', 'ClayIcon1_thumb.jpg', 'width="115" height="69"'),
(370, 'city_of_spencer_logo.png', 'clay/popups/', 'city_of_spencer_logo_thumb.png', 'width="196" height="118"'),
(371, 'ClayIcon.png', 'clay/popups/', 'ClayIcon_thumb.png', 'width="115" height="69"'),
(372, 'Photo1.jpg', 'clay/FloodOf1881/', 'Photo1_thumb.jpg', 'width="500" height="385"'),
(373, 'Clayton1965Icon.jpg', 'clayton/popups/', 'Clayton1965Icon_thumb.jpg', 'width="110" height="139"'),
(374, 'ClaytonFloodof1965Popup.jpg', 'clayton/popups/', 'ClaytonFloodof1965Popup_thumb.jpg', 'width="300" height="326"'),
(375, 'Flooded_Bridge_-_Copy.jpg', 'clayton/FloodOf1965/', 'Flooded_Bridge_-_Copy_thumb.jpg', 'width="500" height="328"'),
(376, 'Red_Cross.jpg', 'clayton/FloodOf1965/', 'Red_Cross_thumb.jpg', 'width="500" height="558"'),
(377, 'No_Parking_Sign_-_Copy.jpg', 'clayton/FloodOf1965/', 'No_Parking_Sign_-_Copy_thumb.jpg', 'width="500" height="340"'),
(378, 'IF1962Icon.png', 'ida/popups/', 'IF1962Icon_thumb.png', 'width="100" height="126"'),
(379, 'If1962popup.jpg', 'ida/popups/', 'If1962popup_thumb.jpg', 'width="300" height="238"'),
(380, 'Use1.jpg', 'ida/1962Flood/', 'Use1_thumb.jpg', 'width="500" height="397"'),
(381, 'Use2.jpg', 'ida/1962Flood/', 'Use2_thumb.jpg', 'width="500" height="275"'),
(382, 'Use3.jpg', 'ida/1962Flood/', 'Use3_thumb.jpg', 'width="300" height="114"'),
(383, 'FB1850Icon.png', 'fremont/popups/', 'FB1850Icon_thumb.png', 'width="115" height="100"'),
(384, 'UGR1850Popup.jpg', 'fremont/popups/', 'UGR1850Popup_thumb.jpg', 'width="300" height="198"'),
(385, 'FB1850popup.jpg', 'fremont/Blizzard1850s/', 'FB1850popup_thumb.jpg', 'width="300" height="154"'),
(386, 'undergroundrailraodsm.jpg', 'fremont/popups/', 'undergroundrailraodsm_thumb.jpg', 'width="500" height="261"'),
(387, 'JF1993Icon.png', 'johnson/popups/', 'JF1993Icon_thumb.png', 'width="100" height="96"'),
(388, 'JF1993popup.jpg', 'johnson/popups/', 'JF1993popup_thumb.jpg', 'width="500" height="392"'),
(389, 'Use1.jpg', 'johnson/1993Sandbagging/', 'Use1_thumb.jpg', 'width="500" height="726"'),
(390, 'Use2.jpg', 'johnson/1993Sandbagging/', 'Use2_thumb.jpg', 'width="500" height="368"'),
(391, 'Use3.jpg', 'johnson/1993Sandbagging/', 'Use3_thumb.jpg', 'width="500" height="340"'),
(392, 'Use4.jpg', 'johnson/1993Sandbagging/', 'Use4_thumb.jpg', 'width="500" height="248"'),
(393, 'JF2008Icon.png', 'johnson/popups/', 'JF2008Icon_thumb.png', 'width="110" height="71"'),
(394, 'JF2008popup.jpg', 'johnson/popups/', 'JF2008popup_thumb.jpg', 'width="300" height="452"'),
(395, 'Use1.jpg', 'johnson/2008Uiowa/', 'Use1_thumb.jpg', 'width="500" height="375"'),
(396, 'Use2.jpg', 'johnson/2008Uiowa/', 'Use2_thumb.jpg', 'width="400" height="606"'),
(397, 'Use3.jpg', 'johnson/2008Uiowa/', 'Use3_thumb.jpg', 'width="500" height="343"'),
(399, 'Document.png', 'desmoines/popups/', 'Document_thumb.png', 'width="150" height="60"'),
(400, 'DM1965Icon.jpg', 'desmoines/popups/', 'DM1965Icon_thumb.jpg', 'width="300" height="197"'),
(401, 'Use1.jpg', 'desmoines/BurlingtonFlood1965/', 'Use1_thumb.jpg', 'width="500" height="298"'),
(402, 'Use2.jpg', 'desmoines/BurlingtonFlood1965/', 'Use2_thumb.jpg', 'width="500" height="317"'),
(403, 'DM2008Icon.png', 'desmoines/popups/', 'DM2008Icon_thumb.png', 'width="115" height="146"'),
(404, 'DM2008Icon.jpg', 'desmoines/popups/', 'DM2008Icon_thumb.jpg', 'width="300" height="200"'),
(405, 'Use1.jpg', 'desmoines/DesMoinesCountyFlood2008/', 'Use1_thumb.jpg', 'width="500" height="333"'),
(406, 'Use2.jpg', 'desmoines/DesMoinesCountyFlood2008/', 'Use2_thumb.jpg', 'width="500" height="333"'),
(407, 'DM1965Icon.png', 'desmoines/popups/', 'DM1965Icon_thumb.png', 'width="200" height="80"'),
(408, 'Chrysanthemum.jpg', 'boone/popups/', 'Chrysanthemum_thumb.jpg', 'width="1024" height="768"');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

DROP TABLE IF EXISTS `login_attempts`;
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL,
  `css_id` varchar(32) NOT NULL,
  `menu_desc` varchar(120) DEFAULT NULL,
  `css_class` varchar(32) DEFAULT NULL,
  `sort` smallint(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6109 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `css_id`, `menu_desc`, `css_class`, `sort`) VALUES
(100, 'main_menu', 'PWM Top Global Menu', 'top_menu', 1),
(200, 'local_menu', 'PWM Home Page Secondary(local) menu', 'secondary_menu', 2),
(6002, 'local_menu', 'Lyon County', 'secondary_menu', 3),
(6008, 'local_menu', 'Clay County', 'secondary_menu', 16),
(6025, 'local_menu', 'Butler County', 'secondary_menu', 18),
(6033, 'local_menu', 'Clayton County', 'secondary_menu', 17),
(6036, 'local_menu', 'Ida County', 'secondary_menu', 4),
(6043, 'local_menu', 'Harrison County', 'secondary_menu', 5),
(6052, 'local_menu', 'Boone County', 'secondary_menu', 6),
(6053, 'local_menu', 'Story County', 'secondary_menu', 7),
(6056, 'local_menu', 'Polk County', 'secondary_menu', 8),
(6059, 'local_menu', 'Blackhawk County', 'secondary_menu', 9),
(6065, 'local_menu', 'Linn County', 'secondary_menu', 10),
(6070, 'local_menu', 'Johnson County', 'secondary_menu', 19),
(6071, 'local_menu', 'Cedar County', 'secondary_menu', 11),
(6074, 'local_menu', 'Scott County', 'secondary_menu', 12),
(6076, 'local_menu', 'Pottawattamie County', 'secondary_menu', 13),
(6082, 'local_menu', 'Fremont County', 'secondary_menu', 20),
(6102, 'local_menu', 'Wapello County', 'secondary_menu', 14),
(6105, 'local_menu', 'Des Moines County', 'secondary_menu', 21),
(6108, 'local_menu', 'Lee County', 'secondary_menu', 15);

-- --------------------------------------------------------

--
-- Table structure for table `menus_import_log`
--

DROP TABLE IF EXISTS `menus_import_log`;
CREATE TABLE IF NOT EXISTS `menus_import_log` (
  `id` int(11) NOT NULL,
  `msg` varchar(400) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus_import_log`
--

INSERT INTO `menus_import_log` (`id`, `msg`, `last_modified`) VALUES
(1, 'menus.xlsm: excel file loaded <br />menus_views table truncated <br />added 9 new records <br /><br />', '2015-10-28 13:11:47'),
(2, 'menus.xlsm: excel file loaded <br />menus_views table truncated <br />added 9 new records <br /><br />', '2015-10-28 13:22:10'),
(3, 'menus.xlsm: excel file loaded <br />menus_views table truncated <br />added 9 new records <br /><br />', '2015-10-28 13:22:49'),
(4, 'menus.xlsm: excel file loaded <br />menus_views table truncated <br />added 9 new records <br /><br />', '2015-10-28 13:24:56'),
(5, 'menus.xlsm: excel file loaded <br />menus_views table truncated <br />added 9 new records <br /><br />', '2015-10-28 13:27:39'),
(6, 'menus.xlsm: excel file loaded <br />menus table truncated <br />added 10 new records <br /><br />menu_items table truncated <br />added 199 new records <br /><br />menus_views table truncated <br />added 9 new records <br /><br />', '2015-10-28 13:30:57'),
(7, 'menus.xlsm: excel file loaded <br />menus table truncated <br />added 10 new records <br /><br />menu_items table truncated <br />added 199 new records <br /><br />menus_views table truncated <br />added 9 new records <br /><br />', '2015-10-28 13:32:50'),
(8, 'menus.xlsm: excel file loaded <br />menus table truncated <br />added 10 new records <br /><br />menu_items table truncated <br />added 199 new records <br /><br />menus_views table truncated <br />added 9 new records <br /><br />', '2015-10-28 13:35:36'),
(9, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 199 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />', '2015-10-28 13:37:51'),
(10, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 177 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />', '2015-10-29 15:16:32'),
(11, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 177 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />', '2015-10-29 18:35:17'),
(12, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 177 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />', '2015-10-29 18:45:48'),
(13, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 178 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />', '2015-11-04 19:18:26'),
(14, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 179 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />added 0 new records <br /><br />', '2016-04-01 13:29:46'),
(15, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 179 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />added 0 new records <br /><br />', '2016-04-01 13:50:43'),
(16, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 179 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />added 0 new records <br /><br />', '2016-04-01 15:35:43'),
(17, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 170 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />added 0 new records <br /><br />', '2016-04-01 19:17:35'),
(18, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 170 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />added 0 new records <br /><br />', '2016-04-01 19:22:25'),
(19, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 173 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />added 0 new records <br /><br />', '2016-04-01 19:30:54'),
(20, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 174 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />added 0 new records <br /><br />', '2016-04-01 19:51:26'),
(21, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 10 new records <br /><br />menu_items table truncated.  added 174 new records <br /><br />menus_views table truncated.  added 9 new records <br /><br />added 0 new records <br /><br />', '2016-04-07 01:24:44'),
(22, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 178 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-07 16:39:19'),
(23, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 187 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-08 20:08:27'),
(24, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 197 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-09 13:47:12'),
(25, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 197 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-11 23:59:03'),
(26, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 199 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 13:10:54'),
(27, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 198 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 13:21:21'),
(28, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 200 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 13:56:51'),
(29, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 202 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 14:10:03'),
(30, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 202 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 14:11:34'),
(31, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 204 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 21:06:55'),
(32, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 204 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 21:08:59'),
(33, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 204 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 21:10:15'),
(34, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 206 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 21:20:39'),
(35, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 206 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 21:23:41'),
(36, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 214 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 23:29:19'),
(37, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 214 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-17 23:56:24'),
(38, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 14 new records <br /><br />menu_items table truncated.  added 214 new records <br /><br />menus_views table truncated.  added 13 new records <br /><br />added 0 new records <br /><br />', '2016-04-18 18:36:00'),
(39, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 15 new records <br /><br />menu_items table truncated.  added 214 new records <br /><br />menus_views table truncated.  added 14 new records <br /><br />added 0 new records <br /><br />', '2016-04-18 20:51:52'),
(40, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 15 new records <br /><br />menu_items table truncated.  added 214 new records <br /><br />menus_views table truncated.  added 14 new records <br /><br />added 0 new records <br /><br />', '2016-04-18 20:53:39'),
(41, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 15 new records <br /><br />menu_items table truncated.  added 215 new records <br /><br />menus_views table truncated.  added 14 new records <br /><br />added 0 new records <br /><br />', '2016-04-18 20:59:38'),
(42, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 15 new records <br /><br />menu_items table truncated.  added 215 new records <br /><br />menus_views table truncated.  added 14 new records <br /><br />added 0 new records <br /><br />', '2016-04-18 21:03:04'),
(43, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 18 new records <br /><br />menu_items table truncated.  added 218 new records <br /><br />menus_views table truncated.  added 17 new records <br /><br />added 0 new records <br /><br />', '2016-04-20 23:17:04'),
(44, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 18 new records <br /><br />menu_items table truncated.  added 218 new records <br /><br />menus_views table truncated.  added 17 new records <br /><br />added 0 new records <br /><br />', '2016-04-20 23:57:34'),
(45, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 18 new records <br /><br />menu_items table truncated.  added 218 new records <br /><br />menus_views table truncated.  added 17 new records <br /><br />added 0 new records <br /><br />', '2016-04-21 00:10:30'),
(46, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 18 new records <br /><br />menu_items table truncated.  added 218 new records <br /><br />menus_views table truncated.  added 17 new records <br /><br />added 0 new records <br /><br />', '2016-04-21 00:14:14'),
(47, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 21 new records <br /><br />menu_items table truncated.  added 221 new records <br /><br />menus_views table truncated.  added 20 new records <br /><br />added 0 new records <br /><br />', '2016-04-21 21:38:55'),
(48, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 21 new records <br /><br />menu_items table truncated.  added 221 new records <br /><br />menus_views table truncated.  added 20 new records <br /><br />added 0 new records <br /><br />', '2016-04-21 21:40:49'),
(49, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 21 new records <br /><br />menu_items table truncated.  added 187 new records <br /><br />menus_views table truncated.  added 20 new records <br /><br />added 0 new records <br /><br />', '2016-04-22 00:03:16'),
(50, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 21 new records <br /><br />menu_items table truncated.  added 187 new records <br /><br />menus_views table truncated.  added 20 new records <br /><br />added 0 new records <br /><br />', '2016-04-22 01:49:30'),
(51, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 21 new records <br /><br />menu_items table truncated.  added 187 new records <br /><br />menus_views table truncated.  added 20 new records <br /><br />added 0 new records <br /><br />', '2016-04-22 18:09:27'),
(52, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 21 new records <br /><br />menu_items table truncated.  added 186 new records <br /><br />menus_views table truncated.  added 20 new records <br /><br />added 0 new records <br /><br />', '2016-04-22 20:40:45'),
(53, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 21 new records <br /><br />menu_items table truncated.  added 186 new records <br /><br />menus_views table truncated.  added 20 new records <br /><br />added 0 new records <br /><br />', '2016-04-22 21:43:06'),
(54, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 21 new records <br /><br />menu_items table truncated.  added 186 new records <br /><br />menus_views table truncated.  added 20 new records <br /><br />added 0 new records <br /><br />', '2016-04-24 13:14:22'),
(55, 'menus.xlsm: excel file loaded <br /> <br />menus table truncated.  added 21 new records <br /><br />menu_items table truncated.  added 186 new records <br /><br />menus_views table truncated.  added 20 new records <br /><br />added 0 new records <br /><br />', '2016-04-28 13:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `menus_views`
--

DROP TABLE IF EXISTS `menus_views`;
CREATE TABLE IF NOT EXISTS `menus_views` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `view_name` varchar(64) DEFAULT NULL,
  `view_center_lat` double DEFAULT NULL,
  `view_center_lng` double DEFAULT NULL,
  `view_zoom` smallint(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus_views`
--

INSERT INTO `menus_views` (`id`, `menu_id`, `view_name`, `view_center_lat`, `view_center_lng`, `view_zoom`) VALUES
(1, 6065, 'linn', 41.9749977404888, -91.6672396659851, 15),
(2, 200, 'home', NULL, NULL, NULL),
(3, 6043, 'harrison', 41.7236680645855, -95.8426666259765, 10),
(4, 6071, 'cedar', 41.8015188673147, -91.1401748657226, 11),
(5, 6036, 'ida', 42.3444, -95.4706, 13),
(6, 6002, 'lyon', 43.2829540063964, -96.2246017483994, 10),
(7, 6056, 'polk', 41.6723989259079, -93.5818862915039, 11),
(8, 6108, 'lee', 40.6428, -91.4744, 10),
(9, 6053, 'story', 42.0135909008899, -93.4761428833007, 11),
(10, 6059, 'blackhawk', 42.4978711247633, -92.3322372324764, 11),
(11, 6052, 'boone', 42.0614776366543, -93.9046554453671, 11),
(12, 6074, 'scott', 41.6420796478916, -90.6135635264217, 11),
(13, 6102, 'wapello', 41.0180701, -92.4154631, 11),
(14, 6076, 'pottawattamie', 41.3333273, -95.5336149, 10),
(15, 6008, 'clay', 43.0708942106724, -95.1491546630859, 11),
(16, 6033, 'clayton', 42.8729448685507, -91.3372421264648, 11),
(17, 6025, 'butler', 42.7419695325208, -92.7901840209961, 11),
(18, 6070, 'johnson', 41.6699, -91.5984, 11),
(19, 6082, 'fremont', 40.74, -95.6458, 11),
(20, 6105, 'desmoines', 40.9123, -91.1737, 11);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `child_of` int(11) DEFAULT NULL,
  `sort` smallint(6) DEFAULT NULL,
  `menu_item_text` varchar(64) DEFAULT NULL,
  `menu_item_desc` varchar(128) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `target` varchar(16) DEFAULT '"_self"',
  `css_class` varchar(32) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=610801 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `child_of`, `sort`, `menu_item_text`, `menu_item_desc`, `url`, `target`, `css_class`) VALUES
(1000, 100, NULL, NULL, 'Home', NULL, '[base_url]/index.php/home', '_self', 'parent'),
(2000, 100, NULL, NULL, 'Weather', NULL, NULL, '_self', 'parent'),
(2100, 100, 2000, NULL, 'Local Data', 'Outside Sites linked off page with thumbnails', NULL, NULL, 'parent'),
(2110, 100, 2100, 1, 'Iowa Mesonet', NULL, 'https://mesonet.agron.iastate.edu', '_blank', 'active'),
(2120, 100, 2100, 2, 'Historical Tornadoes', NULL, 'http://bit.ly/1hPMg6g', '_blank', 'active'),
(2130, 100, 2100, 3, 'Predicting the Weather like Grandpa Use To - Steve Gottschalk', 'Null', '[base_url]/index.php/mainmenu/gottschalk_book', '_self', 'active'),
(2200, 100, 2000, NULL, 'National and Global Data', 'Outside Sites linked off page with thumbnails', NULL, NULL, NULL),
(2210, 100, 2200, NULL, 'Drought Monitor', NULL, 'http://droughtmonitor.unl.edu/', '_blank', 'active'),
(2220, 100, 2200, 1, 'NOAA', NULL, 'http://www.noaa.gov/climate.html', '_blank', 'active'),
(2230, 100, 2200, NULL, 'NASA Temperature Data 1820-2011', NULL, '[base_url]/index.php/mainmenu/nasa_temp', '_blank', 'active'),
(2240, 100, 2200, NULL, 'NASA Atmospheric Carbon Visualization', NULL, '[base_url]/index.php/mainmenu/nasa_carbon', '_blank', 'active'),
(2250, 100, 2200, NULL, 'USGS', NULL, 'https://nccwsc.usgs.gov', '_blank', 'active'),
(2300, 100, 2000, NULL, 'Hazards Data', NULL, '[base_url]/index.php/mainmenu/hazards/0', '_self', 'active'),
(3000, 100, NULL, NULL, 'Climate', NULL, NULL, NULL, NULL),
(3100, 100, 3000, NULL, 'Climate Scientist Interviews:', NULL, NULL, '_self', 'label'),
(3105, 100, 3000, 1, 'chemist Betsy Stone', NULL, '[base_url]/index.php/home/story/PWM/BetsyStone', '_self', 'active'),
(3106, 100, 3105, 1, 'Interview', NULL, '[base_url]/index.php/home/story/PWM/BetsyStone', '_self', 'active'),
(3107, 100, 3105, 2, 'Recommended Link: EPA-Climate Change', NULL, 'https://www3.epa.gov/climatechange/', '_blank', 'active'),
(3110, 100, 3000, 2, 'weather scientist Chris Anderson', NULL, '[base_url]/index.php/home/story/PWM/ChrisAnderson', '_self', 'active'),
(3111, 100, 3110, 1, 'Interview', NULL, '[base_url]/index.php/home/story/PWM/ChrisAnderson', '_self', 'active'),
(3112, 100, 3110, 2, 'Recommended Link: Katharine Hayhoe, Climate Scientist', NULL, 'http://katharinehayhoe.com/', '_blank', 'active'),
(3115, 100, 3000, 3, 'economist and policy analyst David Osterberg', NULL, '[base_url]/index.php/home/story/PWM/DavidOsterberg', '_self', 'active'),
(3116, 100, 3115, 1, 'Interview', NULL, '[base_url]/index.php/home/story/PWM/DavidOsterberg', '_self', 'active'),
(3117, 100, 4115, 2, 'Recommended Link: Papal Encylicals Online', NULL, 'http://www.papalencyclicals.net/', '_blank', 'active'),
(3120, 100, 3000, 4, 'geographer Eric Tate', NULL, '[base_url]/index.php/home/story/PWM/EricTate', '_self', 'active'),
(3121, 100, 3120, 1, 'Interview', NULL, '[base_url]/index.php/home/story/PWM/EricTate', '_self', 'active'),
(3122, 100, 3120, 2, 'Recommended Link: Climate and Clean Air Coalition ', NULL, 'http://www.ccacoalition.org/en', '_blank', 'active'),
(3125, 100, 3000, 5, 'chemical engineer Greg Carmichael', NULL, '[base_url]/index.php/home/story/PWM/GregCarmichael', '_self', 'active'),
(3126, 100, 3125, 1, 'Interview', NULL, '[base_url]/index.php/home/story/PWM/GregCarmichael', '_self', 'active'),
(3127, 100, 3125, 2, 'Recommended Link: Environmental Defense Fund', NULL, 'https://www.edf.org/', '_blank', 'active'),
(3130, 100, 3000, 6, 'communication specialist Jean Goodwin', NULL, '[base_url]/index.php/home/story/PWM/JeanGoodwin', '_self', 'active'),
(3131, 100, 3130, 1, 'Interview', NULL, '[base_url]/index.php/home/story/PWM/JeanGoodwin', '_self', 'active'),
(3132, 100, 3130, 2, 'Recommended Link: Yale Climate Connections', NULL, 'http://www.yaleclimateconnections.org/', '_blank', 'active'),
(3135, 100, 3000, 7, 'environmental engineer Jerry Schnoor', NULL, '[base_url]/index.php/home/story/PWM/JerrySchnoor', '_self', 'active'),
(3136, 100, 3135, 1, 'Interview', NULL, '[base_url]/index.php/home/story/PWM/JerrySchnoor', '_self', 'active'),
(3137, 100, 3135, 2, 'Recommended Link: National Oceanic and Atmospheric Administratio', NULL, 'http://www.noaa.gov/', '_blank', 'active'),
(3140, 100, 3000, 8, 'public health scientist Peter Thorne', NULL, '[base_url]/index.php/home/story/PWM/PeterThorne', '_self', 'active'),
(3141, 100, 3140, 1, 'Interview', NULL, '[base_url]/index.php/home/story/PWM/PeterThorne', '_self', 'active'),
(3142, 100, 3140, 2, 'Recommended Link: Intergovernmental Panel on Climate Change (IPC', NULL, 'http://www.ipcc.ch/', '_blank', 'active'),
(3145, 100, 3000, 9, 'agronomist Rick Cruse', NULL, '[base_url]/index.php/home/story/PWM/RickCruse', '_self', 'active'),
(3146, 100, 3145, 1, 'Interview', NULL, '[base_url]/index.php/home/story/PWM/RickCruse', '_self', 'active'),
(3147, 100, 3145, 2, 'Recommended Link: Daily Erosion Project', NULL, 'http://dailyerosion.org/', '_blank', 'active'),
(3205, 100, 3200, 1, 'H20 Radio', NULL, 'http://h2oradio.org/', '_blank', 'active'),
(3210, 100, 3200, 2, 'Intergovernmental Panel on Climate Change', NULL, 'http://www.ipcc.ch/', '_blank', 'active'),
(3215, 100, 3200, 3, 'EPA: Climate Change', NULL, 'https://www3.epa.gov/climatechange/', '_blank', 'active'),
(3220, 100, 3200, 4, 'Environmental Defense Fund', NULL, 'https://www.edf.org/', '_blank', 'active'),
(3225, 100, 3200, 5, 'Climate & Clean Air Coalition', NULL, 'http://www.ccacoalition.org/en', '_blank', 'active'),
(3230, 100, 3200, 6, 'Papal Encyclicals', NULL, 'http://www.papalencyclicals.net/', '_blank', 'active'),
(3235, 100, 3200, 7, 'Daily Erosion Project', NULL, 'http://dailyerosion.org/', '_blank', 'active'),
(3240, 100, 3200, 8, 'Yale Climate Connections', NULL, 'http://www.yaleclimateconnections.org/', '_blank', 'active'),
(3245, 100, 3200, 9, 'Katharine Hayhoe, Climate Scientist', NULL, 'http://katharinehayhoe.com/', '_blank', 'active'),
(3250, 100, 3200, 10, 'National Oceanic and Atmospheric Administration', NULL, 'http://www.noaa.gov/', '_blank', 'active'),
(3255, 100, 3200, 11, 'Audobon: The Climate Report', NULL, 'http://climate.audubon.org/', '_blank', 'active'),
(4000, 100, NULL, NULL, 'Get Involved', NULL, '[base_url]/index.php/mainmenu/getinvolved', NULL, NULL),
(5000, 100, NULL, 5, 'About PWM', NULL, '[base_url]/index.php/mainmenu/about/0', '_self', 'parent'),
(5100, 100, 5000, NULL, 'Our Team', NULL, '[base_url]/index.php/mainmenu/about/1', NULL, NULL),
(5110, 100, 5000, NULL, 'Our Funders', NULL, '[base_url]/index.php/mainmenu/about/2', NULL, NULL),
(5120, 100, 5000, NULL, 'Our Partners', NULL, '[base_url]/index.php/mainmenu/about/3', NULL, NULL),
(6000, 200, NULL, NULL, 'Counties (by region)', NULL, '#', NULL, 'label'),
(6001, 200, NULL, NULL, 'North-West', NULL, '#', NULL, 'parent'),
(6002, 200, 6001, 1, 'Lyon', NULL, '[base_url]/index.php/home/view/lyon/6002', NULL, 'active'),
(6003, 200, 6001, 2, 'Osceola', NULL, '#', NULL, NULL),
(6004, 200, 6001, 3, 'Dickinson', NULL, '#', NULL, NULL),
(6005, 200, 6001, 4, 'Emmet', NULL, '#', NULL, NULL),
(6006, 200, 6001, 5, 'Sioux', NULL, '#', NULL, NULL),
(6007, 200, 6001, 6, 'O''Brien', NULL, '#', NULL, NULL),
(6008, 200, 6001, 7, 'Clay', NULL, '[base_url]/index.php/home/view/clay/6008', NULL, 'active'),
(6009, 200, 6001, 8, 'Palo Alto', NULL, '#', NULL, NULL),
(6010, 200, 6001, 9, 'Plymoth', NULL, '#', NULL, NULL),
(6011, 200, 6001, 10, 'Cherokee', NULL, '#', NULL, NULL),
(6012, 200, 6001, 11, 'Buena Vista', NULL, '#', NULL, NULL),
(6013, 200, 6001, 12, 'Pocahontas', NULL, '#', NULL, NULL),
(6014, 200, NULL, NULL, 'North-Central', NULL, '#', NULL, 'parent'),
(6015, 200, 6014, 1, 'Kossuth', NULL, '#', NULL, NULL),
(6016, 200, 6014, 2, 'Winnebago', NULL, '#', NULL, NULL),
(6017, 200, 6014, 3, 'Worth', NULL, '#', NULL, NULL),
(6018, 200, 6014, 4, 'Mitchell', NULL, '#', NULL, NULL),
(6019, 200, 6014, 5, 'Hancock', NULL, '#', NULL, NULL),
(6020, 200, 6014, 6, 'Cerro Gordo', NULL, '#', NULL, NULL),
(6021, 200, 6014, 7, 'Floyd', NULL, '#', NULL, NULL),
(6022, 200, 6014, 8, 'Humboldt', NULL, '#', NULL, NULL),
(6023, 200, 6014, 9, 'Wright', NULL, '#', NULL, NULL),
(6024, 200, 6014, 10, 'Franklin', NULL, '#', NULL, NULL),
(6025, 200, 6014, 11, 'Butler', NULL, '[base_url]/index.php/home/view/butler/6025', NULL, 'active'),
(6026, 200, NULL, NULL, 'North-East', NULL, '#', NULL, 'parent'),
(6027, 200, 6026, 1, 'Howard', NULL, '#', NULL, NULL),
(6028, 200, 6026, 2, 'Winneshiek', NULL, '#', NULL, NULL),
(6029, 200, 6026, 3, 'Allamakee', NULL, '#', NULL, NULL),
(6030, 200, 6026, 4, 'Chickasaw', NULL, '#', NULL, NULL),
(6031, 200, 6026, 5, 'Bremer', NULL, '#', NULL, NULL),
(6032, 200, 6026, 6, 'Fayette', NULL, '#', NULL, NULL),
(6033, 200, 6026, 7, 'Clayton', NULL, '[base_url]/index.php/home/view/clayton/6033', NULL, 'active'),
(6034, 200, NULL, NULL, 'West', NULL, '#', NULL, 'parent'),
(6035, 200, 6034, 1, 'Woodbury', NULL, '#', NULL, NULL),
(6036, 200, 6034, 2, 'Ida', NULL, '[base_url]/index.php/home/view/ida/6036', NULL, 'active'),
(6037, 200, 6034, 3, 'Sac', NULL, '#', NULL, NULL),
(6038, 200, 6034, 4, 'Calhoun', NULL, '#', NULL, NULL),
(6039, 200, 6034, 5, 'Monona', NULL, '#', NULL, NULL),
(6040, 200, 6034, 6, 'Crawford', NULL, '#', NULL, NULL),
(6041, 200, 6034, 7, 'Carroll', NULL, '#', NULL, NULL),
(6042, 200, 6034, 8, 'Greene', NULL, '#', NULL, NULL),
(6043, 200, 6034, 9, 'Harrison', NULL, '[base_url]/index.php/home/view/harrison/6043', NULL, 'active'),
(6044, 200, 6034, 10, 'Shelby', NULL, '#', NULL, NULL),
(6045, 200, 6034, 11, 'Audobon', NULL, '#', NULL, NULL),
(6046, 200, 6034, 12, 'Cuthrie', NULL, '#', NULL, NULL),
(6047, 200, NULL, NULL, 'Central', NULL, '#', NULL, 'parent'),
(6048, 200, 6047, 1, 'Webster', NULL, '#', NULL, NULL),
(6049, 200, 6047, 2, 'Hamilton', NULL, '#', NULL, NULL),
(6050, 200, 6047, 3, 'Hardin', NULL, '#', NULL, NULL),
(6051, 200, 6047, 4, 'Grundy', NULL, '#', NULL, NULL),
(6052, 200, 6047, 5, 'Boone', NULL, '[base_url]/index.php/home/view/boone/6052', NULL, 'active'),
(6053, 200, 6047, 6, 'Story', NULL, '[base_url]/index.php/home/view/story/6053', NULL, 'active'),
(6054, 200, 6047, 7, 'Marshall', NULL, '#', NULL, NULL),
(6055, 200, 6047, 8, 'Dallas', NULL, '#', NULL, NULL),
(6056, 200, 6047, 9, 'Polk', NULL, '#', NULL, NULL),
(6057, 200, 6047, 10, 'Jasper', NULL, '#', NULL, NULL),
(6058, 200, NULL, NULL, 'East', NULL, '#', NULL, 'parent'),
(6059, 200, 6058, 1, 'Blackhawk', NULL, '[base_url]/index.php/home/view/blackhawk/6059', NULL, 'active'),
(6060, 200, 6058, 2, 'Buchanan', NULL, '#', NULL, NULL),
(6061, 200, 6058, 3, 'Delaware', NULL, '#', NULL, NULL),
(6062, 200, 6058, 4, 'Dubuque', NULL, '#', NULL, NULL),
(6063, 200, 6058, 5, 'Tama', NULL, '#', NULL, NULL),
(6064, 200, 6058, 6, 'Benton', NULL, '#', NULL, NULL),
(6065, 200, 6058, 7, 'Linn', NULL, '[base_url]/index.php/home/view/linn/6065', NULL, 'active'),
(6066, 200, 6058, 8, 'Jones', NULL, '#', NULL, NULL),
(6067, 200, 6058, 9, 'Jackson', NULL, '#', NULL, NULL),
(6068, 200, 6058, 10, 'Poweshiek', NULL, '#', NULL, NULL),
(6069, 200, 6058, 11, 'Iowa', NULL, '#', NULL, NULL),
(6070, 200, 6058, 12, 'Johnson', NULL, '[base_url]/index.php/home/view/johnson/6070', NULL, 'active'),
(6071, 200, 6058, 13, 'Cedar', NULL, '[base_url]/index.php/home/view/cedar/6071', NULL, 'active'),
(6072, 200, 6058, 14, 'Clinton', NULL, '#', NULL, NULL),
(6073, 200, 6058, 15, 'Muscatine', NULL, '#', NULL, NULL),
(6074, 200, 6058, 16, 'Scott', NULL, '[base_url]/index.php/home/view/scott/6074', NULL, 'active'),
(6075, 200, NULL, NULL, 'South-West', NULL, '#', NULL, 'parent'),
(6076, 200, 6075, 1, 'Pottawattamie', NULL, '[base_url]/index.php/home/view/pottawattamie/6076', NULL, 'active'),
(6077, 200, 6075, 2, 'Cass', NULL, '#', NULL, NULL),
(6078, 200, 6075, 3, 'Adair', NULL, '#', NULL, NULL),
(6079, 200, 6075, 4, 'Mills', NULL, '#', NULL, NULL),
(6080, 200, 6075, 5, 'Montgomery', NULL, '#', NULL, NULL),
(6081, 200, 6075, 6, 'Adams', NULL, '#', NULL, NULL),
(6082, 200, 6075, 7, 'Fremont', NULL, '[base_url]/index.php/home/view/fremont/6082', NULL, 'active'),
(6083, 200, 6075, 8, 'Page', NULL, '#', NULL, NULL),
(6084, 200, 6075, 9, 'Taylor', NULL, '#', NULL, NULL),
(6085, 200, NULL, NULL, 'South-Central', NULL, '#', NULL, NULL),
(6086, 200, 6085, 1, 'Madison', NULL, '#', NULL, NULL),
(6087, 200, 6085, 2, 'Warren', NULL, '#', NULL, NULL),
(6088, 200, 6085, 3, 'Marion', NULL, '#', NULL, NULL),
(6089, 200, 6085, 4, 'Union', NULL, '#', NULL, NULL),
(6090, 200, 6085, 5, 'Clarke', NULL, '#', NULL, NULL),
(6091, 200, 6085, 6, 'Lucas', NULL, '#', NULL, NULL),
(6092, 200, 6085, 7, 'Monroe', NULL, '#', NULL, NULL),
(6093, 200, 6085, 8, 'Ringgokd', NULL, '#', NULL, NULL),
(6094, 200, 6085, 9, 'Decatur', NULL, '#', NULL, NULL),
(6095, 200, 6085, 10, 'Wayne', NULL, '#', NULL, NULL),
(6096, 200, 6085, 11, 'Appanoose', NULL, '#', NULL, NULL),
(6097, 200, NULL, NULL, 'South-East', NULL, '#', NULL, 'parent'),
(6098, 200, 6097, 1, 'Mahaska', NULL, '#', NULL, NULL),
(6099, 200, 6097, 2, 'Keokuk', NULL, '#', NULL, NULL),
(6100, 200, 6097, 3, 'Washington', NULL, '#', NULL, NULL),
(6101, 200, 6097, 4, 'Louisa', NULL, '#', NULL, NULL),
(6102, 200, 6097, 5, 'Wapello', NULL, '[base_url]/index.php/home/view/wapello/6102', NULL, 'active'),
(6103, 200, 6097, 6, 'Jefferson', NULL, '#', NULL, NULL),
(6104, 200, 6097, 7, 'Henry', NULL, '#', NULL, NULL),
(6105, 200, 6097, 8, 'Des Moines', NULL, '[base_url]/index.php/home/view/desmoines/6105', NULL, 'active'),
(6106, 200, 6097, 9, 'Davis', NULL, '#', NULL, NULL),
(6107, 200, 6097, 10, 'Van Buren', NULL, '#', NULL, NULL),
(6108, 200, 6097, 11, 'Lee', NULL, '[base_url]/index.php/home/view/lee/6108', NULL, 'active'),
(600200, 6002, NULL, 1, 'Lyon County', 'local home and reset', '[base_url]/index.php/home/view/lyon/6002', '_self', 'heading'),
(600800, 6008, NULL, 1, 'Clay County', 'local home and reset', '[base_url]/index.php/home/view/clay/6008', '_self', 'heading'),
(602500, 6025, NULL, 1, 'Butler County', 'local home and reset', '[base_url]/index.php/home/view/butler/6025', '_self', 'heading'),
(603300, 6033, NULL, 1, 'Clayton County', 'local home and reset', '[base_url]/index.php/home/view/clayton/6033', '_self', 'heading'),
(603600, 6036, NULL, 1, 'Ida County', 'local home and reset', '[base_url]/index.php/home/view/ida/6036', '_self', 'heading'),
(604300, 6043, NULL, 1, 'Harrison County', 'local home and reset', '[base_url]/index.php/home/view/harrison/6043', '_self', 'heading'),
(605200, 6052, NULL, 1, 'Boone County', 'local home and reset', '[base_url]/index.php/home/view/boone/6052', '_self', 'heading'),
(605300, 6053, NULL, 1, 'Story County', 'local home and reset', '[base_url]/index.php/home/view/story/6053', '_self', 'heading'),
(605600, 6056, NULL, 1, 'Polk County', 'local home and reset', '[base_url]/index.php/home/view/polk/6056', '_self', 'heading'),
(605900, 6059, NULL, 1, 'Blackhawk County', 'local home and reset', '[base_url]/index.php/home/view/blackhawk/6059', '_self', 'heading'),
(606500, 6065, NULL, 1, 'Linn County', 'local home and reset', '[base_url]/index.php/home/view/linn/6065', '_self', 'heading'),
(607000, 6070, NULL, 1, 'Johnson County', 'local home and reset', '[base_url]/index.php/home/view/johnson/6070', '_self', 'heading'),
(607100, 6071, NULL, 1, 'Cedar County', 'local home and reset', '[base_url]/index.php/home/view/cedar/6071', '_self', 'heading'),
(607400, 6074, NULL, 1, 'Scott County', 'local home and reset', '[base_url]/index.php/home/view/scott/6074', '_self', 'heading'),
(607600, 6076, NULL, 1, 'Pottawattamie County', 'local home and reset', '[base_url]/index.php/home/view/pottawattamie/6076', '_self', 'heading'),
(608200, 6082, NULL, 1, 'Fremont County', 'local home and reset', '[base_url]/index.php/home/view/fremont/6082', '_self', 'heading'),
(610200, 6102, NULL, 1, 'Wapello County', 'local home and reset', '[base_url]/index.php/home/view/wapello/6102', '_self', 'heading'),
(610500, 6105, NULL, 1, 'Des Moines County', 'local home and reset', '[base_url]/index.php/home/view/desmoines/6105', '_self', 'heading'),
(610800, 6108, NULL, 1, 'Lee County', 'local home and reset', '[base_url]/index.php/home/view/lee/6108', '_self', 'heading');

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

DROP TABLE IF EXISTS `popups`;
CREATE TABLE IF NOT EXISTS `popups` (
  `id` int(11) NOT NULL,
  `popupname` varchar(32) DEFAULT NULL,
  `setlat` double DEFAULT NULL,
  `setlng` double DEFAULT NULL,
  `maxwidth` smallint(6) DEFAULT NULL,
  `minwidth` smallint(6) DEFAULT NULL,
  `maxheight` smallint(6) DEFAULT NULL,
  `autopan` varchar(6) DEFAULT 'true',
  `keepinview` varchar(6) DEFAULT 'true',
  `closebutton` varchar(6) DEFAULT 'true',
  `offset_x` smallint(6) DEFAULT NULL,
  `offset_y` smallint(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `popups`
--

INSERT INTO `popups` (`id`, `popupname`, `setlat`, `setlng`, `maxwidth`, `minwidth`, `maxheight`, `autopan`, `keepinview`, `closebutton`, `offset_x`, `offset_y`) VALUES
(1, 'Whpopup', NULL, NULL, 562, 540, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(2, 'MidlandPopup', NULL, NULL, 450, 430, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(3, 'VetsPopup', NULL, NULL, 350, 330, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(4, 'WoodbinePopup', NULL, NULL, 350, 330, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(5, 'PersiaYorkshirePopup', NULL, NULL, 240, 222, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(6, 'LoganPopup', NULL, NULL, 320, 300, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(7, 'Cedar1898TornadoPopup', NULL, NULL, 320, 300, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(8, 'Cedar1965TornadoPopup', NULL, NULL, 320, 300, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(9, 'IdaGrove1891FloodPopup', NULL, NULL, 330, 310, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(10, 'Lyon1Popup', NULL, NULL, 330, 310, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(11, 'LyonLocustsPopup', NULL, NULL, 320, 300, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(12, 'LyonEarlyFloodsPopup', NULL, NULL, 330, 310, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(13, 'LyonFloods2014Popup', NULL, NULL, 320, 300, NULL, 'TRUE', NULL, NULL, NULL, NULL),
(20, 'Cspopup', NULL, NULL, 300, 300, NULL, 'true', 'true', 'true', NULL, NULL),
(22, 'Wfpopup', NULL, NULL, 300, 310, NULL, 'true', 'true', 'true', NULL, NULL),
(23, 'Bfpopup', NULL, NULL, 250, 380, NULL, 'true', 'true', 'true', NULL, NULL),
(24, 'Sfpopup', NULL, NULL, 250, 395, NULL, 'true', 'true', 'true', NULL, NULL),
(25, 'SFpopup', NULL, NULL, 300, 194, NULL, 'true', 'true', 'true', NULL, NULL),
(26, 'Wafpopup', NULL, NULL, 300, 215, NULL, 'true', 'true', 'true', NULL, NULL),
(27, 'WaFpopup', NULL, NULL, 300, 235, NULL, 'true', 'true', 'true', NULL, NULL),
(28, 'Stfpopup', NULL, NULL, 300, 394, NULL, 'true', 'true', 'true', NULL, NULL),
(29, 'StFpopup', NULL, NULL, 300, 220, NULL, 'true', 'true', 'true', NULL, NULL),
(30, 'StTpopup', NULL, NULL, 300, 184, NULL, 'true', 'true', 'true', NULL, NULL),
(32, 'Pfpopup', NULL, NULL, 350, 278, NULL, 'true', 'true', 'true', NULL, NULL),
(33, 'PFpopup', NULL, NULL, 350, 250, NULL, 'true', 'true', 'true', NULL, NULL),
(34, 'pFpopup', NULL, NULL, 350, 262, NULL, 'true', 'true', 'true', NULL, NULL),
(38, NULL, NULL, NULL, NULL, NULL, NULL, 'true', 'true', 'true', NULL, NULL),
(39, 'BFpopup', NULL, NULL, 300, 210, NULL, 'true', 'true', 'true', NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, 'true', 'true', 'true', NULL, NULL),
(41, 'bFpopup', NULL, NULL, 300, 193, NULL, 'true', 'true', 'true', NULL, NULL),
(42, 'Bfpopup', NULL, NULL, 300, 298, NULL, 'true', 'true', 'true', NULL, NULL),
(44, 'Cfpopup', NULL, NULL, 300, 219, NULL, 'true', 'true', 'true', NULL, NULL),
(45, 'Cfpopup', NULL, NULL, 300, 356, NULL, 'true', 'true', 'true', NULL, NULL),
(46, 'IF1962popup', NULL, NULL, 300, 258, NULL, 'true', 'true', 'true', NULL, NULL),
(47, 'FB1850popup', NULL, NULL, 300, 218, NULL, 'true', 'true', 'true', NULL, NULL),
(48, 'DM1965popup', NULL, NULL, 500, 412, NULL, 'true', 'true', 'true', NULL, NULL),
(49, 'JF2008popup', NULL, NULL, 300, 472, NULL, 'true', 'true', 'true', NULL, NULL),
(50, 'JF1993popup', NULL, NULL, 500, 412, NULL, 'true', 'true', 'true', NULL, NULL),
(52, 'DM1965popup', NULL, NULL, 300, 217, NULL, 'true', 'true', 'true', NULL, NULL),
(55, 'DM2008popup', NULL, NULL, 300, 220, NULL, 'true', 'true', 'true', NULL, NULL),
(57, 'DM2008popup', NULL, NULL, 300, 200, NULL, 'true', 'true', 'true', NULL, NULL),
(58, NULL, NULL, NULL, NULL, NULL, NULL, 'true', 'true', 'true', NULL, NULL),
(59, 'Bfpopup', NULL, NULL, 500, 758, NULL, 'true', 'true', 'true', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `popups_content`
--

DROP TABLE IF EXISTS `popups_content`;
CREATE TABLE IF NOT EXISTS `popups_content` (
  `id` int(11) NOT NULL,
  `f_popups_id` int(11) NOT NULL,
  `popupname` varchar(64) DEFAULT '',
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `body` text,
  `imageurl` varchar(128) DEFAULT NULL,
  `buttontxt` varchar(32) DEFAULT NULL,
  `buttonurl` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `popups_content`
--

INSERT INTO `popups_content` (`id`, `f_popups_id`, `popupname`, `title`, `subtitle`, `body`, `imageurl`, `buttontxt`, `buttonurl`) VALUES
(1, 1, 'Whpopup', 'Flood of 1929', 'Williams and Hunting Company', NULL, 'linn/popups/WilliamsAndHuntingWoodcut.jpg', 'Go To Story', 'home/story/linn/WH'),
(2, 2, 'MidlandPopup', 'Flood of 2008', 'Iowa Midland Supply Inc.', NULL, 'linn/popups/MidlandFront.jpg', 'Go To Story', 'home/story/linn/Midland'),
(3, 3, 'VetsPopup', 'Floods of 1929, 2008', 'Veterans Memorial on  Mays Island', NULL, 'linn/popups/VetsPrint.jpg', 'Go To Story', 'home/story/linn/Vets'),
(4, 4, 'WoodbinePopup', 'Easter Tornado of 1913', 'Woodbine, Iowa', NULL, 'harrison/popups/WoodbineTwinerPopup.jpg', 'Go To Story', 'home/story/harrison/Woodbine1913'),
(5, 5, 'PersiaYorkshirePopup', '1925 Tornadoes', 'Persia and Yorkshire, Iowa', NULL, 'harrison/popups/PersiaYorkshirePopup.jpg', NULL, 'home/story/harrison/PersiaYorkshire1925'),
(6, 6, 'LoganPopup', '1999 Tornadoes', 'Logan, Iowa', NULL, 'harrison/popups/LoganPopup.jpg', 'Go To Story', 'home/story/harrison/Logan1999'),
(7, 7, 'Cedar1898TornadoPopup', '1898 Tornado', 'Western Cedar County, Iowa', NULL, 'cedar/popups/1898TornadoPopup.jpg', 'Go To Story', 'home/story/cedar/1898Tornado'),
(8, 8, 'Cedar1965TornadoPopup', '1965 Tornado', 'Cedar County Palm Sunday Tornado', NULL, 'cedar/popups/1965TornadoPopup.jpg', 'Go To Story', 'home/story/cedar/1965Tornado'),
(9, 9, 'IdaGrove1891FloodPopup', 'Flood of 1891', 'Ida Grove, Iowa', NULL, 'ida/popups/IdaGrovePopup.jpg', 'Go To Story', 'home/story/ida/1891Flood'),
(10, 10, 'Lyon1Popup', 'People On the Move', 'Blood Run National Historic Site, Larchfield, Iowa', NULL, 'lyon/popups/Lyon1Popup.png', NULL, 'home/story/lyon/PeopleOnTheMove'),
(11, 11, 'LyonLocustsPopup', 'Grasshoppers and the Weather', 'Lyon County, Iowa', NULL, 'lyon/popups/LocustPopup.jpg', 'Go To Story', 'home/story/lyon/Grasshoppers'),
(12, 12, 'LyonEarlyFloodsPopup', 'Early Floods', 'Lyon County, Iowa', NULL, 'lyon/popups/EarlyFloodsPopup.jpg', 'Go To Story', 'home/story/lyon/EarlyFloods'),
(13, 13, 'LyonFloods2014Popup', 'Flood of 2014', 'Rock Rapids, Lyon County, Iowa', NULL, 'lyon/popups/LyonFlood2014Popup.jpg', 'Go To Story', 'home/story/lyon/2014Flood'),
(20, 20, 'Cspopup', 'Citizen Scientists', 'Black Hawk County, Iowa', NULL, 'blackhawk/popups/CitizensSciencePopup1.png', 'Go To Story', 'home/story/blackhawk/CitizenScientists'),
(21, 0, '', '', '', NULL, '', NULL, ''),
(22, 22, 'Wfpopup', 'Waterloo Flood of 2008', 'Waterloo, Black Hawk County, Iowa', NULL, 'blackhawk/popups/WaterlooFlood2008Popup1.jpg', 'Go To Story', 'home/story/blackhawk/waterloo2008'),
(23, 23, 'Bfpopup', 'Flood of 1881', 'Boone County, Iowa', NULL, 'boone/popups/popup-Edited1.jpg', 'Go To Story', 'home/story/boone/BooneFloodOf1881'),
(24, 24, 'Sfpopup', 'Flood of 1965', 'Scott County, Iowa', NULL, 'scott/popups/Scott1965FloodPopup_Edited1.jpg', 'Go To Story', 'home/story/scott/ScottFloodOf1965'),
(25, 25, 'SFpopup', 'Flood of 1993', 'Davenport, Scott County, Iowa', NULL, 'scott/popups/ScottFlood1993Popup1.jpg', 'Go To Story', 'home/story/scott/ScottFloodOf1993'),
(26, 26, 'Wafpopup', 'Flood of 1947', 'Ottumwa, Wapello County, Iowa', NULL, 'wapello/popups/WapelloFlood1947Popup1.jpg', 'Go To Story', 'home/story/wapello/WapelloFloodOf1947'),
(27, 27, 'WaFpopup', 'Flood of 1993', 'Wapello County, Iowa', NULL, 'wapello/popups/WapelloFlood1993Popup1.jpg', 'Go To Story', 'home/story/wapello/WapelloFLoodOf1993'),
(28, 28, 'Stfpopup', 'Flood of 1944', 'Ames, Story County, Iowa', NULL, 'story/popups/StoryFlood1944Popup3.jpg', 'Go To Story', 'home/story/story/Flood1944'),
(29, 29, 'StFpopup', 'Flood of 2010', 'Ames, Story County, Iowa', NULL, 'story/popups/StoryFlood2010Popup2.png', 'Go To Story', 'home/story/story/Flood2010'),
(30, 30, 'StTpopup', 'Maxwell Tornado of 1944', 'Maxwell, Story County, Iowa', NULL, 'story/popups/Maxwellpopup1.jpg', 'Go To Story', 'home/story/story/Tornado1944'),
(32, 32, 'Pfpopup', 'Flood of 1881', 'Pottawattamie County, Iowa', NULL, 'pottawattamie/popups/Flood1881Popup.jpg', 'Go To Story', 'home/story/pottawattamie/FloodOf1881'),
(33, 33, 'PFpopup', 'Flood of 1952', 'Pottawattamie County, Iowa', NULL, 'pottawattamie/popups/Flood1952Popup.jpg', 'Go To Story', 'home/story/pottawattamie/FloodOf1952'),
(34, 34, 'pFpopup', 'Flood of 2011', 'Pottawattamie County, Iowa', NULL, 'pottawattamie/popups/Flood2011Popup.jpg', 'Go To Story', 'home/story/pottawattamie/FloodOf2011'),
(38, 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 39, 'BFpopup', 'Tornado of 1918', 'Boone County, Iowa', NULL, 'boone/popups/BethalPopup1.jpg', 'Go To Story', 'home/story/boone/TornadoOf1918'),
(40, 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 41, 'bFpopup', 'Tornado of 1976', 'Jordan, Boone County, Iowa', NULL, 'boone/popups/Boone1976Popup.jpg', 'Go To Story', 'home/story/boone/TornadoOf1976'),
(42, 42, 'Bfpopup', 'Tornado of 2008', 'Parkersburg, Butler County, Iowa', NULL, 'butler/popups/ButlerPopup.jpg', 'Go To Story', 'home/story/butler/TornadoOf2008'),
(44, 44, 'Cfpopup', 'Flood of 1881', 'Spencer, Clay County, Iowa', NULL, 'clay/popups/ClayPopup.jpg', 'Go To Story', 'home/story/clay/FloodOf1881'),
(45, 45, 'Cfpopup', 'Flood of 1965', 'Clayton County, Iowa', NULL, 'clayton/popups/ClaytonFloodof1965Popup.jpg', 'Go To Story', 'home/story/clayton/FloodOf1965'),
(46, 46, 'IF1962popup', 'Flood of 1962', 'Ida County, Iowa', NULL, 'ida/popups/If1962popup.jpg', 'Go To Story', 'home/story/ida/1962Flood'),
(47, 47, 'FB1850popup', '1850s Blizzard', 'Fremont County, Iowa', NULL, 'fremont/popups/UGR1850Popup.jpg', 'Go To Story', 'home/story/fremont/Blizzard1850s'),
(48, 48, 'DM1965popup', 'Sandbagging Businesses in 1993', 'Johnson County, Iowa', NULL, 'johnson/popups/JF1993popup.jpg', 'Go To Story', 'home/story/johnson/1993Sandbagging'),
(49, 49, 'JF2008popup', 'The University of the Iowa River', 'The University of Iowa, Johnson County, Iowa', NULL, 'johnson/popups/JF2008popup.jpg', 'Go To Story', 'home/story/johnson/2008Uiowa'),
(50, 50, 'JF1993popup', 'Sandbagging Businesses in 1993', 'Johnson County, Iowa', NULL, 'johnson/popups/JF1993popup.jpg', 'Go To Story', 'home/story/johnson/1993Sandbagging'),
(52, 52, 'DM1965popup', 'Burlington Flood of 1965', 'Burlington, Des Moines County, Iowa', NULL, 'desmoines/popups/DM1965Icon.jpg', 'Go To Story', 'home/story/desmoines/BurlingtonFlood1965'),
(55, 55, 'DM2008popup', 'Des Moines County Flood of 2008', 'Des Moines County, Iowa', NULL, 'desmoines/popups/DM2008Icon.jpg', 'Go To Story', 'home/story/desmoines/DesMoinesCountyFlood2008'),
(57, 57, 'DM2008popup', 'Des Moines County Flood of 2008', 'Des Moines County, Iowa', NULL, 'desmoines/popups/DM2008Icon.jpg', 'Go To Story', 'home/story/desmoines/DesMoinesCountyFlood2008'),
(58, 0, '', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 59, 'Bfpopup', 'Flood of 1881', 'Boone County, Iowa', NULL, 'boone/popups/Boone1976Popup.jpg ', 'Go To Story', 'home/story/boone/BooneFloodOf1881');

-- --------------------------------------------------------

--
-- Table structure for table `popups_icons`
--

DROP TABLE IF EXISTS `popups_icons`;
CREATE TABLE IF NOT EXISTS `popups_icons` (
  `id` int(11) NOT NULL,
  `iconname` varchar(32) DEFAULT NULL,
  `iconurl` varchar(255) DEFAULT NULL,
  `iconsize_x` smallint(6) DEFAULT NULL,
  `iconsize_y` smallint(6) DEFAULT NULL,
  `iconanchor_x` smallint(6) DEFAULT NULL,
  `iconanchor_y` smallint(6) DEFAULT NULL,
  `popupanchor_x` smallint(6) DEFAULT NULL,
  `popupanchor_y` smallint(6) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `popups_icons`
--

INSERT INTO `popups_icons` (`id`, `iconname`, `iconurl`, `iconsize_x`, `iconsize_y`, `iconanchor_x`, `iconanchor_y`, `popupanchor_x`, `popupanchor_y`, `description`) VALUES
(1, 'WHTextLogo', 'linn/popups/WHLogo-sm.jpg', 444, 48, NULL, NULL, NULL, NULL, 'Williams and Hunting Text Logo'),
(2, 'Midland', 'linn/popups/MidlandIcon.png', 110, 85, NULL, NULL, NULL, NULL, 'Midland Sign'),
(3, 'VetsIcon', 'linn/popups/VetsIcon.png', 100, 114, NULL, NULL, NULL, NULL, 'Veterans Memorial Building, 1927 Sign'),
(4, 'WoodbineIcon', 'harrison/popups/WoodbineWayMarkerIcon.png', 100, 53, 50, 53, NULL, NULL, 'Woodbine Time Capsule Marker'),
(5, 'PersiaYorkshireIcon', 'harrison/popups/PersiaYorkshireIcon.png', 120, 114, NULL, NULL, NULL, NULL, 'Man Splitting Wood'),
(6, 'LoganIcon', 'harrison/popups/LoganIcon.png', 120, 118, NULL, NULL, NULL, NULL, 'Logan Iowa Logo'),
(7, 'Cedar1898TornadoIcon', 'none', NULL, NULL, NULL, NULL, NULL, NULL, 'Tornado Path'),
(8, 'Cedar1965TornadoIcon', 'none', 0, 0, NULL, NULL, NULL, NULL, 'Tornado Path'),
(9, 'IdaGroveIcon', 'ida/popups/IdaGroveIcon.jpg', 150, 126, NULL, NULL, NULL, NULL, 'Ida Grove Scene'),
(10, 'LyonCountySeal', 'lyon/popups/Lyon1Marker.png', 120, 117, NULL, NULL, NULL, NULL, 'Blood Run Artifact'),
(11, 'Locust', 'lyon/popups/LocustMarker.png', 150, 70, NULL, NULL, NULL, NULL, 'Locust from Wikipedia'),
(12, 'BIsonHunter', 'lyon/popups/EarlyFloodsMarker.jpg', 120, 70, NULL, NULL, NULL, NULL, 'English Bison Hunter'),
(13, 'WaterOverRoad', 'lyon/popups/LyonFlood2014Marker.jpg', 150, 99, NULL, NULL, NULL, NULL, 'Road Sign, Water over Road'),
(21, 'CSDiaryIcon', 'blackhawk/popups/CSDiaryIcon.png', 95, 88, NULL, NULL, NULL, NULL, 'Diary Image'),
(22, 'WF2008Icon', 'blackhawk/popups/WF2008Icon.png', 130, 127, NULL, NULL, NULL, NULL, 'Waterloo Seal'),
(23, 'BF1881Icon', 'boone/popups/BCFlood1881Icon.jpg', 110, 143, NULL, NULL, NULL, NULL, 'Bridge Drawing'),
(24, 'SF1965Icon', 'scott/popups/SF1965Icon1.png', 125, 101, NULL, NULL, NULL, NULL, 'Davenport Map'),
(25, 'SF1993Icon', 'scott/popups/Scott1993FloodIcon.png', 90, 90, NULL, NULL, NULL, NULL, 'Davenport Logo'),
(26, 'WF1947Icon', 'wapello/popups/WapelloFlood1947Icon.png', 150, 113, NULL, NULL, NULL, NULL, 'Duck'),
(27, 'WF1993Icon', 'wapello/popups/WapelloFlood1993Icon.png', 110, 74, NULL, NULL, NULL, NULL, 'Wheat and Corn'),
(28, 'SF1944Icon', 'story/Flood1944/AmesIcon_I.png', 100, 97, NULL, NULL, NULL, NULL, 'Ol'' Man River'),
(29, 'SF2010Icon', 'story/popups/StoryFlood2010Icon.png', 125, 125, NULL, NULL, NULL, NULL, 'Happy Joes'),
(30, 'ST1944Icon', 'story/popups/MaxwellIcon.png', 90, 150, NULL, NULL, NULL, NULL, 'Museum Maxwell'),
(32, 'Pf1881Icon', 'pottawattamie/popups/Flood1881Icon.png', 110, 139, NULL, NULL, NULL, NULL, 'Flood Painting'),
(33, 'PF1952Icon', 'pottawattamie/popups/Flood1952Icon.png', 145, 114, NULL, NULL, NULL, NULL, 'Aerial Flood '),
(34, 'pF2011Icon', 'pottawattamie/popups/Flood2011Icon.jpg', 110, 110, NULL, NULL, NULL, NULL, 'Stop Light'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'BF1918Icon', 'boone/popups/BethelIcon.png', 252, 53, NULL, NULL, NULL, NULL, 'Bethel Church Name'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'BF1976Icon', 'boone/popups/BooneIcon.jpg', 207, 100, NULL, NULL, NULL, NULL, 'Boone Sign'),
(42, 'BF2008Icon', 'butler/popups/ButlerIcon.jpg', 110, 99, NULL, NULL, NULL, NULL, 'Storm Image'),
(44, 'CF1881Icon', 'clay/popups/ClayIcon.png', 115, 69, NULL, NULL, NULL, NULL, 'Spencer Iowa Logo'),
(45, 'CF1965Icon', 'clayton/popups/Clayton1965Icon.jpg', 110, 139, NULL, NULL, NULL, NULL, 'Almanac'),
(46, 'IF1962Icon', 'ida/popups/IF1962Icon.png', 100, 126, NULL, NULL, NULL, NULL, 'Ida County Atlas'),
(47, 'FB1850Icon', 'fremont/popups/FB1850Icon.png', 115, 100, NULL, NULL, NULL, NULL, 'Underground Railroad'),
(48, 'DM1965Icon', 'johnson/popups/JF1993Icon.png', 100, 96, NULL, NULL, NULL, NULL, 'Sandbag'),
(49, 'JF2008Icon', 'johnson/popups/JF2008Icon.png', 110, 71, NULL, NULL, NULL, NULL, 'Hawkeye Logo'),
(50, 'JF1993Icon', 'johnson/popups/JF1993Icon.png', 110, 96, NULL, NULL, NULL, NULL, 'Sandbag'),
(52, 'DM1965Icon', 'desmoines/popups/DM1965Icon.png', 200, 80, NULL, NULL, NULL, NULL, ''),
(55, 'DM2008Icon', 'desmoines/popups/DM2008Icon.png', 115, 146, NULL, NULL, NULL, NULL, ''),
(57, 'DM2008Icon', 'desmoines/popups/DM2008Icon.png', 115, 146, NULL, NULL, NULL, NULL, ''),
(58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'BF1881Icon', 'boone/popups/BCFlood1881Icon.jpg ', 130, 169, NULL, NULL, NULL, NULL, 'Bridge Drawing');

-- --------------------------------------------------------

--
-- Table structure for table `popups_markers`
--

DROP TABLE IF EXISTS `popups_markers`;
CREATE TABLE IF NOT EXISTS `popups_markers` (
  `id` int(11) NOT NULL,
  `markername` varchar(64) DEFAULT NULL,
  `layergroup` varchar(64) DEFAULT NULL,
  `markertype` varchar(32) DEFAULT NULL,
  `coords` varchar(800) DEFAULT NULL,
  `iconname` varchar(64) DEFAULT NULL,
  `clickable` varchar(6) DEFAULT NULL,
  `draggable` varchar(6) DEFAULT NULL,
  `keyboard` varchar(6) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `zindexoffset` smallint(6) DEFAULT NULL,
  `opacity` double DEFAULT NULL,
  `riseonhover` varchar(6) DEFAULT NULL,
  `riseoffset` smallint(6) DEFAULT NULL,
  `location` point DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `popups_markers`
--

INSERT INTO `popups_markers` (`id`, `markername`, `layergroup`, `markertype`, `coords`, `iconname`, `clickable`, `draggable`, `keyboard`, `title`, `zindexoffset`, `opacity`, `riseonhover`, `riseoffset`, `location`) VALUES
(1, 'Whmarker', '', 'point', '41.97,-91.668848991394', 'WHTextLogo', NULL, NULL, NULL, 'Williams And Hunting Co', NULL, 1, NULL, NULL, NULL),
(2, 'MidlandMarker', '', 'point', '41.974256,-91.662294', 'Midland', NULL, NULL, NULL, 'Iowa Midland Supply Inc.', NULL, 1, NULL, NULL, NULL),
(3, 'VetsMarker', '', 'point', '41.976720578,-91.6710591316', 'VetsIcon', NULL, NULL, NULL, 'Veterans Memorial Building', NULL, 1, NULL, NULL, NULL),
(4, 'WoodbineMarker', NULL, 'point', '41.7387846530874,-95.7070541381835', 'WoodbineIcon', NULL, NULL, NULL, 'Woodbine Twiner Masthead', NULL, 1, NULL, NULL, NULL),
(5, 'PersiaYorkshireMarker', '', 'point', '41.5494945961141,-95.5803680419921', 'PersiaYorkshireIcon', NULL, NULL, NULL, 'Persia and Yorkshire', NULL, 1, NULL, NULL, NULL),
(6, 'LoganMarker', NULL, 'point', '41.607484919548,-95.7818126678466', 'LoganIcon', NULL, NULL, NULL, 'Logan', NULL, 1, NULL, NULL, NULL),
(7, 'Cedar1898TornadoMarker', 'tornadoes', 'line', '[41.87309067492986,-91.14876766530863],[41.88369136394671,-91.13291716852328],[41.88785019548606,-91.11752600613018],[41.88903236066313,-91.10671025205070],[41.88948587592965,-91.08515680241602],[41.89678752024777,-91.06068446824604],[41.89565506246908,-91.04843836373004],[41.89663294336921,-91.04062153405235],[41.90372055060612,-91.03070368335445],[41.91476038229689,-90.95837572027072],[41.91490897314944,-90.95459910639092],[41.91673554536686,-90.94018289385917],[41.91921952947151,-90.93440526480154],[41.92073632245679,-90.92135184874788]', 'Cedar1898TornadoIcon', NULL, NULL, NULL, 'Cedar 1898 Tornado', NULL, 1, NULL, NULL, NULL),
(8, 'Cedar1965TornadoMarker', 'tornadoes', 'line', '[41.80016907075043,-91.06276441021384],[41.81467142960757,-91.03983257089766],[41.84914390799869,-90.98595969485159],[41.8527369101403,-90.97999397314413],[41.86953567991137,-90.95711181833796],[41.87487880563377,-90.95253001407983],[41.88364914709426,-90.94077440786104],[41.88967599596352,-90.93683471975039],[41.89986933536214,-90.92329835580601],[41.9133585899547,-90.90855553608368]', 'Cedar1965TornadoIcon', NULL, NULL, NULL, 'Cedar 1965 Tornado', NULL, 1, NULL, NULL, NULL),
(9, 'Ida1891FloodMarker', '', 'point', '42.35930500076174, -95.47428131103516', 'IdaGroveIcon', NULL, NULL, NULL, 'Ida Grove', NULL, 1, NULL, NULL, NULL),
(10, 'Lyon1Marker', '', 'point', '43.46076918056921, -96.58111954573542', 'LyonCountySeal', NULL, NULL, NULL, 'Blood River National Historic Landmark', NULL, 1, NULL, NULL, NULL),
(11, 'LocustMarker', NULL, 'point', '43.3469, -96.11588289029896', 'Locust', NULL, NULL, NULL, 'Rocky Mountain locust, Melanoplus spretus', NULL, 1, NULL, NULL, NULL),
(12, 'EarlyFloodsMarker', NULL, 'point', '43.272081037026076, -96.25221634749323\r\n', 'BIsonHunter', NULL, NULL, NULL, 'English Bison Hunter', NULL, 1, NULL, NULL, NULL),
(13, 'LyonFlood2014Marker', NULL, 'point', '43.4417,- 96.1686', 'WaterOverRoad', NULL, NULL, NULL, 'Water Over Road', NULL, 1, NULL, NULL, NULL),
(22, 'Csmarker', '', 'point', '42.4478, -92.3814', 'CSDiaryIcon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Wfmarker', '', 'point', '42.4928, -92.3426', 'WF2008Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Bfmarker', '', 'point', '42.0597, -93.8802', 'BF1881Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Sfmarker', '', 'point', '41.5236, -90.5776', 'SF1965Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'SFmarker ', '', 'point', '41.6393, -90.6394', 'SF1993Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Wafmarker', '', 'point', '41.0160,-92.4083', 'WF1947Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'WaFmarker ', '', 'point', '41.1149, -92.3814', 'WF1993Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Stfmarker', '', 'point', '42.0308,-93.6319', 'SF1944Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'StFmarker', '', 'point', '41.9546,-93.4799', 'SF2010Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'StTmarker', '', 'point', '41.95,-93.3997', 'ST1944Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Pfmarker', '', 'point', '41.3912,-95.4778', 'Pf1881Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'PFmarker', '', 'point', '41.389,-95.8', 'PF1952Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'FloodOf2011', '', 'point', '41.15,-95.5', 'pF2011Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'BFmarker', '', 'point', '42.01, -94.0', 'BF1918Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'bFmarker', '', 'point', '42.0, -93.75', 'BF1976Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Bfmarker', '', 'point', '42.7, -92.69', 'BF2008Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Cfmarker', '', 'point', '43.1368,-95.1432', 'CF1881Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'CFmarker', '', 'point', '42.7785, -91.2891', 'CF1965Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'IF1962Flood', '', 'point', '42.3419,-95.4778', 'IF1962Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Fbmarker', '', 'point', '40.75, -95.6714', 'FB1850Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Dfmarker', '', 'point', '40.8077, -91.1129', 'DM1965Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'JFmarker', '', 'point', '41.6627, -91.5549', 'JF2008Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Jfmarker', '', 'point', '41.6, -91.48', 'JF1993Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Dfmarker', '', 'point', '40.9, -91.1129', 'DM1965Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'DFmarker', '', 'point', '41.0081, -91.1640', 'DM2008Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'DFmarker', '', 'point', '41.0081, -91.1640', 'DM2008Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Bfmarker', '', 'point', '42.0597, -93.8802', 'BF1881Icon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `popups_views`
--

DROP TABLE IF EXISTS `popups_views`;
CREATE TABLE IF NOT EXISTS `popups_views` (
  `id` int(11) NOT NULL,
  `viewname` varchar(64) DEFAULT NULL,
  `f_marker_id` int(11) NOT NULL,
  `f_icon_id` int(11) NOT NULL,
  `f_popup_id` int(11) NOT NULL,
  `f_content_id` int(11) NOT NULL,
  `offset_x` smallint(6) DEFAULT NULL,
  `offset_y` smallint(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `popups_views`
--

INSERT INTO `popups_views` (`id`, `viewname`, `f_marker_id`, `f_icon_id`, `f_popup_id`, `f_content_id`, `offset_x`, `offset_y`) VALUES
(1, 'linn', 1, 1, 1, 1, -20, 15),
(2, 'linn', 2, 2, 2, 2, 20, 20),
(3, 'linn', 3, 3, 3, 3, 175, 225),
(4, 'harrison', 4, 4, 4, 4, NULL, NULL),
(5, 'harrison', 5, 5, 5, 5, NULL, NULL),
(6, 'harrison', 6, 6, 6, 6, NULL, NULL),
(7, 'cedar', 7, 7, 7, 7, NULL, NULL),
(8, 'cedar', 8, 8, 8, 8, NULL, NULL),
(9, 'ida', 9, 9, 9, 9, NULL, NULL),
(10, 'lyon', 10, 10, 10, 10, NULL, NULL),
(11, 'lyon', 11, 11, 11, 11, NULL, NULL),
(12, 'lyon', 12, 12, 12, 12, NULL, NULL),
(13, 'lyon', 13, 13, 13, 13, NULL, NULL),
(15, 'linn', 17, 16, 15, 15, NULL, NULL),
(20, 'blackhawk', 22, 21, 20, 20, NULL, NULL),
(21, 'blackhawk', 23, 22, 22, 22, NULL, NULL),
(22, 'boone', 24, 23, 23, 23, NULL, NULL),
(23, 'scott', 25, 24, 24, 24, NULL, NULL),
(24, 'scott', 26, 25, 25, 25, NULL, NULL),
(25, 'wapello', 27, 26, 26, 26, NULL, NULL),
(26, 'wapello', 28, 27, 27, 27, NULL, NULL),
(27, 'story', 29, 28, 28, 28, NULL, NULL),
(28, 'story', 30, 29, 29, 29, NULL, NULL),
(29, 'story', 31, 30, 30, 30, NULL, NULL),
(31, 'pottawattamie', 33, 32, 32, 32, NULL, NULL),
(32, 'pottawattamie', 34, 33, 33, 33, NULL, NULL),
(33, 'pottawattamie', 35, 34, 34, 34, NULL, NULL),
(37, NULL, 39, 38, 38, 38, NULL, NULL),
(38, 'boone', 40, 39, 39, 39, NULL, NULL),
(39, NULL, 41, 40, 40, 40, NULL, NULL),
(40, 'boone', 42, 41, 41, 41, NULL, NULL),
(41, 'butler', 43, 42, 42, 42, NULL, NULL),
(43, 'clay', 45, 44, 44, 44, NULL, NULL),
(44, 'clayton', 46, 45, 45, 45, NULL, NULL),
(45, 'ida', 47, 46, 46, 46, NULL, NULL),
(46, 'fremont', 48, 47, 47, 47, NULL, NULL),
(47, 'des moines', 49, 48, 48, 48, NULL, NULL),
(48, 'johnson', 50, 49, 49, 49, NULL, NULL),
(49, 'johnson', 51, 50, 50, 50, NULL, NULL),
(51, 'desmoines', 53, 52, 52, 52, NULL, NULL),
(54, 'des moines', 56, 55, 55, 55, NULL, NULL),
(56, 'desmoines', 58, 57, 57, 57, NULL, NULL),
(57, NULL, 59, 58, 58, 58, NULL, NULL),
(58, 'boone', 60, 59, 59, 59, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
CREATE TABLE IF NOT EXISTS `stories` (
  `id` bigint(20) NOT NULL,
  `f_county_id` bigint(20) NOT NULL,
  `story_name` varchar(64) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `byline` varchar(255) NOT NULL,
  `story_content` longtext NOT NULL,
  `status` enum('Draft','Published') NOT NULL DEFAULT 'Draft',
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `f_county_id`, `story_name`, `title`, `location`, `byline`, `story_content`, `status`, `last_modified`) VALUES
(1, 60, 'PeopleOnTheMove', 'People On the Move', 'Lyon County, Iowa', 'Barbara Eckstein', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">Before Lyon County was formed independently (1872), even before its name was Buncombe County and before it was attached to Woodbury County (1851), the territory it occupies was an important gathering place for many different groups of people.</span> At a site along Big Sioux River and Blood Run Creek, now remembered by the Blood Run National Historic Landmark, many native groups used the site as an intertribal and ceremonial center. Starting as early as 900 C.E. and continuing until 1720, the Oneota, then the Ioway-Oto and the Omaha-Ponca built settlements there. The Cheyenne and Arikara, then the Dakota peoples were all visitors. Archeologists describe the site as &ldquo;intensively occupied&rdquo; from 1500 C.E. until the early 18th century when Dakota peoples probably drove out the Ioway, Oto, and the Omaha-Ponca.</p>\r\n<p>Blood Run was such an important crossroads for such a long time, that University of Wisconsin archaeologists and geographers began, in the 1960s, to search there for evidence of climate events from earlier centuries. In the 1960s and 1980s they sought evidence to test hypotheses about climatic events in Late Prehistoric and Early Contact (with Europeans) periods in the Midwest. &ldquo;It was soil and charcoal samples in the undisturbed village deposits that were sought for climatic research investigations.&rdquo; Because the burial mound chosen was built over a site of occupation, they hoped to find undisturbed storage pits with evidence of climate conditions. In the end, although they found other valuable artifacts, they did not find the undisturbed climate evidence that they needed&mdash;the railroad, gravel mining, helpful volunteers all had moved the kind of soil and charcoal specimens that might say something about climate.</p>\r\n<p>&nbsp;</p>\r\n<p><img src="../../resources/image/lyon/PeopleOnTheMove/lyon-nhl-bloodrun.jpg" alt="" width="500" height="334" />&nbsp;</p>\r\n<p class="caption">Blood Run Historic Landmark</p>\r\n<p>&nbsp;</p>\r\n<img src="../../resources/image/lyon/PeopleOnTheMove/BloodRunUIA_MNH.jpg" alt="Blood Run Historic Landmark" width="500" height="368" />\r\n<p class="caption">Photo Courtesy The University of Iowa Museum of Natural History</p>\r\n<p class="caption">&nbsp;</p>\r\n<p>Nearly a century after the dedication of the courthouse, the 2010 census counted <span style="white-space: nowrap;">11,581</span> residents in Lyon County. Maybe one resident, Raymond E. Winter, speaks for others when, in his 21st-century memoir, Memories of a Country Boy, he laments the loss of his Lyon County family farm. &ldquo;If you took a plane and flew over the Midwest countryside viewing mile after mile of farmland, still all producing crops, year after year, you will see something missing if you look closely. Almost without fail you will find four groves of trees on every section of farmland or at least some indication of a grove having been there at some time. But there are no buildings. They have all been bull-dozed away to make room for more &lsquo;progress.&rsquo; On every one of those places, a family lived, worked and played. It was a wonderful idea. What a shame that this great country couldn&rsquo;t find a way to preserve the family farm, which was the backbone of the nation. Bigger is not always better, but it seems we never learn.</p>\r\n<p>&ldquo;Driving around the countryside several months ago, I found tears welling up in my eyes as I found that my boyhood neighborhood isn&rsquo;t what I remember. The farmhouse where I was born and spent the first fourteen years of my life is still there, along with most of the same out buildings. But as I drove south a half mile, the Weerd Boomgaarden place is leveled and as I drove by the spot, I could almost hear the family playing that sweet mandolin and violin music for which they were noted. A half mile south of there where our cousins, the Havilands lived, is nothing but crop land&hellip;.And so it goes, mile after mile in Mid-America today.&rdquo;</p>\r\n</div>\r\n<!-- right column text -->\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer"><img src="../../resources/image/lyon/PeopleOnTheMove/Delisle.jpg" alt="Guillaume Delisle 1702 Map" width="500" height="445" /></div>\r\n<p class="caption">Guillaume Delisle 1702 Map</p>\r\n<p>An 1851 Treaty with the Sioux officially ceded the land that is now Lyon County although the United States later fought a war against the Dakotas in 1862 and the Dakota peoples continued to hunt, seasonally, in the Lyon County territory until 1869. 1851 was an especially challenging year for a new county of Iowa to attract settlers. In the spring and summer of that year vast rains occurred across Iowa. They were followed by heat. In Early History of Lyon County, George Monlux reports that that summer&rsquo;s severe weather across Iowa destroyed crops, produced famine, and was accompanied by the presence of cholera.</p>\r\n<p>Although Monlux moved to Lyon County himself in 1879, he explains that earlier that decade settlers, trappers, and soldiers had their doubts about the fertility of the Lyon County land. If flooding and its effects scared away Iowa settlers in 1851, it was drought and prairie fire that made people skeptical about Lyon County in 1870-71. The Rock River was dry on sandbars for months; the Little Rock&rsquo;s channel was dry for miles. Early settlers and trappers speculated that the territory was too near what they understood to be the Great American Desert. They noted the presence of buffalo grass and had learned that where there is buffalo grass, there is not enough rain for grain crops. Some, Monlux writes, had been through Nebraska, the Dakotas, and Kansas and knew them to be buffalo grass country, &ldquo;and they dreaded the drought and the scorching hot winds of that region.&rdquo;</p>\r\n<p>Nevertheless, an earlier Lyon County historian, S.C. Hyde, wrote in his Historical Sketch from 1873 that there was enough room in Lyon County for 1500 families, each with 160 acres (at $5/acre). And settlers did come, including Monlux. There were dry years, as predicted, but the grass in the sloughs, higher than a man&rsquo;s head, and the blue joint and pea-vine hay in the creek and river bottoms proved a silver lining&mdash;at least until ditches were opened in the sloughs. Monlux claims farmers always regretted opening these ditches that flooded and were impassable in the spring and that pulled water away from wells that then went dry. Although a fire in slough grass with a high wind was a danger, especially for newcomers, controlled burning of a ton of slough grass, Monlux says, provides more heat than a ton of soft coal. Feed and fuel.</p>\r\n<p>When the county courthouse was dedicated in 1917, the population of the county was 15,362. Whatever concerns early settlers had about Lyon County climate, many found home there.</p>\r\n<img src="../../resources/image/lyon/PeopleOnTheMove/LyonCountyCourthouse.jpg" alt="Lyon County Courthouse" width="500" height="375" />\r\n<p class="caption">Lyon County Courthouse</p>\r\n<p><strong>Sources:</strong> Henning, Dale R. and Schermer, Shirley J. <em>&ldquo;Blood Run Archaeological Investigations.&rdquo;</em> Plains Anthropologist 49.192 (Nov 2004): 399-434; <br /> George Monlux, <em>Early History of Lyon County (Rock Rapids, Iowa, 1908-09)</em>; <br /> S.C. Hyde, <em>Historical Sketch of Lyon County (1872/1873)</em>; <br /> &ldquo;Fiftieth Anniversary of the Dedication of the Lyon County Court House 1917-1967&rdquo;: pamphlet; <br /> Raymond E. Winter,<em> Memories of a County Boy (2002)</em>. <br /> Blood Run NHL Website: <a href="http://bloodrunnhl.com/bloodrun/">bloodrunnhl.com</a></p>\r\n</div>', 'Draft', '2016-04-10 20:22:49'),
(43, 7, 'CitizenScientists', 'Weather Observers, Citizen Scientists', 'Black Hawk County, Iowa', 'Abigail Weaver', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">Weather, both the everyday occurrences and the extraordinary events, </span> is central to the lives of Iowans, and people throughout the United States and the world. Recording the weather is used as a way to keep track of patterns, and to help remember specific events.</p>\r\n<p>Kate Dietrich, a woman who lived in Black Hawk County, kept a weather diary for thirteen years from 1945 to 1958. She dutifully recorded the date, temperature, and included a brief description of the conditions every day. At the beginning of her entries for March 1945 she noted, &ldquo;came in like a lamb,&rdquo; rather than &lsquo;in like a lion&rsquo; as the popular saying predicted. The rest of March 1945 entries consist of a mix of temperatures, and descriptions such as &lsquo;fair&rsquo; and &lsquo;rain&rsquo;.</p>\r\n<p>Page after page of one-line weather records follow, each looking similar until something truly unusual happened as on February 16, 1951 when she wrote that the temperature was thirty degrees, rainy, and, instead of a brief one-word description, includes &ldquo;no bus service taxi for emergency only. Thick coat of ice &ndash; &frac12; - 6 &frac34; wide over everything.&rdquo; After 1958, her weather diary continues in a different handwriting, Kate Dietrich must have convinced someone else to record her observations for her. Whether the weather was uneventful or not, Kate Dietrich&rsquo;s diary suggests that she felt the importance of keeping a record over the long haul.</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<img src="../../resources/image/blackhawk/CitizenScientists/Kate_Dietrich_Weather_Diary_Resize.jpg" />\r\n<p class="caption">Kate Dietrich&rsquo;s Weather Diary</p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<img src="../../resources/image/blackhawk/CitizenScientists/Gustavus_Hinrichs_Edited1.jpg" />&nbsp;\r\n<p class="caption">Gustavus D. Hinrichs, ca. 1868</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>Kate Dietrich&rsquo;s twentieth-century Iowa weather diary is similar to those of participants in the Smithsonian&rsquo;s meteorological project begun in 1849.Observers all over the country sent in telegrams recording the weather in their hometown to help the Smithsonian&rsquo;s first Secretary, Joseph Henry, create a daily weather map of the United States. The observers, five hundred in all by 1860, submitted monthly weather reports that are compiled into an 1861 report about climate data and storm observations.</p>\r\n<p>&nbsp;The daily weather maps that Henry created beginning in 1856 could be viewed at the Smithsonian Castle in Washington, D.C. The telegraph allowed weather data to be collected quickly from all throughout the country, and this gathering of data led to weather forecasting. Thus the development of the telegraph, tested first in 1844, and a network of local observers laid the foundations for the creation of the National Weather Service that now issues warnings for floods and other severe weather patterns throughout the country.</p>\r\n<p>The importance of the weather to Iowans, especially those involved in agriculture, led to the creation of the Iowa Weather Service in 1875 by Dr. Gustavus Detlef Hinrichs, the first state and weather crop service anywhere in the United States. Public interest in the weather helped the Iowa Weather Service thrive as Hinrichs used his own money, donations from citizens, and volunteers to purchase equipment and run the organization until the state provided funding in 1878. By 1958, the Iowa Office of the National Agricultural Service was issuing statistics on precipitation, temperature, and crop progress in its weekly Crop Progress and Condition Report. The statistics included in the report are very similar to the kinds of information that Kate Dietrich recorded in her weather diary.</p>\r\n<p>&nbsp;</p>\r\n<p><img src="../../resources/image/blackhawk/CitizenScientists/Daily_weather_map_Edited.jpg" alt="" width="500" height="369" />&nbsp;</p>\r\n<p class="caption">Secretary Henry Posts Daily Weather Map in Smithsonian Building, 1858," by Louise Rochon Hoover, Commissioned for the Smithsonian exhibition at the Chicago Century of Progress Exhibition in 1933, Smithsonian Institution Archives Record Unit 7005, Box 186, Folder: 4; Record Unit 95, Box 11, Folder: 12, Negative Number: 84-207</p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<p>&nbsp;The volunteers, the telegraph, and weather diaries together turned &lsquo;citizen science&rsquo; into valuable data and sometimes even life-saving information near to home and far away. All of the field work and data have also helped researchers throughout the globe study climate change, butterfly migration, and many more global patterns.</p>\r\n<p>Citizen science and weather are closely tied together, especially in Iowa. An interest in the everyday weather pattern is crucial to agriculture, and Iowans have responded by working to make sense of the weather they faced every day. In the past, farmers sent information to the Office of the National Agricultural Service to provide data for the weekly crop report. Many other Iowans, like Kate Dietrich, made sense of the weather by recording their own personal observations in weather diaries.</p>\r\n</div>', 'Draft', '2016-04-17 20:05:50'),
(44, 60, '2014Flood', 'The Flood of June 2014', 'Rock Rapids, Lyon County, Iowa', 'Barbara Eckstein', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">On June 16, 2014, Siouxland News Channel KTIV reported that the Rock River at Rock Rapids would rise another four feet</span> and would then be three feet higher than it had been in 1993. This was the prediction of the National Weather Service. The Sheriff&rsquo;s Department of Lyon County warned that not all of the river could be successfully sandbagged, and so they were ordering a mandatory evacuation in parts of Rock Rapids and in all of Alvord. They recommended against travel anywhere in Lyon County. The Sheriff added, &ldquo;This storm is unlike anything they&rsquo;ve ever experienced here in Rock Rapids.&rdquo;</p>\r\n<p>Apparently trouble began Saturday, June 14, when there was a breach on the Rock River at Blue Mound State Park in Luverne, Minnesota. That breach sent water flowing towards Rock Rapids. Five inches of local rain that weekend compounded the problem. By Sunday morning the river was at 13 feet. Sandbagging began with many volunteers from Rock Rapids and other towns. The plan was to prepare the city in twelve hours, but by Sunday evening, as things looked worse and worse, officials decided sandbagging needed to continue.</p>\r\n<p>That night&mdash;2a.m. Monday morning&mdash;the river crested at 24.02 feet. With a new gage having been added to the river in 2001 and with it a different method of measurement, there was some confusion about whether 1993 or 2010 held the flood record. The crest in 2010 had been 22.25 feet. Either way, the 2014 flood was greater. So great that the Rock Rapids water plant had to be shut down and a boil order was issued for the city that Monday. But the rains and the rising waters were not done yet.</p>\r\n<div class="vspacer">&nbsp; <img src="../../resources/image/lyon/2014Flood/LyonFlood-2014.jpg" alt="Flooded Houses" width="500" height="226" /></div>\r\n<p>Lyon County residents had long expected less rain there than in other parts of Iowa. The 1899 Iowa Geological Survey, volume 10, reported that the average rainfall in Lyon County was 8 inches less than in southern Iowa. In fact, as recent as 2012 the county was experiencing a drought. By September of that year parts of northwest Iowa had slipped into the most severe drought category: exceptional drought. And yet Harry Hillaker, State Climatologist, declared June 2014 the wettest month in Rock Rapids and in Sioux City in the history of state weather recordkeeping. Whether 1993 or 2010 saw the second highest crest of the Rock River at Rock Rapids, there is no doubt that 2014 set a new record.</p>\r\n</div>\r\n<!-- right column text -->\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer"><img src="../../resources/image/lyon/2014Flood/LyonSandbaggers2014.jpg" alt="Sandbaggers" width="500" height="479" />&nbsp;</div>\r\n<p>While some 30 residents huddled in the elementary school gym, assisted by the Red Cross, at 11:15 a.m. on Tuesday, June 17, the Rock River in Rock Rapids crested at 26.98 feet, twice the level of flood stage. The June 25 Lyon County Reporter estimated that 60-80 structures in Rock Rapids were affected and were temporarily or permanently uninhabitable. Rock Rapids mayor Jason Chase told reporters that the biggest battles would be Island Park, the inundated recreation area, and other properties that were a total loss. He wanted to get displaced people back in homes quickly. &ldquo;I don&rsquo;t think anyone thought it would be this bad,&rdquo; he said.</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img class="alignleft" src="../../resources/image/lyon/2014Flood/LyonFlood2014Two.jpg" alt="Flood-Destroyed House" width="100%" /></div>\r\n<div class="singlecol">\r\n<p>&nbsp;</p>\r\n<p>Sources: <a href="http://www.kwwl.com/story/19475328/drought-northwest-iowa-exceptional-hurricane-isaac-monitor-map">www.kwwl.com/story/19475328/drought-northwest-iowa-exceptional-hurricane-isaac-monitor-map</a> ; &ldquo;2014 Flood, A Special Supplement to the Lyon County Reporter&rdquo;</p>\r\n</div>', 'Draft', '2016-04-10 14:12:58'),
(45, 60, 'Grasshoppers', 'Grasshoppers and the Weather', 'Rock Rapids, Lyon County, Iowa', 'Barbara Eckstein', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in"><em>The History of Doon</em>, like other histories of Lyon (formerly Buncombe) County,</span> refers to the period 1873-1883 as &ldquo;the plague years.&rdquo; Those were the years that swarms of grasshoppers brought settlement to a near standstill. Although the grasshoppers left the prairie alone, they attacked grainfields, gardens, fabric, and people. They got in houses and wells. So many grasshoppers died on the railroad tracks that, at one point, the rails were declared too slick to use safely.</p>\r\n<p>The county offered 5 cents per quart for their capture, the state legislature allotted $75,000 to settlers for eradication of grasshoppers and reseeding, and the U.S. Congress, in 1873-74, granted homesteaders an extension on their allotments if they wanted to go east until &ldquo;the plague&rdquo; cleared. Some later claimed that the $75,000 went to the wealthiest landowners and not the poor settlers who most needed it. <em>Bonnie Doon, Our Town</em> claims that only 20 thousand of the 400 thousand acres of Lyon County had even been made available to homesteaders; the rest went to the railroad and speculators, including Governor Larabre.</p>\r\n<div class="vspacer"><img src="../../resources/image/lyon/Locusts/LocustWoodcut.jpg" alt="Locust in the grain" width="500" height="428" /></div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>Grasshoppers&mdash;locusts&mdash;played a large role in the history of Lyon County, but was their presence in &ldquo;the plague years&rdquo; connected to the weather? Jeff Lockwood, entymologist at the University of Wyoming and author of Locust: The Devastating Rise and Mysterious Disappearance of the Insect that Shaped the American Frontier (Basic Books, 2004), says, almost certainly yes. Jeff Lockwood told PWM that &ldquo;the large-scale population dynamics of this species [Rocky Mountain locust (RML)] were most surely driven by weather. Of course, at a local level the locust would select particular areas for feeding and egg-laying. So it&rsquo;s likely that the green fields were more attractive to the insects than the adjacent prairie. However, RML outbreaks did not persist for periods of 16 years, so in at least some of the years [1872-1888] M. spretus was almost surely not involved, but some other grasshopper species was the culprit. The population dynamics of these other species were a function of both weather and food availability (as well as predators, parasites and pathogens). Even so, all grasshopper species are, to some extent, influenced by the weather (which directly affects the rate of development which can be key in terms of survival to adulthood and often indirectly affects mortality; for example, high rainfall is conducive to fungal [diseases]). The weather almost certainly played a substantial role in the population dynamics of the grasshoppers infecting Iowa fields&mdash;whether a strong, large-scale influence (RML) or a more local influence (for example, other species of Melanoplus that were not locusts and persisted in a region over time rather than travelling in swarms). That said, the presence of crops almost surely played a role as well in providing the insects with nutritious, green food.&rdquo;</p>\r\n<p>The weather, the breeding and feeding patterns of the insects, and the land use patterns of new humans in the county worked together to produce, for a few years, the swarming of what was probably the Rocky Mountain locust and the continued presence of other grasshopper species in the county. The Lyon County grasshopper story is like most stories about the weather; whatever damage the weather may cause, the weather culprit rarely acts alone.</p>\r\n</div>\r\n<!-- right column text -->\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer"><img src="../../resources/image/lyon/Locusts/LocustSide.jpg" alt="Locust Portrait" width="500" height="397" /></div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>Even so, the description of the swarms makes clear why the governments at all levels would have reacted to &ldquo;the plague&rdquo; somehow: At 5 p.m. on Friday, July 25, 1874, for example, a swarm described as covering a territory from Little Rock to Sioux Falls and north to LuVerne, Minnesota, descended to the ground. They remained until 10 a.m. on Sunday when they all rose at once, turning the sky black and leaving behind empty fields and gardens and fouled wells. Laura Ingalls Wilder similarly describes, in her book <em>On the Banks of Plum Creek</em>, a swarm of grasshoppers that destroyed her family&rsquo;s wheat crop in southern Minnesota. Those Lyon County settlers who had stayed fought back with nets and homemade devices, pulled through the fields, that scooped the insects into coal tar that trapped them there. By 1888, the grasshoppers were declared gone from the county.</p>\r\n<p>In fact, by 1902, one likely species implicated in the Lyon County trouble&mdash;Rocky Mountain locust (<em>Melanoplus spretus</em>)&mdash;were all but extinct. That&rsquo;s the last year one was seen, in southern Canada. In 2014, the Rocky Mountain locust was declared officially extinct by the International Union for Conservation of Nature (IUCN).</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer"><img src="../../resources/image/lyon/Locusts/LocustMachine2.jpg" alt="Locust Eradication Machine" width="500" height="620" /></div>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n</div>\r\n<div class="singlecol"><img src="../../resources/image/lyon/Locusts/LocustMap.jpg" alt="Locust Migration Map" width="1000" height="781" /></div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>Sources: <em>Bonnie Doon: Our Town: History of Doon, 1868-1992</em>, compiled and written by Galen Lawrence, Dee Keegan, and Harold Aardema, submitted by Roseanna Zehner mslace@netins.net Dec 2002 to USGENWEB Archives Project. Web. 6/2015; Matthew M. Colbert, MA history thesis Iowa State University: &ldquo;General Nathaniel B. Baker and the Grasshopper Plagues of Northwest Iowa, 1873-1875&rdquo; 2009. Web. 6/2015; &ldquo;Rocky Mountain Locust,&rdquo; Wikipedia. Web. 6/2015; email correspondence from Jeff Lockwood to Barbara Eckstein, 9/2/2014.</p>\r\n<p>[Images courtesy of the <em>State Historical Society of Iowa</em>]</p>\r\n<div class="vspacer">&nbsp;</div>', 'Draft', '2016-04-10 20:35:32'),
(46, 43, 'Logan1999', 'Tornadoes of 1999', 'Logan, Iowa', 'by Nathaniel Otjen', '<div class="leftcol500 nomargin">\r\n<p><img src="../../resources/image/harrison/Logan1999/LoganMap.jpg" alt="" width="500" height="644" /></p>\r\n<p class="caption">A storm chaser&rsquo;s map of the two tornadoes around Logan. The tornado on the southeast of Logan caused the most damage and the tornado to the west damaged two homes. To read about this storm chaser&rsquo;s experience, visit: <a href="http://extremeinstability.com/may_16th_storm_info.html">extremeinstability.com/may_16th_storm_info.html</a></p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>The storms around Logan destroyed six homes, a bridge on a gravel road and damaged many other homes in the area. Highway 30 and Highway 127 were both closed because of the debris strewn across them from the tornadoes.</p>\r\n<p>Flooding followed the storms, as thunderstorms dumped more than three inches of rain across the county on Sunday, May 16th. Two days later, Iowa Governor Tom Vilsack declared Harrison County a disaster area because of the damage caused by the tornadoes. The storms caused an estimated $1.5 million in damage.</p>\r\n<p>Bobbie Sheranko, the mother of Juliet Pali who died in one of the tornadoes, turned 47 on the day she lost her daughter and was out of town in Texas when the tornado struck. Afterwards, while struggling with the loss of her daughter, Sheranko created a website to remember Juliet by and called it &ldquo;Our Lovely Angel Juliet.&rdquo; On the website, Sheranko recounts her search for others who had experienced the loss of a child. The Internet provided an outlet and a community of people to whom Sheranko expressed her feelings and thoughts.</p>\r\n<div class="vspacer"><img src="../../resources/image/harrison/Logan1999/Logan1999_2.jpg" alt="" width="500" height="312" />&nbsp;</div>\r\n</div>\r\n<!-- ------------------------------------------ -->\r\n<div class="rightcol500 nomargin">\r\n<p><span class="lead_in">Harrison County hadn&rsquo;t seen a deadly tornado in over fifty years until May 16, 1999.</span> Many local high schoolers were celebrating their graduation that afternoon. The Logan-Magnolia High School concluded its graduation ceremony for the 41 graduating seniors around 3 pm. Just half an hour later, their superintendent announced a tornado warning over the school&rsquo;s intercom.</p>\r\n<p>Most of Iowa was under a tornado watch that day and the National Weather Service issued tornado warnings for more than a dozen counties. Two tornadoes touched down in the area surrounding the town of Logan, spinning off of a super cell weather event that swept through Western Iowa in the late afternoon that Sunday. While Crawford, Mills and Pottawattamie counties were all impacted by these storms, Harrison County was hit the hardest.</p>\r\n<p>Two people died and fourteen were injured from the two tornadoes. Kathy Fugate (37 years old) and Juliet Pali (15 years old, of Bellevue) both lost their lives when trying to flee one of the tornadoes. Fugate and Pali, along with five other people, were celebrating the graduation of Kathy Fugate&rsquo;s son when the storm hit. They decided Fugate&rsquo;s trailer was unsafe and left to find a safer location.</p>\r\n<p>They decided to seek shelter in the cellar of Beverly Harter&rsquo;s farmhouse just down the road from Fugate&rsquo;s home. The group of seven piled into a car and headed towards Harter&rsquo;s home. When they were less than an eighth of a mile away, the tornado destroyed Harter&rsquo;s house and headed directly towards their car.</p>\r\n<p>Seeing no other options, they jumped out of the car and sought shelter in the ditch. The tornado picked up and threw their car and a combine head on top of Beverly Harter, Kathy Fugate and Juliet Pali. The impact crushed and killed Fugate and Pali and Beverly Harter was paralyzed from the waist down. The five other people in the ditch were injured and three of them sustained serious injuries, including Fugate&rsquo;s 15-year-old daughter, Lynette, and Lynette&rsquo;s uncle, Kent Harter. Fugate&rsquo;s mobile home remained in tact through the storm.</p>\r\n<p>A tornado that struck south of Logan caused the most damage, while another tornado moved west of Logan and damaged two homes. Both of these tornadoes were later classified as F-3 storms, with wind speeds between 158 and 205 mph.</p>\r\n<div class="vspacer"><img src="../../resources/image/harrison/Logan1999/Logan1999_1.jpg" alt="" width="500" height="331" /></div>\r\n<p class="caption">National Weather Service aerial photograph from depicting the damage from one of the Logan tornadoes.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>In the days following the storms, volunteers came to help those affected in the area around Logan. It is recounted in the book, Then and Now: A Pictorial History of Harrison County, IA:</p>\r\n<p>Over the years, one thing that has not changed about Harrison County is the generosity of neighbors helping neighbors. Volunteers from all over the county, fire and rescue personnel, friends, family and even strangers came to help the victims with the clean-up.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>[All of the above information came from <a href="http://www.freewebs.com/ourlovelyangeljuliet/newsstoryaboutjuliet.htm">www.freewebs.com/ourlovelyangeljuliet/</a>, the <em>Estherville Daily News</em>, the <em>Oskaloosa Herald</em>, <a href="http://www.city-data.com/">City-data.com</a>, and the <em>&gt;Harrison County Happenings Newsletter</em>.]</p>\r\n</div>\r\n<div class="clearboth">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>', 'Draft', '2016-04-12 00:10:10'),
(47, 60, 'EarlyFloods', 'Early Floods in Lyon County', 'Lyon County, Iowa', 'Barbara Eckstein', '<div class="singlecol"><span class="lead_in"> There was an extensive flood in all of Iowa in 1851.</span> 74.5 inches of precipitation fell in the new state that year. Although the worst effects were in the southeastern part of Iowa, &ldquo;everywhere the same conditions prevailed, even on the narrow watershed of the Missouri slope.&rdquo; But there were few to no settlers in the newly mapped Lyon County to experience and record any loss.</div>\r\n<!-- left column text and image -->\r\n<div class="leftcol500 nomargin">\r\n<p>A decade later, in 1862-63, three young men from Massachusetts, in Lyon County for the hunting, did suffer from the effects of a flood that spring. W.C. Hyde tells the story. &ldquo;They had built a cabin on an island in the river, at the forks of the Little Rock, West Branch and Rock River.&rdquo; In the fall of 1862 they enjoyed the abundance of game until they encountered &ldquo;a band of Santee Sioux from Minnesota who had been following the elk.&rdquo; The Sioux &ldquo;fired upon them with bows and arrows, from which [Roy] McGregor received a shot in the side.&rdquo; His companions, George Clark and Thomas Lockhart, escaped unharmed, but McGregor died from his wound. Clark and Lockhart decided to stay on to contest their right to hunt on these grounds.</p>\r\n<p>The Sioux did not return, but, in the spring, &ldquo;another calamity befell [the two remaining young men].&rdquo; When, in early March, the snow began to melt and then it began to rain, their island cabin was threatened. With heavy rain one night, the water rose to their door. &ldquo;Yet they concluded to wait until morning before making preparations to move.</p>\r\n<p>&ldquo;During the night the ice broke up, and with the floating timber gorged the river above the head of the island, almost completely damming it. Behind this gorge the water continued to rise until it had covered the river bottom to great depth. Lockhart and Clark had arisen and begun to prepare their breakfast when this gorge broke, and the flood came down upon the island and cabin with terrific force. Hearing the rushing of the water and breaking of the timber, they ran out of the cabin just as the water came down upon them. Lockhart seized hold of a tree and succeeded in climbing out of the way of the flood. Clark jumped into the river and swam for the east bank. He succeeded in crossing the stream, and grasping some overhanging boughs, turned his head and exclaimed: &lsquo;Tom, I&rsquo;m all right,&rsquo; when the flood came upon him and, overwhelmed in the torrent, he sank to rise no more. Lockhart remained in the tree for several hours, when, by means of some floating logs, he reached the high bank and made his escape.&rdquo; Hyde doesn&rsquo;t say if the flooding in the spring of 1863 was unusual on the Little Rock River.</p>\r\n</div>\r\n<!-- right column text -->\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<img src="../../resources/image/lyon/EarlyFloods/Lewis_and_Clark_Map.jpg" alt="Lewis and Clark map Northwestern Iowa" width="500" height="459" /></div>\r\n<div class="singlecol">\r\n<p>From the Iowa State Historical Society: W.C. Hyde, Historical Sketch of Lyon County, 1872; Tacitus Hussey,&ldquo;The Flood of 1851&rdquo; The Annals of Iowa 5.6 (1902); Debbie Clough Gerischer, &ldquo;The Flood of 1851&rdquo; in The Palimpsest 15.6 (1934)</p>\r\n</div>', 'Draft', '2016-04-10 23:10:27'),
(48, 7, 'waterloo2008', 'The 2008 Flood in Waterloo', 'Waterloo, Black Hawk County, Iowa', 'Abigail Weaver', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">2008 had already been a year for the record books, </span>an EF 5 205 mph tornado had already torn through Black Hawk County in May, when residents of Waterloo were watching the Cedar River swell from the torrential rains that hit Northeast Iowa in June. Communities farther north in the Cedar River valley had already begun to experience historic levels of flooding as the residents of Waterloo frantically prepared their town for the coming flood waters. The National Weather Service would record the Cedar River reaching a record high crest of 25.39 feet in Waterloo, with a secondary crest reaching 21.9 feet.</p>\r\n<p>The flooding reached downtown Waterloo on June 10, 2008, as the roads flooded with several inches to a few feet of water throughout the city. There had been two mandatory evacuations, and employees of the downtown businesses were sandbagging and attempting to locate pumps to empty water from the basements. The Waterloo-Cedar Falls Courier reported on June 12, 2008:Just days earlier, downtown Waterloo was its normal, bustling self. Shops were open, and people were milling around. Now, the power was out, businesses were closed and the only ones found wading through the increasingly higher waters were owners frantically sandbagging and hoping their pumps stayed ahead of water.</p>\r\n<p>Joana Van Blaricom, owner of Kings and Queens, and Sapphire&rsquo;s Gentlemen&rsquo;s Club in Waterloo, said that &ldquo;The National Guard told us it&rsquo;s gonna get worse before it gets better.&rdquo; Gene Leonhart, the president of Cardinal Construction, ran four pumps to try and keep his building clear of water but was losing the battle to the flood waters as storm sewers in the surrounding streets overflowed. He lamented that &ldquo;If there was a levee break, we&rsquo;d be in deep trouble.&rdquo;</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<img src="../../resources/image/blackhawk/FloodInWaterloo/Humvee_and_Street.jpg" alt="" width="500" height="375" />\r\n<p class="caption">An Iowa National Guard Humvee in Waterloo <br /> (Dennis Magee / Waterloo-Cedar Falls Courier)</p>\r\n</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p>Local media was not spared the effects of the already historic flood waters as the newspapers, radio, and television stations fought to keep residents of Waterloo informed throughout the flood. On June 10, 2008 water poured into the basement of the Waterloo-Cedar Falls Courier printing facility, and the Wednesday edition of the newspaper was transferred to the Cedar Rapids Gazette&rsquo;s building. The newspaper was produced on time but the flooded roads made delivery difficult.</p>\r\n<p>Also on June 10th, local television station, KWWL, was off the air for more than three hours, after flood waters created an electrical outage, until a backup generator was located to power the station at 9:30 am. Three different radio stations, KCRR 97.7, KKHQ 92.3, and KOEL 98.5, all also lost power for three hours that same morning. The new Courier publisher, David Braton, who had been hired on April 1st described the experience as &ldquo;a baptism by fire,&rdquo; since the media had to find ways to keep functioning to provide crucial information.</p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<img src="../../resources/image/blackhawk/FloodInWaterloo/Bridge_AP_Photo-.jpg" alt="" width="500" height="375" />\r\n<p class="caption">Washed Out Railroad Bridge in Waterloo <br /> (AP Photo/ The Waterloo Courier/ Morgan Hawthorne)</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>Another disaster occurred during the afternoon on June 10, 2008 as one third of a railroad bridge used by the Iowa Northern Railroad to transport John Deere tractors to Cedar Rapids was washed away at 2:45 pm. Roger Verch witnessed the bridge wash out and said &ldquo;We were actually standing on the 18th Street Bridge downstream when it gave way. It struck the 18th Street Bridge. We really felt the vibrations.&rdquo; A portion of the bridge remained caught in the 18th Street Bridge while the rest washed away down the river. Another man, Percy Burt, had been fishing near the railroad tracks when the incident occurred and said &ldquo;The guy from the railroad said, &lsquo;You better get down from there. It&rsquo;s liable to go.&rsquo; The rails started popping and raised up. Everybody had to go.&rdquo;</p>\r\n<p>Meteorologists reported that in twenty-four hours Waterloo had received another half-inch of rain. On June 12, 2008 the National Weather Service reported that the Cedar River in Waterloo would not fall below the flood stage of twelve feet until Wednesday June 18. Residents of Waterloo were in a state of shock as an evacuation between the Cedar River and Jefferson Street was issued.</p>\r\n<p>Curt Olmstead, a resident of Waterloo who had been evacuated from his home by boat, wasn&rsquo;t surprised by the amount of water in Liberty Park, &ldquo;If you get a hard rain it does fill up. I have seen it like this before, but I&rsquo;ve never seen it where they had to sandbag it like that. It&rsquo;s big. Everything is big.&rdquo; Liberty Park and Bontrager Park were both sandbagged so that the land would collect water, serving as retention basins for the storm drains and sewers that had been inundated by more water than they could handle.</p>\r\n</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p>On June 13, 2008 the Waterloo-Cedar Falls Courier reported that Michael Chertoff, the U.S. Secretary of Homeland Security, met with city officials in Waterloo. Chertoff said &ldquo;To a lay person&rsquo;s eye, it certainly seems to meet that standard of a once-in-every-500-years flood. In terms of river flooding, this seems very substantial. Clearly there&rsquo;s an awful impact in the communities along the river.&rdquo; He believed that Waterloo would qualify for federal aid, both individual and public assistance, to help the communities recover.</p>\r\n<p>William Gronen, who owned a house in Waterloo&rsquo;s Chautaqua Park Neighborhood, had water five feet deep in his house on June 14, a shock since the house had only ever flood once in 1961. That same day Iowa&rsquo;s governor Chet Culver, U.S. Senators Charles Grassley and Tom Harkin visited Waterloo to assure residents that they would lobby for Federal Emergency Management Agency (FEMA) aid to be offered quickly to residents of Iowa affected by the flooding.</p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<p>On June 15, 2008 the Waterloo-Cedar Falls Courier ran the headline &ldquo;Lafayette Park Area Still Battles High Water,&rdquo; as residents still dealt with feet of water in their basements. Deere and Co. lent Waterloo industrial pumps from out-of-state to help pump water from Lafayette Park to over the levee at the Cedar River.</p>\r\n<p>Recovery from the flood finally began two days later with the Waterloo-Cedar Falls Courier reporting: &ldquo;Waterloo Begins Restoring Public Services,&rdquo; as the city began to start removing barricades and restored regular garbage collection as well as opening the landfills to help residents deal with flood debris.</p>\r\n<p>The flood was officially over on June 18, 2008 when the water in the Cedar River finally fell below the flood stage. But the effect of the flood on Waterloo was huge; the Waterloo-Cedar Falls Courier ran an article, &ldquo;Damage Estimate: $18 Million Just for City of Waterloo.&rdquo; The flood waters had reached a record height of 26 feet on June 11th, and Mayor Tim Hurley of Waterloo estimated that the total damage in the city ranged from $14 million to $18 million. In December, readers of the Waterloo-Cedar Falls Courier voted the 2008 flooding in Waterloo and other areas one of the most memorable events of the year.</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/blackhawk/FloodInWaterloo/Floodwaters_in_Waterloo_-.jpg" alt="" width="500" height="375" />\r\n<p class="caption">Floodwaters in Waterloo <br /> (Matthew Putney / Courier Photo Editor)</p>\r\n</div>\r\n<div class="clearboth vspacer">&nbsp;</div>', 'Draft', '2016-04-17 21:12:49'),
(49, 43, 'Woodbine1913', 'Easter Tornado of 1913', 'Woodbine, Iowa', 'by Nathaniel Otjen', '<p>The town of Woodbine is located along the Boyer River and was officially incorporated in 1877. On Woodbine&rsquo;s earliest recorded Easter in 1913, a tornado struck around 6:30 in the evening.</p>\r\n<div class="leftcol500 nomargin">\r\n<p>According to the town&rsquo;s newspaper &mdash; the <em>Woodbine Twiner</em> - Woodbine had a successful Easter day celebration. The <em>Twiner</em> reports that Easter Sunday had been overcast with the sky darkening in the late afternoon. The newspaper writes, &ldquo;Very few people . . . were expecting a tornado, but nearly all felt that the atmosphere was peculiar.&rdquo;</p>\r\n<p>At about 6:30 p.m., a tornado struck the town, lasting for about five minutes. The tornado approached from the southwest and mowed a path two blocks wide through the southern portion of the business district and through the southern residence district.</p>\r\n<p>A clock recovered from a demolished home after the tornado struck had its hands stuck at 6:22 p.m. &mdash; suggesting the tornado hit Woodbine at that specific time. On the <em>Twiner&rsquo;s</em> March 28th printing, they feature a list of forty-two residences on the front page that were seriously damaged from the storm.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/harrison/Woodbine1913/Woodbine1913-1.jpg" alt="Woodbine residences after 1913 tornado" width="500" height="286" />\r\n<p class="caption">The remains from part of Woodbine&rsquo;s residential section. The back of this photograph says, &ldquo;Ruins of Mrs. Earlewine&rsquo;s house in the southwest part of town. She was taken from under the heating stove with her clothes on fire&rdquo;</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>There were no lives lost from the tornado; however, half a dozen people were seriously injured. Most of the minor injuries were cuts and bruises caused by flying debris. The storm also uprooted and damaged many trees throughout Woodbine.</p>\r\n<p>Despite the significant damage to property and individual lives in Woodbine, the town began to rebuild almost immediately. The Twiner reports, &ldquo;All have taken the thing philosophically. There is no folding of arms and sitting down to grieve over spilled milk.&rdquo;</p>\r\n<p>Just five days after the tornado hit Woodbine, the <em>Twiner</em> wrote, &ldquo;It is too early as yet to get accurate information as to rebuilding plans, but all business places destroyed or partially demolished will in all probability be rebuilt.&rdquo; A week later, the main headlines on the front-page read: TORNADO SMITTEN, TOWN IS REPAIRING and PULLING THINGS TOGETHER AND TRYING TO FORGET THE HAVOC WROUGHT.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/harrison/Woodbine1913/Woodbine1913-4.jpg" alt="Woodbine residences after 1913 tornado" width="500" height="339" />\r\n<p class="caption">Photo reads: &ldquo;Main Street After Tornado Woodbine IA&rdquo;. Note the man in the middle sawing a board &mdash; the town almost immediately began to rebuild after the storm. <em>[Then and Now Pictorial History Book]</em></p>\r\n<div class="vspacer">&nbsp;</div>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>The <em>Twiner</em> reported about the damage immediately following the tornado:</p>\r\n<p class="blockquote">Next morning it would have been a hard job to pass up and down some of the residence streets even on horse back, so thick was the debris in some places, and much of it was made up of trees and broken limbs strewn pell-mell. It will take years to restore things to the normal in this particular. Houses and stores can be, and will be, rebuilt, but trees can not be grown in a single year.</p>\r\n<p>In fact, after the tornado the <em>Woodbine Twiner</em> even printed on schedule. Fortunately, their building was spared from damage. The building next door, the livery stable, wasn&rsquo;t as fortunate and was destroyed by the storm (see photo).</p>\r\n<img class="alignleft" src="../../resources/image/harrison/Woodbine1913/Woodbine1913-2.jpg" alt="Woodbine Twiner and Livery Stable" width="500" height="309" />\r\n<p class="caption">The <em>Woodbine Twiner&rsquo;s</em> sign and building can be seen on the right side of this photograph. The Livery Stable next door was completely destroyed, but the newspaper was spared.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>Added to the difficulties of rebuilding, Woodbine received three inches of snow in the days immediately following the storm. However, this didn&rsquo;t seem to hinder the town&rsquo;s determination to rebuild. &ldquo;Masons, carpenters, every man in fact that can drive a nail or push a saw, is in demand and have been pressed into service. The difficulty, indeed, is to get men enough to do the work needed,&rdquo; the <em>Twiner</em> wrote.</p>\r\n<img class="alignleft" src="../../resources/image/harrison/Woodbine1913/Woodbine1913-5.jpg" alt="Woodbine rebuilding after 1913 tornado" width="500" height="251" />\r\n<p class="caption">The <em>Twiner</em> reports that almost immediately following the storm, work to rebuild began on this business &mdash; Young and Kibler. [Woodbine Centennial]</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>The <em>Twiner</em> hypothesized a week after the tornado that &ldquo;everything at least in the business part of the town will be rebuilt, and in substantial form.&rdquo; This assumption proved to be correct &mdash;most of the town rebuilt quickly after the storm.</p>\r\n<img class="alignleft" src="../../resources/image/harrison/Woodbine1913/Woodbine1913-6.jpg" alt="Woodbine rail yard after 1913 tornado" width="500" height="252" />\r\n<p class="caption">Caption: Much of the rail yard was damaged, however, a train continues to operate in the background. The <em>Twiner</em> reports on March 28: &ldquo;The I.C. tracks were worst obstructed, but they had their track passable before morning.&rdquo; <em>[Woodbine Centennial]</em></p>\r\n</div>\r\n<div class="clearboth"><hr /><img class="aligncenter" src="../../resources/image/harrison/Woodbine1913/WoodbineTwiner(Full).jpg" alt="Woodbine twiner Front Page March 28 1913" width="859" height="1163" />\r\n<p class="caption">The <em>Woodbine Twiner&rsquo;s</em> front page on Friday, March 28, 1913. Note the &ldquo;Before&rdquo; and &ldquo;After&rdquo; photos on the left.</p>\r\n<p class="caption"><strong>[All info above comes from the Woodbine Twiner&rsquo;s coverage of this tornado on March 28, 1913 and April 4, 1913]</strong></p>\r\n</div>', 'Draft', '2016-04-12 00:10:01');
INSERT INTO `stories` (`id`, `f_county_id`, `story_name`, `title`, `location`, `byline`, `story_content`, `status`, `last_modified`) VALUES
(50, 43, 'PersiaYorkshire1925', 'Tornado of 1925', 'Persia and Yorkshire, Iowa', 'by Nathaniel Otjen', '<div class="leftcol500 nomargin">\r\n<p>On June 3, 1925, three tornadoes struck the towns of Persia and Yorkshire in the late afternoon between the hours of 4 and 5 p.m.</p>\r\n<p>Both Persia and Yorkshire are located within a rich agricultural area in the southeastern part of Harrison County. Shortly after the construction of the Chicago Milwaukee and St. Paul Railroad in 1881, a blacksmith shop, grocery store and hotel were constructed through Persia. By 1883, the town was officially formed and recognized. The nearby town of Yorkshire came into existence around the same time. It was first platted in June of 1872 by the railroad company and a store developed shortly after (<em>Harrison County Bicentennial</em>).</p>\r\n<p>Two of the June 3rd tornadoes hit Persia &mdash; impacting the southeastern and southwestern parts of town. Yorkshire was also struck by a tornado from the same storm and lost a depot, local store, church, schoolhouse and a number of residential homes.</p>\r\n<p>In addition to the damage directly inflicted by the tornadoes themselves on Persia and Yorkshire, the storms produced &ldquo;hail as big as baseballs&rdquo; (<em>Persia Centennial</em>). Local creeks in the area also flooded severely after the storms passed through, adding to the damage.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/harrison/PersiaYorkshire1925/PersiaAndYorkshire1.jpg" alt="Remains of machine shed" width="500" height="273" />\r\n<p class="caption">The remains of a machine shed on a local farm after the Yorkshire Tornado struck. [Credit: Then and Now: A Pictorial History of Harrison County]</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img class="alignleft" src="../../resources/image/harrison/PersiaYorkshire1925/PersiaAndYorkshire2.jpg" alt="Aftermath of Persia Tornado" width="500" height="300" />\r\n<p class="caption">People examining the ruins left by one of the Persia tornadoes. [Credit: Persia Centennial]</p>\r\n<p>Clara Hamann vividly remembers one of the 1925 Persia tornadoes, writing about this event 58 years later in the <em>Persia Centennial</em>:</p>\r\n<blockquote><em>This is one experience in my life I will never forget as I was at the home of my brother-in-law Lester Hilborn. I heard him yelling, get the kids, blankets, axe, flashlight and get to the cellar as he was watching the storm coming. The sensation as he tried to hold all of us in her arms behind a bank in the cellar when the storm hit. Ripping off the cellar door and a basement window, moved the house from its foundation, and left just a shell. The terrible suction as if it was going to suck us right out of the cellar. Coming out of the cellar after the storm and seeing all the buildings gone, even the horses which had been tied in the barn. But how thankful we were to be alive and unhurt.</em></blockquote>\r\n<p>In the days following the June 3rd storms, two thousand volunteers came from Cass, Harrison, Mitchell, Pottawattamie and Shelby counties to help the tornado refugees. Much of the volunteer work focused on assisting seventy-five farms that were damaged by the tornadoes. In addition, five thousand dollars along with much material and food aid was donated and distributed to help the storm refugees.</p>\r\n</div>\r\n<div class="clearboth centered"><hr />[All of the above info comes from the <em>Persia Centennial</em>, unless otherwise cited]</div>', 'Draft', '2016-04-12 00:09:53'),
(51, 47, '1891Flood', 'Flood of 1891', 'Ida Grove, Iowa', 'by Nathaniel Otjen', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">Ida County residents usually remember the early 1890&rsquo;s</span> as a time of severe drought, but one large rainstorm during the last week of June in 1891 halted the dry spell and caused the Maple River to overflow its banks and submerge much of Ida Grove. By the end of 1891 it was clear that the flood of that year was the worst the town of Ida Grove had ever experienced.</p>\r\n<p>The storm hit Ida County on June 23rd in the evening and deposited nine inches of rain. The rivers quickly swelled and overflowed, destroying homes, railroad tracks and bridges, telephone lines, and farmers&rsquo; livestock and crops. At least twenty-five homes completely flooded in Ida Grove, and the flood forced many residents to seek shelter on higher ground.</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/ida/1891Flood/1.jpg" alt="" width="100%" />\r\n<p class="caption">The floodwaters submerged much of Ida Grove.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n</div>\r\n<div class="singlecol">\r\n<p>Two days later, the Cedar Rapids Gazette reported that rescue teams still had to wait for the floodwaters to recede before they could attempt to help stranded residents. The rising water submerged all of the railroads that led to Ida Grove. More rain fell on the morning of the 26th and the Gazette wrote, &ldquo;All communication with the north is cut off.&rdquo;</p>\r\n<p>On the following morning the Gazette&rsquo;s front-page story read:</p>\r\n<blockquote><em>A Trail of Ruin: The Destruction of Life and Property in Norhwestern [sic] Iowa Appalling&mdash;The Receding Waters Leave Hundreds of Head of Stock in the Broiling Sun and an Awful Stench Pervades the Air. Impossible to Obtain Full Particulars Yet&mdash;The Work of Removing the Debris Commenced in Earnest.</em></blockquote>\r\n<p>On the 26th the Gazette reported, &ldquo;Everything is in the wildest confusion.&rdquo; Four people drowned from the rising water in Ida Grove. Many of the town&rsquo;s residents sought temporary shelter in the G.A.R. and Masonic hall for several days.</p>\r\n<p>By June 27, the Gazette called Ida County &ldquo;A Sea of Water.&rdquo;</p>\r\n<p>Coverage of the flood even made it into the June 27th edition of the Buffalo Courier in Buffalo, New York: &ldquo;Maple River here is the highest ever known. The town is inundated and all the bridges are washed away.&rdquo;</p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/ida/1891Flood/2.jpg" alt="" width="100%" />\r\n<p class="caption">The rushing water carried this railroad bridge tract nearly ten miles downstream to Ida Grove from Galva.</p>\r\n<p>Two days after the nine-inch deluge, the Gazette reported, &ldquo;At the present time it is impossible to estimate the damage to railroad property in that territory, but enough is known to show it will be very heavy.&rdquo; In Ida County, the flood destroyed much of the Onawa railroad branch that ran fifty miles from Onawa to Ida Grove. The Gazette reported its railways were &ldquo;entirely blockaded by the carrying away of bridges and washing away of road beds.&rdquo;</p>\r\n<p>Despite the damage caused to the railways, workers dispatched immediately to repair the lines. The Gazette writes, &ldquo;The Northwestern management has a repair crew and half a dozen pile drivers at each end of the break on its lines, ready to begin repairs, but the waters are still so high that work can not be proceeded with. It will take several days to put the line in condition for the resumption of traffic.&rdquo;</p>\r\n<p>Railway workers quickly repaired the lines once the floodwaters receded in early July.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p><strong>Sources:</strong> The Cedar Rapids Gazette, History of Ida County, Buffalo Courier and <a href="http://www.idagroveia.com/Resources/pages/history.html">http://www.idagroveia.com/Resources/pages/history.html</a></p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>&ldquo;I saw farmers walking in water up to their waists pushing rafts on which were loaded their families and household goods,&rdquo; a man from Hornick, Iowa (forty miles west of Ida Grove) told the Gazette. The History of Ida County quotes Persis Babcock who recalled &ldquo;the scene of her father and other men wading through the flood waters with children and belongings heaped upon their shoulders.&rdquo; In Ida Grove, the Babcock family housed forty guests and fed them all breakfast the morning following the flood.</p>\r\n<p>The flood also damaged many miles of railroad in Ida County. The railroad first came to Ida Grove only fourteen years prior. The first train passed through the town on October 26, 1877 and Ida Grove soon expanded from the industry brought by the new railway. By the early 1890&rsquo;s, six railroad lines ran through the area surrounding Ida County: the Northwestern, Illinois Central, Milwaukee &amp; St. Paul, Chicago, St. Paul and Minneapolis &amp; Omaha railroads. The flood damaged all of these railways.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/ida/1891Flood/3.jpg" alt="" width="100%" />\r\n<p class="caption">The flood stalled passenger trains attempting to pass through Ida Grove. Note the floodwaters in the background that rose high enough to cover the railroad tracks.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n</div>', 'Draft', '2016-04-12 00:09:45'),
(52, 16, '1898Tornado', 'The May 1898 Tornado', 'Cedar County, Iowa', 'by Steve Gottschalk (Typed by Eunice Boedeker)', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">On Wednesday, May 18, 1898, a destructive tornado</span> swept across northern Cedar County. The day had been quite warm and sometime between two and three o&rsquo;clock in the afternoon, rain and hail fell in considerable quantities.</p>\r\n<p>First noticed near the western border of the county, it struck the ground just south of Mechanicsville, raising the dust as if an explosion of dynamite had taken place. It shook the outbuildings at the William Jackson place at Red Oak. At the J.K. Davidson place, south of Stanwood, it wrecked the shed and cribs, and did considerable damage to the barn. A shed where two men were working was picked up and torn to pieces, leaving the men lying flat on the ground, uninjured.</p>\r\n<p>The Eli Auten farm was damaged next, where two men and a boy were laying tile when the storm approached. They headed for cover but the boy was caught and was given a pretty severe thumping.</p>\r\n<img class="alignleft" src="../../resources/image/cedar/1898tornado/DekeHouse-Clarence.jpg" alt="" width="100%" />\r\n<p class="caption">Deke House and Barn near Clarence.</p>\r\n<p>The farm of Charles Deke, two miles northeast of Clarence, was hit the hardest. A hired man, acting as a first responder, got the wife and two sleeping children into the basement just as the storm swept the house off the foundation. Every building was destroyed except the two corncribs. A large number of livestock were killed and most of the farm machinery destroyed. A ten-foot long 6-by-8 sill was driven seven feet into the ground. Pieces of wood were carried 80 rods away.</p>\r\n<p>The farms of John Greig, Frank Ihns, Norm Eldridge, Henry Stange, Claus Stange and D.B. Myers all received damage. At the H.A. Emerson farm, his wife and daughter provided the only warning available. They called him to the house just in time as every other building on the place was swept to destruction.</p>\r\n<p>At the John Emerson place, across the Wapsi River, the storm destroyed every building. They had not been home during the storm, but when they returned, they found that they had lost everything &mdash; the furniture, food and belongs were all lost. All they had was the clothing on their backs and each other.</p>\r\n<p>Just as the storm had flattened farms and left their inhabitants injured and exposed, the storm cut a regular swath through the timber, laying the large trees flat and uprooting the ones it could not twist off.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n</div>\r\n<div class="rightcol500 nomargin"><img class="alignleft" src="../../resources/image/cedar/1898tornado/ElwynSawyersBarn-Stanwood.jpg" alt="" width="100%" />\r\n<p class="caption">Elwyn Sawyers barn near Stanwood.</p>\r\n<p>The storm moved a mile or so to the northeast, descending once again, this time to the J.C. Carl farm. It caused a large amount of damage, destroying the summer kitchen, twisting a new windmill into a fantastic shape, and tearing the wheel off of the hay rake. At the Elwyn Sawyer farm, halfway between Stanwood and Clarence, the barn and outbuildings were completely destroyed. The Stanwood railroad section workers had taken refuge in the barn but decided to seek refuge elsewhere. This was a fortunate move as the barn was blown into pieces. At Charles Hoegebuck&rsquo;s farm, the tornado tossed the windmill over the house.</p>\r\n<p>After crossing the Chicago and Northwestern railroad tracks, the storm hit the farms of Al Miller, Gus Bixler, Henry Ayerhoff and Milt Scott. It also hit the Clarence Cemetery, damaging trees and breaking a number of monuments.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/cedar/1898tornado/HAEmersonBarn-Massillon.jpg" alt="" width="100%" />\r\n<p class="caption">H.A. Emerson Barn near Massilon.</p>\r\n<p>[All Photos Source: Lowden Historical Society]</p>\r\n</div>\r\n<div class="clearboth">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>', 'Draft', '2016-04-12 00:18:41'),
(53, 16, '1936Winter', 'The Winter of 1936', 'Cedar County, Iowa', 'by Steve Gottschalk (Typed by Eunice Boedeker)', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in"> Dust Bowl stories usually focus</span> on the warm months. When I was growing up, many were the times that I heard my parents, grandparents, or other relatives talk about the winter of 1936 &mdash; especially when winter rolled around. At that time it was the coldest and snowiest winter on record. The 35-day period from January 19th to February 22nd, still stands as the coldest in this part of the world. The average high temperature was 8 degrees and the low was -13 degrees. The mean temperature was -2.5 degrees and 25 inches of snow fell.</p>\r\n<p>Earlier that winter, things were different &mdash; briefly. The first 18 days of December were mild with readings above freezing on fourteen of those days. Then from the 19th to the 30th, the temperature remained below freezing. Christmas day saw 6 inches of snow on the ground and a low of -12 degrees. Readings were below zero every morning from the 24th to the 30th. The month averaged 2 degrees below normal and there were at least 8 inches of snow.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/cedar/1936blizzard/1936Blizzard-2.jpg" alt="" width="100%" />\r\n<div class="vspacer">&nbsp;</div>\r\n<p>A storm on January 21st-22nd was especially intense. It deposited 7 inches of snow and the temperature fell four to five degrees every hour until it reached -26 degrees with strong winds. It was so cold that the noon whistle would not blow. On the 23rd the high was -14 degrees and the low was -28 degrees. Most roads were impassable with north and south roads being blocked by six to eight foot high drifts.</p>\r\n<p>The temperature stayed below zero from the evening of the 21st through the morning of the 28th, a total of 160 hours. More snow and wind on the 29th through the 30th blocked the roads again. The lows were below zero every morning from the 19th through the 31st.</p>\r\n<p>The bitter cold continued into the month of February. A blizzard swept the area on the 4th, dropping 7 inches of snow and bringing high winds. The main highways were blocked by 5-foot drifts, bringing traffic to a standstill. There was no mail service on the 5th, a day when the thermometer registered -28 degrees, water pipes were frozen, and the Chicago Northwestern trains coming from the east were delayed several hours. To make matters worse, on the 7th, the winds picked up again and by nightfall, the roads were impassable yet one more time that winter.</p>\r\n<p>Another blizzard struck the area on the 8th, bringing four inches of snow and high winds to the area. The temperature fell 30 degrees in just one hour. Due to the snow and lack of coal used for heating, the schools were closed for the next two weeks. Purchase of it was rationed and it was sold by the bushel basket. The train between Tipton and Stanwood did not run for two weeks. It took two engines and a large snowplow to open the track line.</p>\r\n<p>Up to three weeks after the February storm, many roads throughout the county remained closed, which is no surprise considering the drifts were as high as the telephone wires in some places. 150 WPA workers were hired to open the roads with scoop shovels. Farmers cut the fence wires so they could drive their bobsleds through the fields.</p>\r\n<p>The winter of 1936 that my parents and grandparents remembered so well averaged a temperature of 11.5 degrees. For 46 days the temperature did not climb above zero. The snowfall totaled 45 inches. The fact that coal was scarce and people resorted to heating only two or three rooms in their homes meant that it was cold both inside and out. For those who experienced it, the winter of 1936 in Cedar County was hard to forget.</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/cedar/1936blizzard/1936Blizzard-3.jpg" alt="" width="100%" />\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>The first two weeks of January were again rather mild, with six of those days above freezing. Five inches of snow did fall from the 4th to the 8th, but the high on the 14th was 43 degrees. It would be the last day above freezing until February 23rd. A storm on January 16th-17th dumped 5 inches of snow. The thermometer fell to -10 degrees on the 19th and registered below zero every morning until February 12th.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/cedar/1936blizzard/1936Blizzard-1.jpg" alt="" width="100%" />\r\n<div class="vspacer">&nbsp;</div>\r\n<p>[All Photos Source: Lowden Historical Society]</p>\r\n</div>\r\n<div class="clearboth">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>', 'Draft', '2016-04-22 18:51:24'),
(54, 16, '1944Flood', 'The Flash Flood of June 1944', 'Lowden, Iowa', 'by Steve Gottschalk (Typed by Eunice Boedeker)', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">As the battle for Normandy raged in Europe,</span> people on the home front in Cedar County found themselves with a different kind of fight on their hands. Bodies of hogs and chickens dotted the water surface south of Lowden after a 24-hour, 10-inch rain caused extensive flash flooding on June 26, 1944. It was probably the worst flood in Cedar County&rsquo;s history. Like the Lowden area, the area east of Tipton also received 10 inches. The storm was accompanied by some hail and high winds that damaged trees and farm buildings. The Clarence area received 7.50 inches of rain, most of which fell between 7 and 9:30 A.M. on the 26th of June. Only the extreme southern part of the county escaped the deluge.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="quickFlip_1 centered" style="width: 500px; height: 347px;"><!-- 	        need to include jquery function quickflip bound to class name -->\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/cedar/1944Flood/1944Flood_4_Front.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/cedar/1944Flood/1944Flood_4_Back.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<!-- <img class="alignleft" width="100%"  alt="Brian Stephan in front of flooded Midland Supply" src="<?php echo image_url(''linn/Midland/Brian.jpg'');?>"> -->\r\n<p>Almost every creek in the county was flooded &mdash; washing out fences and flooding fields. Soil erosion was extremely severe, especially on more hilly ground. There was substantial loss of livestock and poultry along the larger streams. One farmer living in Lime City lost 150 head of sheep. On the Gust Licht farm one half-mile from Lowden, water was standing five feet deep in his buildings. He lost 30 hogs that were swept away in the Yankee Run Creek. He also lost all of his fences and hundreds of bushels of corn that were ruined by mud. Two other farmers south and east of Lowden lost livestock that were carried away by the high water.</p>\r\n<p>Several main highways were blocked by high water and washed out bridges. Travel could only be accomplished with much detouring and backtracking. There were 96 damaged bridges &mdash; 56 completely taken out and 34 had approaches washed out to a degree that left them impassable. Cedar County residents couldn&rsquo;t easily evacuate and couldn&rsquo;t communicate with others either. The phone service was disrupted by downed telephone lines.</p>\r\n<div class="quickFlip_1 centered" style="width: 500px; height: 323px;"><!-- 	        need to include jquery function quickflip bound to class name -->\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/cedar/1944Flood/1944Flood_1_Front.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/cedar/1944Flood/1944Flood_1_Back.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n</div>\r\n<p>Railroad service was badly disrupted across the county with passenger and mail trains rerouted far to the north or south. Service was suspended on the Chicago and Northwestern railway for 2 days because of a washed out bridge between Clarence and Stanwood. The Rock Island Line suspended service due to a bridge washed out at Moscow.</p>\r\n<p>Scenes of devastation greeted the eye on all sides but no human lives were lost.</p>\r\n<p>[All Photos Source: Lowden Historical Society]</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<!-- <img class="alignleft" width="100%"  alt="Brian Stephan in front of flooded Midland Supply" src="<?php echo image_url(''linn/Midland/Brian.jpg'');?>"> --></div>\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="quickFlip_1 centered" style="width: 500px; height: 336px;"><!-- 	        need to include jquery function quickflip bound to class name -->\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/cedar/1944Flood/1944Flood_3_Front.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/cedar/1944Flood/1944Flood_3_Back.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n</div>\r\n<p>The storms hit the Lowden area late Sunday afternoon on the 25th of June and then again early Monday morning. All three creeks &mdash; Yankee Run, Indee and East Creek &mdash; went on the rampage and by midmorning on Monday, the surrounding area for several miles was completely under water and traffic was at a standstill. The homes in the west, south and east parts of Lowden were surrounded by water. Some homes in the west part of town were flooded over the main floor. The east wall of a basement collapsed in the west part of town. One home had water over the tabletop. Several families were evacuated, some by boat. The highway was flooded for several miles, blocking the westbound train. The Conrad and Conrad lumber yard and buildings were standing in two feet of water.</p>\r\n<div class="quickFlip_1 centered" style="width: 500px; height: 272px;"><!-- 	        need to include jquery function quickflip bound to class name -->\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/cedar/1944Flood/1944Flood_2_Front.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/cedar/1944Flood/1944Flood_2_Back.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n</div>\r\n<img class="aligncenter" src="../../resources/image/cedar/1944Flood/1944Flood_5.jpg" alt="" width="95%" />\r\n<div class="vspacer">&nbsp;</div>\r\n</div>', 'Draft', '2016-04-22 18:46:23'),
(55, 8, 'BooneFloodOf1881', 'Crossing Boone Bridges', 'Boone County, Iowa', 'Emma Husar', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">Through the whirl of wind and water, parted by the rushing steel,</span></p>\r\n<p>Flashed the white glare of the head-light, flew the swift-revolving wheel,</p>\r\n<p>As the Midnight Train swept onward, bearing on its iron wings,</p>\r\n<p>The evening, the darkness is dense and profound.</p>\r\n<p>Through the whirl of wind and water, parted by the rushing steel,</p>\r\n<p>Men linger at home by their bright, blazing fires:</p>\r\n<p>The wind wildly howls with a horrible sound, and shrieks through the vibrating telegraph wires;</p>\r\n<p>The fierce lightning flashes along the black sky;</p>\r\n<p>The rain falls in torrents, the river rolls by&hellip;.</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/boone/BooneFloodOf1881/Kate-Shelley-looking-at-the-bridge-Edited.jpg" alt="" width="500" height="651" />\r\n<div class="vspacer">&nbsp;</div>\r\n<p>Held in her home by her mother&rsquo;s will, Shelley listened to &ldquo;the roar of thunder mingled with the sullen wash of the surging stream.&rdquo; She kept a keen gaze on the world outside that house&mdash;even though she was encouraged to stay, she had an itch to warn the men at &ldquo;Moingona, a station about a mile from Honey Creek&rdquo; that the bridge appeared far too dangerous to cross. After suddenly witnessing the fall of the train Ed Wood was on, she leaped up and rushed out to warn Moingona, for, she knew that another train was bound to cross at midnight, and that one carried 200 passengers.</p>\r\n<p>&hellip;in the Valley yonder lies</p>\r\n<p>Death&rsquo;s debris in weird confusion, altar fit for Sacrifice!</p>\r\n<p>Dark and grim the shadows settle where the hidden perils wait,</p>\r\n<p>Swift the train, with dear lives laden, rushes to its deadly fate!</p>\r\n<p>Ed Wood was one of two survivors of the initial train crash that was the final test for the Honey Creek Bridge. Wood says, &ldquo;I [heard] the timbers begin to crack&hellip;.The weak place proved to be in the center of the bridge, directly over the main current, which we had not yet reached. To this point the engine leaped in a second, and down we went with an awful crash into twenty-five feet of surging water.&rdquo; Once he hit the water and lost sight of his workfellows, he flung about, lungs filling with water as he surged with the river, 3 feet underwater. Wood&rsquo;s struggles to survive the deadly current were not in vain: he struck driftwood where the water was around twelve feet deep. He drifted along until, as he recalls,</p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<p>This excerpt of a poem was published in The Holton Recorder (Kansas) in response to a flood in Boone, Iowa, on June 6, 1881. It is the story of &ldquo;Brave Kate Shelley!&rdquo; This was a moment in history that reached newspapers all over the country: San Francisco to New York. Kate Shelley, an Irish immigrant, was with her mother and siblings in their home in Boone beside Honey Creek and the Chicago and North-Western Railroad Bridge when a massive storm hit.</p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<p>The Inter Ocean, a Chicago newspaper, published this excerpt of the poem in 1884 also commemorating the storm in Boone County three years prior. It captures well the helpless state of these Iowans amidst a summer tempest; however, it seems to understate the intensity of that river that surely &ldquo;rolled by&rdquo; with a life-taking force.</p>\r\n<p>&ldquo;Honey Creek, from Boone to Moingona, is a rapid and treacherous stream fed by many others of smaller size, all of which contribute to swell the usually unpretentious creek to the volume of a mighty river, the force of which was a severe test upon the strength of any structure opposing its course,&rdquo; The Chicago Tribune notes. Along Honey Creek there are 21 bridges, 11 of which were destroyed in this flash flood. The train bridge over Honey Creek, right beside Shelley&rsquo;s house, was among those destroyed. The rising water levels and &ldquo;heavy and stiff winds&rdquo; weakened the bridge until &ldquo;The flood washed out the support trestles for the train bridge.&rdquo;</p>\r\n<img src="../../resources/image/boone/BooneFloodOf1881/pleading_with_mom-Revised.jpg" alt="" width="500" height="434" /></div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p>&ldquo;The water went down very fast, and in about half an hour was not more than up to my waist, but was still very deep between me and either shore. Next I noticed the waves rolling down towards me four or five feet high and I felt sure that the Boone reservoir had bursted, and that it was all over with me then. The sight was grand and terrible, but it was all over in a moment. The waves swept over me, and the waters again went down quickly, leaving me clinging to the branches of a willow tree. [What he saw next was] the light of Kate Shelley&rsquo;s lantern gleaming out in the dark woods.&rdquo;</p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<p>Kate Shelley also rushed. She marched right into a storm where, The Inter Ocean recalls, &ldquo;So great was the velocity of the wind that many buildings were destroyed.&rdquo; She was determined to make it to the station so those passengers would escape their &ldquo;deadly fate.&rdquo; However, in order to do so, she had to cross &ldquo;the high trestle bridge over the Des Moines River.&rdquo; Below that bridge, in only an hour, the water level had risen six feet, and counting. Fearless, she mounted the structure and crawled all the way across: &ldquo;The darkness was intense, except with the dazzling lightning revealed the timbers and the surging and seething waters below.&rdquo; Although she nearly fell off of the bridge due to the thrashing wind and rain, in the end, not only did she bring Wood and the other and only survivor of the first crash to safety, but she managed to cross the bridge so they could stop the next train in the nick of time.</p>\r\n<p>As the poem goes on to state:</p>\r\n<p>&ldquo;[Kate Shelley] saved the lives of sleeping travelers swiftly to death&rsquo;s journey borne&hellip;</p>\r\n<p>Saved! Ere yet they know their perils, come a warning to alarm;</p>\r\n<p>Saved! The precious train is rising on the brink of deadly harm.&rdquo;</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/boone/popups/epic_drawing-Edited.jpg" alt="" width="500" height="328" /></div>', 'Draft', '2016-04-17 20:47:03'),
(65, 57, 'Midland', 'Flood of 2008', 'Iowa Midland Supply, Inc., Cedar Rapids, Iowa', 'Barbara Eckstein', '<p><span class="lead_in">Iowa Midland Supply, distributor of cutting tools, adhesives, safety equipment and more,</span> has been in business since 1953. In June of 2008, the Stephan&rsquo;s family business had 16 employees. Iowa Midland Supply was located at 3rd Street and 7th Ave S.E. in a building brothers Craig and Brian Stephan had bought from their uncle. Occupied for 41 years, the building had never been flooded until 2008.</p>\r\n<div class="leftcol500 nomargin">\r\n<p>On the ninth of June, 2008, <em>The Cedar Rapids Gazette</em> warned readers that a river crest of 21.5 feet was forecast for their city, topping the 1929 record of 20.01 feet and 2.3 feet higher than the crest during the flood of 1993. &ldquo;Record Flooding on the Way for Cedar Rapids&rdquo; the headline announced. Five days later, June 14, 2008, <em>The Cedar Rapids Gazette</em> headline read, &ldquo;Cedar Rapids Struggles to Grasp Losses.&rdquo;</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignright" src="../../resources/image/linn/Midland/Church.jpg" alt="Cedar Rapids Flood of 2008 Flooded Church" width="500" height="380" /></div>\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/linn/Midland/ToRoof.jpg" alt="Cedar Rapids Flood of 2008 Flooded Houses" width="500" height="380" />\r\n<p>The river had crested at 31.1 feet, not 21.5 feet. The downtown was under water. 25 thousand had been evacuated, hundreds by boat. 12 thousand homes in Linn County, alone, were without power. The city&rsquo;s wells had been overtaken and were pumping at only 25%. Highways 380 south, 30 east, and 965 were all flooded. The early dollar estimate for damages was in the 100s of millions. (An August 27, 2009 article in the <em>New York Times</em> put the damage in Cedar Rapids at 6 billion dollars [Susan Saulny, &ldquo;After Iowa Flood, Feeling Just a Bit Ignored&rdquo;].)</p>\r\n</div>\r\n<div class="clearboth">&nbsp;</div>\r\n<p>As the waters were rising, Craig and Brian Stephan, family and friends, 20 people in all, evacuated the computers and their business records to a building near Coe College, and sandbagged the building at 3rd St. and 7th Ave.S.E. In hindsight, they wish they had just evacuated everything. The Iowa Midland Supply building took on 10 feet of water, extending into their second storey.</p>\r\n<div class="leftcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<iframe src="//player.vimeo.com/video/96244971?byline=0&amp;portrait=0" width="500" height="281" frameborder="0" allowfullscreen="allowfullscreen"></iframe>\r\n<p>After a couple weeks of clean up work, Craig Stephan said later, they had neither the time, money nor inclination to save it all. Some 125 dumploads were taken from the building that the Stephan&rsquo;s stripped of everything but concrete and steel.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/linn/Midland/Inventory500.jpg" alt="Destroyed Inventory at Midland" width="100%" /></div>\r\n<div class="rightcol500 nomargin">\r\n<p>In the weeks following the flood, the Stephan&rsquo;s family and friends did their own clean-up and at first tried to save some of the inventory, but even if the water had not destroyed all the tools, it had scrambled them all and destroyed all the labeling.</p>\r\n<img class="alignleft" src="../../resources/image/linn/Midland/Mucking_Cropped.jpg" alt="Woman Mucking out the Midland Supply Building" width="100%" />\r\n<p>&nbsp;</p>\r\n<p>In dollars, the loss ran into the 7 figures. The Stephan&rsquo;s initially expected to operate the business out of the location near Coe College for a month or two, maybe six months. They were instead out of their building for two years. There were hundred of worse stories than ours, said the Stephan brothers.</p>\r\n</div>\r\n<div class="vspacer">&nbsp;</div>', 'Draft', '2016-04-16 13:00:27'),
(67, 57, 'WH', 'Flood of 1929', 'Williams and Hunting Company, Cedar Rapids, Iowa', 'Barbara Eckstein', '<p><span class="lead_in">The Williams and Hunting Co., a woodworking industry, had been on First Street and Fifth Avenue on the Cedar River&rsquo;s west bank since 1881</span> when the river flooded its operations in 1929. <!--[Text L1060606HisSoc] --> &ldquo;The business originated in a stone mill near the end of the F Avenue Bridge in 1872,&rdquo; wrote The Cedar Rapids Gazette in a 2007 reminiscence. Williams and Hunting, a major Cedar Rapids industry employing 125 people, had &ldquo;constant business,&rdquo; claims an Illustrated Review article from 1900, because they served the needs of a &ldquo;big and growing city&rdquo; marked by excellent and elegant buildings, both public and private. <!-- [Text L1060596 HisSoc] --> Until 1947 the business ran its machinery on steam, that is, water power. Williams and Hunting closed its doors in 1957 when no family member wanted to take over the business.</p>\r\n<div class="clearboth">&nbsp;</div>\r\n<p><img class="alignleft" src="../../resources/image/linn/WH/L1060572-500X380.jpg" alt="Cedar Rapids Flood of 1929 Neighborhood" width="500" height="380" /> <img class="alignright" src="../../resources/image/linn/WH/L1060573-500x380.jpg" alt="Cedar Rapids Flood of 1929 Neighborhood" width="500" height="380" /></p>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="leftcol500 nomargin"><br /> <img class="alignleft" src="../../resources/image/linn/WH/L1060590-500x300.jpg" alt="Williams and Hunting Front" width="500" /><br />\r\n<p class="clearleft"><br />In 1929, the Cedar River at Cedar Rapids peaked at over 20.01 feet, the highest recorded. In 1961 residents and downriver neighbors feared an even higher river despite dams built since the 1929 event. An interurban railroad bridge was, in 1961, wired for explosion, just in case its removal was necessary. (It wasn&rsquo;t.) The New Orleans Times-Picayune of March 31 and April 1, 1961 was telling its readers that the Cedar Rapids levee system, constructed after the disastrous flood of 1929, had withstood crests of 19 feet before and might weather the 19.66 foot crest then being reported. In fact, 1929 did retain the record as the worst recorded flood, until 2008.</p>\r\n<img class="alignleft" src="../../resources/image/linn/WH/IMG_5063-500x850.jpg" alt="Williams and Hunting dry kiln" width="500" height="850" />\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/linn/WH/IMG_5071-700X400.jpg" alt="Boss in canoe" width="500" /></div>\r\n<div class="rightcol500 nomargin"><br /><br />\r\n<div class="quickFlip_1 centered" style="height: 700px; width: 436px;">\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/linn/WH/WandH_1_Recto.jpg" alt="WandH_1_Recto" width="421" height="679" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/linn/WH/WandH_1_Verso.jpg" alt="WandH_1_Verso" width="421" height="679" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n</div>\r\n<p>Williams and Hunting, located on the river&rsquo;s bank, lost three weeks of work to the 1929 flood, an event <em>The New Orleans Times-Picayune</em> described as &ldquo;disastrous.&rdquo;</p>\r\n<img class="alignleft" src="../../resources/image/linn/WH/IMG_5072-500X830.jpg" alt="Three Weeks text" width="500" /></div>\r\n<div class="vspacer">&nbsp;</div>', 'Draft', '2016-04-15 18:50:52'),
(68, 57, 'Vets', 'Floods of 1929, 2008', 'Veterans Memorial Building, Cedar Rapids, Iowa', 'Barbara Eckstein', '<p>&nbsp;</p>\r\n<!-- full width text -->\r\n<p><img class="alignleft spaceright" src="../../resources/image/linn/Vets/MemorialDedication.jpg" alt="1929 Veterans Memorial Dedication Program, 1928" width="200px" /></p>\r\n<p class="spaceright">Conceived in 1925 and built in 1927, Veterans Memorial Building on Mays Island in the Cedar River was dedicated on <br />September 12, 1928.</p>\r\n<p><img class="alignright spaceleft" src="../../resources/image/linn/Vets/LadyOfMourning.jpg" alt="Grant Wood Mural Detail, Our Lady of Mourning" width="450px" /></p>\r\n<p class="spaceright">The building housed not only City Hall but an auditorium large enough for a circus and a 25-foot tall glass mural designed by artist Grant Wood. The mural depicts a sixteen-foot Lady of Mourning, bearing a palm branch of peace and a laurel wreath of victory, above six life-sized figures in uniforms of the American Revolutionary War, the War of 1812, the Mexican War, the American Civil War, the Spanish American War and the Great War. As part of the May&rsquo;s Island Historic District, Veterans Memorial Building and Memorial Window joined the National Register of Historic Places in 1978.</p>\r\n<div class="clearboth">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<!-- full width text, 3 images -->\r\n<p><img class="aligncenter" src="../../resources/image/linn/Vets/GrantWoodTryptich.jpg" alt="Grant Wood Mural at Veterans Memorial Building" width="100%" /></p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>In 1929, the same year Grant Wood&rsquo;s Memorial Window was installed, Cedar Rapids experienced the 2nd most severe of the recorded floods at that location on the Cedar River.</p>\r\n<!-- <div class="vspacer"></div> -->\r\n<p><img class="alignleft" src="../../resources/image/linn/Vets/Vets1929-1020.jpg" alt="Veterans Memorial Building in 1929 Flood" width="100%" /></p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>The new mural and building survived the 1929 flood intact, but they were severely damaged in the flood of 2008.</p>\r\n<!-- <div class="vspacer"></div> -->\r\n<p><img class="alignleft" src="../../resources/image/linn/Vets/Vets2008-1020.jpg" alt="Veterans Memorial Building in 2008 Flood" width="100%" /></p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p><img class="alignleft" src="../../resources/image/linn/Vets/GrantWoodMuralRepair-1020.jpg" alt="Grant Wood Mural Restoration" width="100%" /></p>\r\n<p>Glass Heritage L.L.C. restored the Memorial Window. (Right: Adrian English, owner of Glass Heritage L.L.C. and stained glass technician Doug Gammon. Photographer: Cliff Jette/The Gazette. See more at: <a href="http://thegazette.com/2013/06/07/grant-woods-war-memorial-masterpiece-on-display-during-cedar-rapids-festival" target="_blank">http://thegazette.com/2013/06/07/grant-woods-war-memorial-masterpiece-on-display-during-cedar-rapids-festival</a>)</p>\r\n<div class="leftcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<p>After two years unavailable to public view, Wood&rsquo;s Memorial Window was rededicated on July 4, 2010.</p>\r\n<p>Cedar Rapids city government permanently relocated City Hall outside of Veterans Memorial Building following the flood of 2008. Though the building was cleaned and stabilized that year, it remained idle until 2012 when city officials were able to secure financial support for restoration from the U.S. Federal Emergency Management Agency in addition to funds from the state of Iowa. Restoration work on the building began in early 2013.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/linn/Vets/GrantWoodMuralRededication.jpg" alt="Grant Wood Mural Rededication, 2010" width="100%" />\r\n<p class="caption">photo from: <a href="http://lincolnhighwaynews.wordpress.com/tag/grant-wood-window/" target="_blank">http://lincolnhighwaynews.wordpress.com/tag/grant-wood-window</a></p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div class="vspacer">&nbsp;</div>', 'Draft', '2016-04-15 13:26:04'),
(80, 100, 'RickCruse', 'Rick Cruse', 'Agronomist at Iowa State University, Ames, Iowa', '', '<p><iframe src="https://player.vimeo.com/video/163011662?title=0&amp;byline=0&amp;portrait=0" width="720" height="405" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>', 'Draft', '2016-04-17 13:46:24'),
(81, 100, 'PeterThorne', 'Peter Thorne', 'College of Public Health, University of Iowa', '', '<p><iframe src="https://player.vimeo.com/video/163011660?title=0&amp;byline=0&amp;portrait=0" width="720" height="405" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>', 'Draft', '2016-04-17 13:52:44'),
(82, 100, 'JerrySchnoor', 'Jerry Schnoor', 'Center for Global and Regional Environmental Research, University of Iowa ', '', '<p><iframe src="https://player.vimeo.com/video/163011658?title=0&amp;byline=0&amp;portrait=0" width="720" height="405" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>\r\n<p class="reversetype" style="text-align: center;">Recommended Link: <a class="reversetype" href="http://www.noaa.gov/">National Oceanic and Atmospheric Administration (NOAA)</a></p>', 'Draft', '2016-04-17 20:55:53'),
(84, 82, 'ScottFloodOf1993', 'Davenport and the Great Flood of 1993', 'Scott County, Iowa', 'Jessica Rusick', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">After a long, cold winter of 1993, record rainfall in March, and continued precipitation into May and June,</span>the Mississippi river was set to flood even worse than it had in 1965. In that year, the river crested at 22.48 feet, devastated homeowners and business owners along the river, and threatened Davenport&rsquo;s water supply. On July 1, 1993, the Quad-City Times ran a simple but startling headline: &ldquo;Prediction: 22.5.&rdquo; The river crested at 22.63 feet in Davenport eight days later. All of Iowa&rsquo;s 99 counties were declared federal disaster areas.</p>\r\n<p>National news programs broadcast the struggles &ndash; large and small, winning and losing &ndash; that took place along the Mississippi. Two neighboring businesses in Davenport, Solar Vision and Auto Parts, were part of the coverage. Under a handwritten sign that read FORT APACHE, the owners spent long hours scrambling to build and reinforce sandbag walls around their buildings. A customer from Missouri even brought water pumps to the scene after he saw the businesses struggling on TV. The pumps, however, were not enough to stop the water. Before the owners abandoned the buildings, they left a message on the roof for President Clinton to read when he surveyed the area in a helicopter: S.O.S. Mr. President.</p>\r\n<p>For many business owners, the choice to remain downtown -- near the worst of the flooding and without the protection of a permanent flood wall -- can be a difficult one, especially when much of Davenport is on a hill. Like Solar Vision and Auto Parts, Petersen-Hagge Furniture in downtown Davenport was inundated with water during the 1993 flood. Steve Hagge, the store&rsquo;s owner, was put out of business for nearly a month as he sandbagged and moved his inventory out of danger. "I''m not whining," Hagge said of the struggle. "This is where we are, and we''ll live with it, but I think about moving up the hill. Up the hill would be nice.&rdquo;</p>\r\n<p>But moving up the hill would also mean leaving a piece of his family&rsquo;s history behind. Hagge&rsquo;s grandparents opened their first furniture store in Clinton in the 1940s, and Steve Hagge and his three brothers lived in the apartment above the shop. When he grew older, Hagge apprenticed for years under his father &ndash; he swept the sidewalks, laid carpet, and learned how to keep the books for his family&rsquo;s business. In the 1970s, when Petersen-Hagge opened a store in Davenport, Steve Hagge was given the opportunity to run it &ndash; a livelihood made difficult by the yearly floods.</p>\r\n<img src="../../resources/image/scott/ScottFloodOf1993/93_mayor_arguing_w_garden_addition_resident_Edited.jpg" alt="" width="500" height="333" />\r\n<p class="caption">A Garden Addition resident (left) argues about mandatory evacuations with Pat Gibbs, the mayor of Davenport in 1993</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/scott/ScottFloodOf1993/93_paper_before_crest_Edited.jpg" alt="" width="500" height="818" />\r\n<p class="caption">The Quad-City Times ran this headline eight days before the river reached its crest</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>"Hey,&rdquo; Hagge said in 1993. &ldquo;My attitude is that I chose to live in a flood plain. I''ll deal with it myself."</p>\r\n<p>Eventually, however, the Hagges decided that they could deal with it no more. The Davenport store closed because, as Steve&rsquo;s brother Greg Hagge said, the family was &ldquo;tired of fighting the floods.&rdquo; After the record flood of 1993, the family was not keen to deal with the next one.</p>\r\n</div>', 'Draft', '2016-04-21 20:56:10');
INSERT INTO `stories` (`id`, `f_county_id`, `story_name`, `title`, `location`, `byline`, `story_content`, `status`, `last_modified`) VALUES
(85, 82, 'ScottFloodOf1965', 'Gambles Lost and Won: Scott County Flood of 1965', 'Scott County, Iowa', 'Jessica Rusick', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">In April of 1965, the roads near the Jones&rsquo;s Pleasant Valley home were under five feet of water. </span>The flood had already forced them to move to their second home in Davenport, but they came back periodically to check how the fortifications on their newly built luxury home were holding. Sandbags, tarps, and boards kept the water in the yard from seeping in, but nothing &ndash; not even the two large sump pumps that Mr. Jones and Mrs. Jones put in the crawl space beneath their house &ndash; could stop the water coming up through the floors.</p>\r\n<p>&ldquo;Back in the flood of 1952, long before our house was built, our lot didn&rsquo;t even go underwater,&rdquo; said Mr. Jones. Now, thirteen years later, the flood had forced the Joneses to pull up their carpeting, stack their furniture and appliances four feet off the floor, and say a temporary goodbye to their home on the river.</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/scott/ScottFloodOf1965/65_ivan_jones_1_Edited.jpg" alt="" width="500" height="352" />\r\n<p class="caption">The Joneses&rsquo; home was sandbagged, boarded, and tarped during the flood of 1965</p>\r\n<p>The record-setting flood of 1965 was spurred on by a cold and snowy March, when temperatures dipped 10 to 15 degrees below average and between 40 to 60 inches of snow fell upriver in Minnesota and Wisconsin. The snow melted quickly when temperatures warmed in late March and early April. Since the ground was still frozen, however, the snowmelt ran into waterways instead of soaking into the ground. From April 3 to April 7, up to 3 inches of rain fell across the Mississippi river basin, causing rivers to further overflow their banks. In mid-April, the U.S. Corps of Engineers predicted that the river would crest at 19.5 feet. This was not only significantly higher than the crest of 1952 &ndash; it was .1 foot higher than the all-time record crest set in 1892. At the end of April, after persistent rain and revised predictions, the river would crest at an unthinkable height &ndash; 22.48 feet.</p>\r\n<p>As the Joneses scrambled to protect their home, volunteers and city officials struggled to protect Davenport&rsquo;s water supply. If the Iowa American Water Plant was compromised, engineer Karl C. Cesler told the New York Times, tens of thousands of people &ndash; many of whom were wading in murky water up to their knees &ndash; would be without the clean stuff.</p>\r\n<p>&ldquo;Water, that&rsquo;s our big worry now,&rdquo; Mayor Ray O&rsquo;Brien said. &ldquo;We might get along without other so-called essentials. But not water!&rdquo; Hospitals in Davenport filled large barrels to prepare for the worst-case scenario, but even those would not be enough to provide water for the entire town. As Cesler asked, &ldquo;How do you truck water to 90,000 people?&rdquo;</p>\r\n<img src="../../resources/image/scott/ScottFloodOf1965/qctimes_65_buffalo_paper_boy_Edited.jpg" alt="" width="500" height="1147" />\r\n<p class="caption">A Buffalo paperboy delivers the Davenport Times-Democrat</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/scott/ScottFloodOf1965/sandbag_tie_Edited.jpg" alt="" width="500" height="646" />\r\n<p class="caption">When they ran out of twine, Davenport residents used ties to tie sandbags</p>\r\n<p>On April 27, a day before the flood crest, a break in the dirt levee surrounding the water plant could have been catastrophic. Luckily, volunteers were there to repair the damage and patrol the area overnight.</p>\r\n<p>The Jones&rsquo;s home, however, did not escape damage. After the flood, Mr. Jones and Mrs. Jones returned to a house where the doors wouldn&rsquo;t close and the floors &ldquo;bowed up fantastically.&rdquo; Water, Mr. Jones said, &ldquo;was running out of the stove.&rdquo; Although the damage was extensive, all that time spent putting up sandbags, boards, and tarps paid off. &ldquo;I&rsquo;ve been in the investment business for years, and I always tell customers not to gamble,&rdquo; Mr. Jones said. &ldquo;Well, I guess I gambled myself this time on my house. I can&rsquo;t say that I&rsquo;ve totally lost, but I&rsquo;ve certainly not won.&rdquo; Still, the Joneses were ready to repair their house, move back in, and gamble again. &ldquo;I always say, when you end up with a lemon, there&rsquo;s always one thing you can do &ndash; make lemonade.&rdquo;</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img src="../../resources/image/scott/ScottFloodOf1965/65_jones_before_after_Edited.png" alt="" width="500" height="628" />\r\n<p class="caption">The Joneses&rsquo; home before and during the flood</p>\r\n</div>', 'Draft', '2016-04-21 20:55:53'),
(87, 100, 'GregCarmichael', 'Greg Carmichael', 'Professor of Chemical and Biochemical Engineering, University of Iowa', '', '<p><iframe src="https://player.vimeo.com/video/163011656?title=0&amp;byline=0&amp;portrait=0" width="720" height="405" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>\r\n<p class="reversetype" style="text-align: center;">Recommended Link:<a class="reversetype" href="https://www.edf.org/">Environmental Defense Fund</a></p>', 'Draft', '2016-04-17 21:08:42'),
(88, 90, 'WapelloFLoodOf1993', 'Crops Overindulge ', 'Wapello County, Iowa', 'Emma Husar', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">In the span of a whole year in Wapello County an average of 33 inches of rain falls; in 1993, </span>between April and August, 48 inches fell. The Raccoon and Des Moines rivers crested at 22.15 feet, breaking the Wapello flood record. Water pouring out of the Red Rock Dam upstream from Wapello County was running &ldquo;fast enough to fill 25-yard-long high school swimming pools every second&rdquo;. All that water gushed into Wapello first at Eddyville, and subsequently at Ottumwa. There, &ldquo;the river has already burst through a railroad embankment, outflanking another levee, to flood the western edge of town. This neighborhood will likely stay under water for as much as a month because the 100-foot breach cannot be fixed until the waters recede,&rdquo; said the assistant city administrator overseeing flood relief work, W. Alan Winders.</p>\r\n<p>Residents were evacuated. If they had nowhere to go, they ended up atop a bluff at the local high school that, like in a time of war, &ldquo;was converted into a Red Cross shelter with cots in the gymnasium.&rdquo;</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img src="../../resources/image/wapello/WapelloFLoodOf1993/flood_damaged_field_Edited.jpg" alt="" width="500" height="345" />\r\n<div class="vspacer">&nbsp;</div>\r\n<p>Bill Albert, who had been farming for 34 years, was patient with the inclement weather. Albert said, &ldquo;We just count our blessings and go from day to day and don&rsquo;t worry about it.&rdquo; Ralph Newman also was in no hurry to plant. He informed The Ottumwa Courier that &ldquo;you raise two things in a mud hole: weeds and cost of production.&rdquo;</p>\r\n<p>It was smart to wait. After a while it was clear that the flooding in 1993 created diseased corn and soybeans, decreasing the crop yield. The average soybean yield for Iowa was 20% less than surrounding years. The flooding did not give the plants&rsquo; roots room to grow and on top of that, the boundless rainfall brought on &ldquo;Brown Spot, a rain borne fungal disease that defoliated soybean leaves.&rdquo; In the fall, premature defoliation (loss of leaves from the plants) from foliar diseases was prevalent, and many soybean fields turned yellow before September. Sudden death syndrome for soybeans&mdash;a fungus present in soil that first infects the roots before consuming the whole plant&mdash;was first found in Iowa in 1993.</p>\r\n<p>Corn too was threatened-- by Crazy Top and Corn Rusts. These two diseases occur when corn plants stand in water for a long time. Crazy Top is caused by a downy mildew fungus. Corn Rust, on the other hand, is a fungus that flies through the air and thrives on moist or wet leaves. Even a morning dew is enough to activate the fungus.</p>\r\n<p>In Wapello, where agriculture accounts for half of the county&rsquo;s income, the loss was devastating. "You lose money all the way down the chain," said Charles Barnett, executive vice president of the Ottumwa Area Chamber of Commerce. Jobs related to Deere &amp; Co. as well as corn processing plants in Eddyville were threatened and many lost, as were innumerable acres of farmland. According to the Washington Post, &ldquo;The interdependent members of the Wapello County farm economy agree: 1993 is too wet.&rdquo;</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/wapello/WapelloFLoodOf1993/ariel_Edited.jpg" alt="" width="500" height="379" />\r\n<p>The Ottumwa Courier looked at more than residential decimation. On May 5 they noted, &ldquo;The weather is frustrating many Southern Iowa farmers.&rdquo; Farmer Jim Bailey said that &ldquo;15 acres of his 200-acre farm near here were under water.&rdquo; Another farmer, Nioll Wilkening, recalled that, in 35 years of farming, he never experienced so harmful of a season for farmlands as in 1993. It was so bad that, by early May, he still had not planted corn. He said, &ldquo;The ground is too cold and too wet. State officials reported that 69% of Iowa&rsquo;s topsoil and 80% of subsoil had excess moisture. Planting under these conditions can be very harmful to the development of the plants; however, neglecting to plant can also be detrimental to the economy.</p>\r\n<img src="../../resources/image/wapello/WapelloFLoodOf1993/rusty_corn_Edited.jpg" alt="" width="500" height="687" /></div>', 'Draft', '2016-04-21 20:56:01'),
(90, 100, 'JeanGoodwin', 'Jean Goodwin', 'Professor of Speech Communication, Iowa State University', '', '<p><iframe src="https://player.vimeo.com/video/163011654?title=0&amp;byline=0&amp;portrait=0" width="720" height="405" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>\r\n<p class="reversetype" style="text-align: center;">Recommended Link: <a class="reversetype" href="http://www.yaleclimateconnections.org/" target="_blank">Yale Climate Connections</a></p>', 'Draft', '2016-04-17 21:19:37'),
(91, 100, 'EricTate', 'Eric Tate', 'Geographical and Sustainability Sciences, University of Iowa', '', '<p><iframe src="https://player.vimeo.com/video/163011653?title=0&amp;byline=0&amp;portrait=0" width="720" height="405" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>\r\n<p class="reversetype" style="text-align: center;">Suggested Link: <a class="reversetype" href="http://www.ccacoalition.org/en" target="_blank">Climate &amp; Clean Air Coalition</a></p>', 'Draft', '2016-04-17 22:33:29'),
(92, 100, 'BetsyStone', 'Betsy Stone', 'Department of Chemistry, University of Iowa', '', '<p><iframe src="https://player.vimeo.com/video/162976674?title=0&amp;byline=0&amp;portrait=0" width="720" height="405" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>\r\n<p class="reversetype" style="text-align: center;">Recommended Link: <a class="reversetype" href="https://www3.epa.gov/climatechange/">EPA-Climate Change</a></p>', 'Draft', '2016-04-17 23:18:16'),
(93, 100, 'ChrisAnderson', 'Chris Anderson', 'Climate Science Program, Iowa State University', '', '<p><iframe src="https://player.vimeo.com/video/163011526?title=0&amp;byline=0&amp;portrait=0" width="720" height="405" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>\r\n<p class="reversetype" style="text-align: center;">Recommended Link: <a class="reversetype" href="http://katharinehayhoe.com/">Katharine Hayhoe, Climate Scientist</a></p>', 'Draft', '2016-04-17 23:22:36'),
(94, 100, 'DavidOsterberg', 'David Osterberg', 'Occupational and Environmental Health, University of Iowa', '', '<p><iframe src="https://player.vimeo.com/video/163011652?title=0&amp;byline=0&amp;portrait=0" width="720" height="405" frameborder="0" allowfullscreen="allowfullscreen"></iframe></p>\r\n<p class="reversetype" style="text-align: center;">Recommended Link:<a class="reversetype" href="http://www.papalencyclicals.net/"> Papal Encyclicals Online</a></p>', 'Draft', '2016-04-17 23:28:37'),
(95, 90, 'WapelloFloodOf1947', 'Duck Dinner', 'Ottumwa, Wapello County, Iowa', 'Emma Husar', '<div class="leftcol500 nomargin">&nbsp;</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p><span class="lead_in">&ldquo;In 1947 there was a flood in the spring.</span> In those days there were no levees or flood control dams,just raw ,wild rivers,&rdquo; an Ottumwa resident recalls from his eighth summer on this earth. When the flood waters in Ottumwa began to rise, he, his mother, father and four-year-old sister feverishly began to move furniture and valuables to the second floor. Once that was done, his mother sent him out to get some bread so they wouldn&rsquo;t starve. When he left, the water was at his feet and rising. On returning home, he was trudging through about 3 feet of water that leveled off at his hips.&rdquo;</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/wapello/WapelloFloodOf1947/flooded_streets_Edited.jpg" alt="" width="500" height="269" /> <img src="../../resources/image/wapello/WapelloFloodOf1947/eddville_Edited_-_Copy.jpg" alt="" width="500" height="671" />\r\n<p>As for the family missing those two ducks, &ldquo;after the water went down everything was covered in mud. My father used a hose to wash mud out the front door. He had to replace the flooring and wallboard where the water had ruined it&hellip;in every room in the whole house. He also had to pump all the water out of the basement and clean up all the mud out of there too. It took more than 2 years to rehabilitate the house to where it was livable again. Part of that time we lived with my mother&rsquo;s brother at his house. He also helped my father work on the house till we could move back in it again.&rdquo;</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>They waited out the waters on the second floor of their home.&ldquo;After a couple of days, boats came around and asked if we wanted to be rescued. My dad said no. I think he was afraid of looters coming in and stealing what little we had. Well after about a week all our food was gone and we needed more.&rdquo;</p>\r\n<p>These days succeeding the initial flood were rough for Ottumwa and all of Wapello County. Saturday, June 7, 1947 saw the river crest for the first time at 20.24 feet. That night the city was out of power, out of homes, out of businesses, out of crops and gardens. All seemed to have washed away.</p>\r\n<p>The neighborly Midwest did not leave Ottumwa to starve. People in surrounding towns donated drinking water, food, and clothing that came in by truck. The Decatur Daily Review, an Illinois newspaper, got hold of information that &ldquo;the Red Cross and Salvation Army were feeding most of the 10,000 persons left homeless by the flood in Ottumwa.&rdquo; However the family of the eight-year-old Ottumwa resident stayed put on the second floor of their house. His uncle came to give them groceries, and when his father went out to secure them, the water was over his shoulders. Hungry nights came and went and then, out of the blue, his family of four were enjoying a chicken his mother had prepared. Coincidentally, his pet duck went missing. He recalls his mother saying, &ldquo;Well, you know how ducks are&mdash;he was probably around the neighborhood somewhere.&rdquo;</p>\r\n<p>Too soon after the June 7 flood, once the water slowly began to recede and people started to pick up the muddy mess in their homes and businesses, there was a warning that a subsequent flood would hit on June 14th. The crest was expected at 20.05 feet, just below the previous week&rsquo;s record breaking 20.24 feet. Eddyville&rsquo;s 1,000 residents deserted their entire town when it was submerged. Ottumwa, on the other hand, strove to build dikes and pile sandbags in order to weaken the impact. Still, the city was pummeled with water once more.</p>\r\n<p>Evacuation centers were established in schools. They were stocked with food, some of which came from &ldquo;12 plane loads of food and supplies [from the U.S. 5th army headquarters],&rdquo; reported the Iowa City Press-Citizen on June 14, 1943. Unfortunately, the eight-year-old and his little sister&rsquo;s second duck went missing. Once more they had a chicken on the table, part of his mother&rsquo;s scavenging for calories for four people in this impossible time.</p>\r\n<p>The 1947 floods proved a pivotal moment for Ottumwa&rsquo;s history, leading to a massive project to straighten the river&rsquo;s course, widen the channel, build protective levees, and repurpose land in the floodplain.</p>\r\n<img src="../../resources/image/wapello/WapelloFloodOf1947/tent_refugees_Edited.jpg" alt="" width="500" height="402" /></div>', 'Draft', '2016-04-21 20:55:39'),
(99, 78, 'FloodOf1881', 'Why it’s Called the “Big Muddy”', 'Pottawattamie County, Iowa', 'Emma Husar', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">The Missouri River, the &ldquo;Big Muddy&rdquo;, the border distinguishing Iowa from Nebraska,</span> Council Bluffs from Omaha, rolls powerfully from the Upper Missouri River in the Rocky Mountains. The waters then meander through the lower Missouri River beginning just south of Yankton, South Dakota, until they meet the Mighty Mississippi. The Council Bluffs-Omaha region along the lower Missouri River is part of a long history of tide fluctuations between seasons. Long before settlers came to this region, the water was washing to and fro around the bluffs and back into the river. &ldquo;For centuries [&hellip;] melting snows in the headwaters caused April floods, while snowmelt and rain caused June flooding. The annual flooding cycle created a rich ecology for the Missouri River basin [&hellip;] that provided fertile breeding grounds for fish and fowl.&rdquo; The settlers, in the spring of 1881, encountered the harsh realities of this history and were first to deem the cycle &ldquo;destructive&rdquo; to their way of life. Yet for convenience of the river and the beauty of the bluffs they stayed and built lives on the banks.</p>\r\n<p>In the winter of 1880-81, especially near the upper Missouri River, &ldquo;there was particularly heavy snow, and the primitive roads became impassable. Railroads were blocked with snow and could be cleared only with difficulty.&rdquo; But this was only the beginning of the traffic jams. Once March came to a close, the temperatures in the upper basin rose above average. The snow was melting fast and had only one place to go: the Missouri River. The abrupt surge of water swelled toward the lower basin where temperatures had not yet increased and ice was still several feet thick.</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/pottawattamie/FloodOf1881/union_pacific-Edited.jpg" alt="" width="436" height="441" /></div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p>Beginning in South Dakota and flowing towards Iowa, &ldquo;ice dams and subsequent flooding [&hellip;] resulted in the loss of thousands of cattle, [human] lives were lost and entire towns were destroyed.&rdquo; This began a domino effect on March 29, 1881, though it did not hit Council Bluffs until April 6. And fortunately for Pottawattamie County, residents knew what was coming a few days before the flood arrived. They had been informed that upriver &ldquo;Yankton had seen a 35 foot rise.&rdquo;</p>\r\n<p>A temporary dam was built, residents were urged to seek higher ground, and several were welcomed in by generous neighbors. The afternoon of the 6th came cascading and washed wide the divide between Council Bluffs and Omaha. That day the dam burst, &ldquo;Omaha Smelting Works and Union Pacific Shops were almost completely submerged.&rdquo; Soon after, &ldquo;the floodwaters crested at 23.5 feet&mdash;two feet higher than ever recorded on the river.&rdquo; The river broke the levee built to protect Council Bluffs against the flood waters, and its width grew daily and eventually separated the two cities by 5 miles. An eyewitness account on April 9th reported, &ldquo;at one o&rsquo;clock this morning the water was rising gradually in the river and pouring into the basins surrounding the lumber and coal yards in overwhelming streams.&rdquo;</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/pottawattamie/FloodOf1881/Flood1881.jpg" alt="" width="500" height="328" /></div>\r\n<div class="rightcol500 nomargin">\r\n<p>Railroads were submerged. Only occasionally rails that had once formed a bridge over the water could be seen skating across the waterline. Mid-April, trains from Chicago gained access to Council Bluffs to take passengers and mail from the disaster site, leaving those across the 5 mile, impassible expanse in Omaha stranded until the high tide ebbed.</p>\r\n<p>The water stayed for nearly all of April until it began to recede on the 27th. On April 25th in Council Bluffs, &ldquo;600 people were homeless, with more than half of the city inundated with water.&rdquo; Yet they were approaching the dawn of the floods dissipation. Back in 1881, the Omaha Bee reported that &ldquo;such a feat was never before known&rdquo; and at 23 feet and 4 inches above the low watermark, it was &ldquo;1 foot and 5 inches above the highest rise ever known.&rdquo; When the 27th arrived, clean up commenced, people finally returned home; however, it was reported that the city had a few million dollars in damages yet to pay.</p>\r\n<p>Glass half full, it was also reported that &ldquo;the snail like pace at which the water [was] rising [robbed] it of the loss of life by which it would be marked, and gives time for the saving of much property&mdash;otherwise this mighty flood would rank also as a mighty disaster.&rdquo;</p>\r\n</div>', 'Draft', '2016-04-21 20:54:59'),
(100, 85, 'Flood1944', 'Flood of 1944', 'Ames, Story County, Iowa', '', '<div class="leftcol500 nomargin">&nbsp;</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p><span class="lead_in">On May 18th 1944, nearly 5 inches of rain fell on the city of Ames located in Story County,</span>followed by another 4 inches on the night of May 19th. At the time, it was recorded as one of the worst flooding events in the city&rsquo;s history. The flooding caused an array of damage that resulted in one death.</p>\r\n<p>The only reported casualty in The Milepost the following week was that of Leonard Elliot. Leonard lived on a farm just east of town. Mr. and Mrs. Elliot had been rescued by local officers using a boat, but Leonard decided to return to his farm to save his livestock. Leonard never came back to his wife. It was later determined that he died from a heart attack while trying to save his live stock.</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/story/Flood1944/Photo2_Edited.jpg" alt="" width="500" height="327" />\r\n<div class="vspacer">&nbsp;</div>\r\n<p>The almost 9 inches of rain fell within a 24 hour period, resulting in depths of several feet of water on the streets. Many residential basements were flooded when water pushed in their grade windows. The storm sewers were unable to keep up with the amount of water, resulting in severe flooding of the businesses on Main Street. There and in the Fourth Ward, in campus town, severe flooding in basements destroyed goods. According to Farwell T. Brown, Montgomery Ward, J.C. Penney, Carr Hardware, and Younkers Stores reported significant inventory losses. It was estimated that merchandise worth thousands of dollars was destroyed by the flooding. The Tribune, a local newspaper, reported that only one of four of their linotype machines worked the next day after they stood in the 14 inches of water on the floor.</p>\r\n<p>In 1944, only a few of the businesses had flood insurance because it was rarely included in policies in the area. Most businesses were unable to collect damages caused by the flooding but were able to collect some damages caused by wind. Not being able to collect flood damages could have been very detrimental to small business owners. In more recent times, most businesses in Ames carry a policy with flood insurance due to the past history and vulnerability of flooding in the area. Since 1944, new procedures have been put in place to prevent destruction of this magnitude, including zoning regulations, insurance policies, better drainage systems, and better emergency plans. Still, the flood of 2010 did also damage both businesses and residential properties.</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>A personal account recorded in Ames Community History, a book regarding the history of Ames from 1864-1964, mentions the night of May 19th, 1944. One storyteller describes being at a high school graduation ceremony in Story City with family and then taking a Greyhound bus back to Ames that night. The bus was unable to drop Ames passengers off at their desired location because of the extent of the flood water. When the bus driver arrived at the bus stop, he suggested that it would be a good idea to remove shoes and socks if they were getting off the bus. The bus stop was near Main Street, and the storyteller recalled seeing business owners bringing up goods from their basements as they were filling up with water. There was no taxi service at the time, and cars were stalled all over. Also the disembarked bus passengers were unable to walk to their destination because of the strong current. They holed up at Frango&rsquo;s restaurant until a taxi could take them home. When they finally arrived at home, it was near 3 am.</p>\r\n<img src="../../resources/image/story/Flood1944/Photo1_Edited.jpg" alt="" width="500" height="739" /></div>', 'Draft', '2016-04-21 20:55:24'),
(101, 85, 'Tornado1944', 'Tornado of 1944', 'Maxwell, Story County, Iowa', '', '<div class="leftcol500 nomargin">&nbsp;</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p><span class="lead_in">On May 18th, 1944, around 10:30pm, a storm moved toward Maxwell, </span>a small rural town in Story County. Residents of the town remember the severe damage caused by the tornado and flooding from heavy rains. Merril Hoyt, 28, and West Mohler, 12, who perished in the storm that night, are still remembered by residents in the Maxwell area.</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/story/Tornado1944/Photo_3.jpg" alt="" width="500" height="396" />\r\n<p>The Rupes, an older couple living just outside of Maxwell in the path of the tornado, had a very close encounter with the destruction of the storm. The tornado killed a few pigs on their farm and even sent a piece of 2x4 through a sow&rsquo;s neck; she was later put down. The strong winds plucked the feathers off some of the chickens and destroyed all of the farm buildings. A tree fell just a few feet from them while they were lying in bed, and the sheets were ripped off the Rupes&rsquo; bed.</p>\r\n<p>The tornado then moved to the Mohler&rsquo;s residence. Harold Mohler, the father, was playing in the card game at Skinny Maneer&rsquo;s at the time of the storm. Gene Mohler, his wife, and her 3 children, were home at the time the tornado hit. The tornado displaced heavy machinery and destroyed many of the buildings on the farm. Wes[Garret wrote West; I&rsquo;m betting that&rsquo;s a computer correction for Wes.] Mohler, the oldest child, went up to the kitchen to retrieve something. The tornado picked him up and threw him into the basement where a car was dropped on him. After spreading grief at the Mohler&rsquo;s residence, the tornado popped up off the ground and returned back to the clouds.</p>\r\n<p>The tornado stayed in the rural areas just outside of Maxwell, so there was no serious damage to any of the local businesses or residents living in town. According to Dorothy L. Longcor, Stan Bullard kept his restaurant open all night to serve coffee and donuts to the rescue workers. There was, however, severe flooding along with the tornado. It was caused by heavy rains that raised Indian Creek over its banks.</p>\r\n<p>The tornado of 1944 was one of the worst recorded severe storms in the Maxwell area. It was estimated that the tornado was on the ground for nearly 5 miles. Another tornado occurred in Maxwell on September 1, 1965, but the severity of this storm was nowhere near that of 1944.</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>May 18th was graduation day for high school seniors at Maxwell High school; later that night was the Alumni Banquet, but it was cancelled due to the approaching storm and was never rescheduled.</p>\r\n<p>Jerry White, a 13-year-old student and resident of Maxwell at the time, recalls the destruction caused by the tornado to local residents in the area. Jerry White was not directly impacted by the tornado, but he remembers hearing about the damage from his neighbors by phone and driving around the next day to see the damage firsthand.</p>\r\n<p>In 1944, there were no sirens spread throughout the town to warn of a possible tornado in the area. As the tornado approached from the west, it moved toward Jack Vier&rsquo;s residence destroying his barn. After crossing a creek, the tornado then approached Skinny Maneer&rsquo;s residence. At the time of the storm, a card game was underway at Mr. Maneer&rsquo;s home. After the tornado passed there were cards and money spread out all over the yard and cemetery that was nearby.</p>\r\n<p>Merril Hoyte, was home with his wife and child when the tornado hit. The tornado carried his wife and child quite a ways before tossing them into a fence. His child and wife survived the tornado, but Merril was killed in the destruction.</p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<img src="../../resources/image/story/Tornado1944/Photo_2.jpg" alt="" width="500" height="493" /></div>', 'Draft', '2016-04-21 20:55:10'),
(102, 85, 'Flood2010', 'Flood of 2010', 'Ames, Story County, Iowa', '', '<div class="leftcol500 nomargin">&nbsp;</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p><span class="lead_in">It was the beginning of fall and the waters of the Skunk River and Squaw Creek were already peaking near the crest. </span> There was also high soil saturation from large amounts of rain in the past couple of weeks. On August 10, 2010, a storm that brought a large amount of rain pushed the water levels over the crests towards businesses and houses.</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/story/Flood2010/Photo_3_Edited.jpg" alt="" width="500" height="333" />\r\n<p>At around 5:30 on the morning of August 10th, 2010, water went over the retaining wall and into the restaurant. Hank estimated the height of the water at 51 inches. The water completely destroyed the inside of the building. The restaurant ended up losing power spoiling all the food in refrigerators and freezers; there was also floating equipment dispersed throughout the building including pieces of the salad bar. The building was deemed unusable.</p>\r\n<p>With new technology in 2010 including 24 hour weather stations, on demand rain totals, and weather apps, Hank was aware of the potential flooding. He mentioned looking at different weather websites including NOAA to see the live rain totals. He was as prepared as he could possibly be. He recalled going early that morning to the restaurant to see what damage had been done, but the city had said it was unsafe, and the area needed to be evacuated. Hank waited out the remainder of the day until he could go back.</p>\r\n<p>The flood of 2010 closed Happy Joe&rsquo;s in Ames for good. There were a couple reasons why Hank decided not to reopen the restaurant. The area in which the restaurant was located was very prone to flooding, and it was just a matter of time before it would happen again. He also knew that he would have to raise the retaining wall even higher, possibly ruining the appearance of the restaurant. Also, Hank would have to completely rebuild again from the ground up, and a new city regulation required that he raise the land another 6 feet before rebuilding.</p>\r\n<p>The flood of 2010 is still ingrained in a lot of people&rsquo;s mind. It changed the landscape in the area that the locals were familiar with. Happy Joe&rsquo;s wasn&rsquo;t the only business in the area to close down. Twentieth Century Bowling, which had also been around for a long time, ended up closing. There was also major flooding at Iowa State University that damaged Hilton Coliseum.</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>On the south side of Ames, Iowa, lay Happy Joe&rsquo;s at 551 S. Duff, a restaurant that specialized in pizza and arcade games. Hank Kohler, the owner of Happy Joe&rsquo;s, opened the restaurant in 1984 and had many encounters with flooding in this location. Happy Joe&rsquo;s was located in a low lying area next to a creek that dumped into a river about a half mile downstream. With heavy rain, the river would get backed up. This, in turn, would back up the creek causing it to overflow.</p>\r\n<p>In 1993, there was a large flood that damaged the original Happy Joe&rsquo;s; the damage was so severe that Hank had to rebuild. At this time, Hank built a four foot retaining wall around the building to protect from future flooding. This retaining wall helped protect his restaurant in the flood of 1996. Also, before 1993 there wasn&rsquo;t really any reliable warning system in place. According to Hank, it was only after 1993 that a good flood warning system was in place.</p>\r\n<img src="../../resources/image/story/Flood2010/Photo_4_Edited.jpg" alt="" width="500" height="750" /></div>', 'Draft', '2016-04-21 20:55:18'),
(107, 78, 'FloodOf2011', 'Flood of 2011', 'Pottawattamie County, Iowa', 'Emma Husar', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">U.S. National Weather Service reports: </span>&ldquo;Flooding is one of the leading causes of weather-related fatalities in the U.S. &hellip; People underestimate the force and power of water, especially when it is moving. Just six inches of fast-moving water can knock over and carry off an adult. Twelve inches of water can float a small car; if that water is moving, it can carry that car away. Eighteen to twenty-four inches of flowing water can carry away most vehicles.&rdquo;</p>\r\n<p>Council Bluffs area recorded flood waters cresting at 36 ft. (or 432 inches) from June 22, 2011 until September 30, 2011. Submerged major roadways were destroyed, parks became beaches, and farmland turned into sand deposits teeming with weeds and felled trees. These were the repercussions of both &ldquo;extremely heavy rains in the upper Missouri River basin&rdquo; and an abnormally heavy and early snowfall that was melting in the Rocky Mountains. Record breaking amounts of water surged from major dams before flooding innumerable Iowa sites, Council Bluffs being one of them.</p>\r\n<img src="../../resources/image/pottawattamie/FloodOf2011/1-_Bridge.jpg" alt="" width="500" height="291" />\r\n<p>The levee system built after the 1942 flood proved its strengths in saving Council Bluffs from experiencing even more incomprehensible damage. It seemed to live up to the claim that its existence &ldquo;reduces direct flood risk for 64%of the city.&rdquo; Even bloggers recognized that &ldquo;[b]ecause of the dam system, the Corps of Engineers was able to take the top off a monstrous flood and spread it out over time. So now we have a severe to moderate flood for at least two months straight.&rdquo;</p>\r\n<p>However, following this newly devastating event it was clear that the &ldquo;design safety factors were lower than required levels,&rdquo; and so Council Bluffs received &ldquo;$20.4 million in Federal emergency assistance.&rdquo; If the levee system was unable to meet FEMA&rsquo;s (Federal Emergency Management Agency) accreditation standards, then flood insurance would go up and new building requirements could negatively affect Council Bluffs&rsquo; economy.</p>\r\n<p>The entire summer of 2011 was a &ldquo;wash-out&rdquo;; it twisted and uprooted the land, the people and the city&rsquo;s economy. All that man had made put to the test yet again by the unprecedented power of water.</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/pottawattamie/FloodOf2011/1-_Arial_View.jpg" alt="" width="500" height="375" />\r\n<p>Immense amounts of water swept normal life from the region. Some residents packed their dry bags and left their inundated homes behind; others bore the burden of the mess it wrought. Although in order to rebuild roads, homes, and businesses it would take approximately $114 million.</p>\r\n<p>Fortunately, &ldquo;The city of Council Bluffs and JEO&hellip;worked hard to receive $57,000,000 from the Iowa Flood Mitigation Program&rdquo; and other government funding that helped Council Bluffs evade severe economic repercussions. These millions of dollars kept people in their homes, traffic clear, and brought business back on track. Financial aid helped. But the city had more than dollar bills to thank.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<img src="../../resources/image/pottawattamie/FloodOf2011/1-_Missouri_River.jpg" alt="" width="500" height="281" /></div>', 'Draft', '2016-04-21 20:54:45'),
(108, 78, 'FloodOf1952', 'The Wild Missouri ', 'Pottawattamie County, Iowa', 'Emma Husar', '<div class="leftcol500 nomargin"><img src="../../resources/image/pottawattamie/FloodOf1952/1-Omaha.jpg" alt="" width="500" height="337" />\r\n<p>A documentary entitled Man Against the River explains:</p>\r\n<p>Never before had such a massive project been undertaken. Thousands of workers technicians and laborers, tons of steel and concrete, acres of earth and rock. The construction of the dams on the Missouri River required 1.1 billion dollars across six years; the six reservoirs constructed can hold enough water to cover the entire state of Nebraska to a depth of 18 inches.</p>\r\n<p>However grand the project, its architects did not expect the river to flood again in such a short time span. Only nine years later in 1952, before all the levees and dams were yet completed, the Wild Missouri swelled to unprecedented degrees once more due to unforeseen and rapidly melting snow up north.</p>\r\n<p>Man Against the River, produced by Dave Hamer in 1982 harkens back to the astounding flood in 1952 that tested the people&rsquo;s newfound knowledge on flood containment. Edward R. Murrow&rsquo;s opening footage gazes upon one big, white light piercing the dead night. It creeped across the banks of the river, momentarily illuminating workmen who piled sandbags in order to prevent the flood from consuming their home and lives.</p>\r\n<img src="../../resources/image/pottawattamie/FloodOf1952/1-Sandbag.jpg" alt="" width="500" height="567" /></div>\r\n<div class="rightcol500 nomargin">\r\n<p><span class="lead_in">The &ldquo;Big Muddy&rdquo; strikes again. </span> The culprit: none other than the rapidly melting snow in Montana and South Dakota. For Council Bluffs, it had been 62 years since the community was threatened by waters that gushed into the lower Missouri River; this time cresting at 22.45 feet in the midst of the Second World War in early April of 1943.</p>\r\n<p>Flood waters splayed over the lowlands of Council Bluffs, inland 16 miles, drowning 700,000 acres of agricultural land and leaving many people homeless. Little did residents know, that would be only the first of three total floods that year. Heavy rains in May caused 540,000 more acres to flood and yet more in June.</p>\r\n<p>The cost was equally as heavy. An estimated 8 million dollars in damages made the Omaha-Council Bluffs area rethink the construction of levees and dams on their banks of the Missouri River. The Missouri River Basin Education Network accurately puts it: &ldquo;the flood of 1943 was a turning point in flood management on the Missouri River.&rdquo; One year later congress passed the Flood Control Act of 1944 that authorized a levee system as well as 6 dams along the river.</p>\r\n<img src="../../resources/image/pottawattamie/FloodOf1952/1-SiouxCity.jpg" alt="" width="500" height="393" />\r\n<p>These men and women came from as far as Kansas, Massachusetts and California to work for shifts as long as 48 hours. Bank clerks, insurance salesmen, mechanics and more from Omaha-Council Bluffs received leave from work or simply left to volunteer their time to protect their cities.</p>\r\n<p>One insurance salesman from Omaha commented on his part:</p>\r\n<p>I sit behind what they call a desk all day long, well when this emergency arose we feel these here are the people we have to serve throughout our life and so we were down here working&mdash;many of us down here working, like myself&mdash;we finished up last night on a 36 hour shift with about one and a half hours of sleep. We came out bright an&rsquo; early this morning until it&rsquo;s over with.</p>\r\n<p>Bill Billotte, a local news reporter, recounts, &ldquo;An army it was, with its members using sandbags instead of bullets to fight as savage an enemy as has ever faced this country.&rdquo; A sandbag wall of 15 feet was completed to protect against the creation of a new dike on the west side of the river. The &ldquo;herculean efforts of both cities&rdquo; was hoped to be successful; however, many were reported to being as &ldquo;superstitious about discussing the chances as ball players watching a no-hit, no-run game in the making.&rdquo;</p>\r\n<p>At 4:30 in the morning on April 17, 1952, the flood was predicted to hit. The estimated 50,000 volunteers behind their sandbags watched as the waters rose to a depth of 30 ft., 11 ft. higher than usual, but below the height of their walls. Their anxiety receded with the river as it swelled downstream. After capturing the struggle and triumph of the working men on film, Murrow reports, &ldquo;There are some things a machine can&rsquo;t do, and that is place a sandbag in the right place at the right time; sandbags make all men equal.&rdquo;</p>\r\n</div>', 'Draft', '2016-04-21 20:54:51'),
(109, 12, 'TornadoOf2008', 'Tornado of 2008', 'Parkersburg, Butler County, Iowa', 'Abu Maroof', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">The year 2008 is unforgettable to the residents of Butler County. </span> Parkersburg, a small town in Butler County, was hit by an EF5 tornado on May 25, 2008. It was one of the most devastating tornadoes in recent history. The tornado path was just along Highway 57. Eight people were killed, fifty people were injured, and the damage was millions of dollars according to the National Oceanic and Atmospheric Administration (NOAA).</p>\r\n<p>Butler County has low risk of earthquake, drought and blizzard. It has moderate risk of severe weather, tornadoes and flood. Since 1991, nine PDD (Presidential Disaster Declaration) have been announced for Butler County. Table 1 Shows the date and weather type of the PDD.</p>\r\n<p>Though tornado risk is moderate, Butler County has experienced some devastating tornado events in past decades. Table 2 shows the number of tornadoes experienced in Butler County in the last 60 years (total of 21), and Figure 1 shows the paths. In addition to the EF5 category tornado that hit the town of Parkersburg in 2008, the state-wide flood of that year also affected the county.</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>HAZARD HISTORY</p>\r\n<p>Table 1:Number of PDD since 1991</p>\r\n<img src="../../resources/image/butler/TornadoOf2008/Table_1.jpg" alt="" width="300" height="270" />\r\n<p>Table 2:Number of Tornadoes per decade</p>\r\n<p><img src="../../resources/image/butler/TornadoOf2008/Table_2_edited.jpg" alt="" width="200" height="177" /></p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">First State Bank</span></p>\r\n<p>The powerful 2008 tornado flattened almost a third of the city of Parkersburg, including 22 businesses, but left the downtown business area almost untouched. City Administrator of that time, Chris Luhring said &ldquo;It&rsquo;s true, the storm did not damage any of the buildings [downtown], but the businesses depended on the community around them.&rdquo;</p>\r\n<p>The business corridor along Iowa Highway 57 was virtually wiped out. Banks were among those damaged or destroyed. First State Bank, just built in 2004, was destroyed, although the bank shut down for only a day or two. The other major financial institution, Iowa State Bank, also sustained heavy damage. Rhonda Maifeld of Iowa State Bank said cooperation among the bank&rsquo;s branches was crucial to keeping the institution running in the immediate fallout of the storm. &ldquo;We were able to operate out of two computers out of there,&rdquo; she said. &ldquo;Luckily, we had a couple of other locations running, and we had others helping.&rdquo; Working in the middle of debris was a challenge. Three people at the bank handled the large number of concerned account holders looking for money and answers.</p>\r\n<p>In 2013, Maifeld said that the community responded swiftly after this catastrophic event. She was heartened by the community and the cooperation of the people after the disaster. It was a nightmare for the whole town, but they took a positive approach and were strong enough to overcome the impact.</p>\r\n<p><img src="../../resources/image/butler/TornadoOf2008/1-Edited.png" alt="" width="500" height="429" /></p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p><img src="../../resources/image/butler/TornadoOf2008/2-Edited1.png" alt="" width="450" height="645" /></p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">S&amp;S Grocery</span></p>\r\n<p>S&amp;S Grocery was the only grocery store of Parkersburg at the time of the tornado. It was totally demolished by the tornado and the owners (Blake and Kathy Simon) were forced to shut down their business after the event. They had owned the business for 20 years and had remodeled their store about 10 years ago earlier. But they were unable to cope with the loss after the disaster. The town was without a grocery store after the disaster. Then another local family came to open a new grocery store at the same location. These two families were known to each other and trusted each other. Blake and Kathy Simon wanted to leave the town at first, but they stayed and Kathy ended up as the operations manager for the new grocery store. She said that the community was very supportive and there was a good customer base. The town appreciated the reopening of the business though there was a new owner. The community was without a grocery store for a long period after the disaster, but they worked their way through this challenge and stuck together.</p>\r\n<p>The business corridor along Highway 57 has come back, with just a couple of exceptions, said Virgil Goodrich, who retired in 2012 as the city&rsquo;s economic development director. He was encouraged that all but two businesses along the highway returned. People were affected but they did not lose hope. Also, since the tornado of 2008, some 12 new businesses have come into town. He said, &ldquo;I think seeing how well Parkersburg rebuilt, the fact that the people were very positive about doing this, encouraged a lot of people to see that this was a good community to come into.&rdquo;</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p><img src="../../resources/image/butler/TornadoOf2008/3-Edited.png" alt="" width="500" height="310" /></p>\r\n<p>Community bond is a major issue to revive after a catastrophic event. It may be easier for a small community like Parkersburg to have a strong bond than a large community. Just the same, it has to be said, people of Parkersburg were hit hard by the tornado, but they did not give up. Only two businesses were permanently closed and the community played a major role in the survival of the others.</p>\r\n</div>', 'Draft', '2016-04-21 22:27:17');
INSERT INTO `stories` (`id`, `f_county_id`, `story_name`, `title`, `location`, `byline`, `story_content`, `status`, `last_modified`) VALUES
(110, 8, 'TornadoOf1918', 'Building Bethel', 'Boone County, Iowa', 'Emma Husar', '<div class="leftcol500 nomargin">&nbsp;</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p><span class="lead_in">In the first years of the twentieth century, </span>several families began to meet in the Centennial School house to share in their Christian faith. However as the group grew they began to seek out a separate structure to house their faith. &ldquo;On December 21, 1907, a meeting was held at Herman Finestead&rsquo;s home to make plans for building Bethel Church.&rdquo; In Boone, Iowa, construction began on February 2, 1908, between a creek and the Pleasant Hill cemetery. Bethel, as it was known, was formed with the help of generous donations from several parties: Daniel H. and Susan Nolan donated the land and James Quincy Stumbo made other material contributions. During the construction, people banded together to cut down trees for lumber, to haul rocks, and to collect more lumber from town. Bethel Church was dedicated in April 1909, and by 1910 a parsonage was built by James Quincy Stumbo a fourth of a mile north and east of the church. However, only ten years later their work proved to be in vain.</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/boone/TornadoOf1918/bethel_church_circa_1908-Resized.jpg" alt="" width="500" height="296" />\r\n<p class="caption">Bethel Church circa 1908</p>\r\n<p>The Chicago &amp; Northwestern railroad yards were hit the hardest, damages reaching upwards of $250,000. All trains on three of its lines were canceled. It did not stop there. &ldquo;Houses were tossed about&hellip;.Barns and sheds were carried through the air, people were picked up&hellip; livestock [and chickens] were scattered about and&hellip;killed.&rdquo; There were three total tornadoes that day, but all the real destruction resided in Boone County. Nine people died; between 55 and 80 were severely injured. The Eleanor Moore hospital was so full that they had a shortage of nurses.</p>\r\n<p>&ldquo;The day became almost black as night as the storm engulfed the east end of the town&hellip;&rdquo; And where the Bethel Church and parsonage so recently stood, only the floor and foundation remained. Even the Centennial School was gone. The Boone News-Republican noted, &ldquo;the ruin at Bethel covered the destruction of the beautiful church and the routing of cemetery headstones, which added to the gruesomeness of the plight.&rdquo;</p>\r\n<img src="../../resources/image/boone/popups/BethalPopup.jpg" alt="" width="500" height="317" />\r\n<p class="caption">Bethel Church Rebuilt circa 1918</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>The Boone News-Republican notes that &ldquo;The location of Boone east of the Des Moines River was thought to protect it from cyclones, since they usually run from southwest to northeast.&rdquo; Residents of Boone were confident that a cyclone would never hit; they were comfortable in their safe haven in blissful unawares. Unfortunately, &ldquo;the tornado of 1918 was an exception [to that rule]&mdash;it jumped the river.&rdquo;</p>\r\n<p>On May 21, 1918 a storm began to rage&mdash;lightning brilliantly lit the sky amidst &ldquo;great masses of black, then grey, and at times almost fiery red clouds.&rdquo; The tornado was especially characterized by its &ldquo;great roar&rdquo; that an eyewitness claims sounded like, &ldquo;a hundred mogul engines.&rdquo; This thundered into Boone from the southwest around 3:45pm and people in the city of Boone are said to have watched, for about ten minutes, the impending madness in the sky. Then it hit.</p>\r\n<img src="../../resources/image/boone/TornadoOf1918/CNW_Yards_After_Tornado_1918-Resized.jpg" alt="" width="500" height="297" />\r\n<p class="caption">C&amp;NW Yards after Tornado, Boone, Iowa, May 21, 1918</p>\r\n<p>Following this frightening day, however, the residents of Boone are said to have &ldquo;found the silver lining in those black clouds.&rdquo; It brought them together in a spectacular act of community. They all cleaned debris and cared for survivors. &ldquo;Donations of clothing, shoes and furniture were received and men even turned over vacant houses, garages, suites of rooms&hellip;for the people to occupy until houses were secured for them.&rdquo; Money was raised by Iowans to cover the total damage of more than half a million dollars in Boone alone. The men at the church too united in order to clear the wreckage of their church and to plan the rebuilding of Bethel. According to Bethel Church&rsquo;s website, &ldquo;The new church was built on the same foundation&rdquo; quickly following the disaster.</p>\r\n<p>The more people on a site, the more evident wreckage there will be. But it is also true that the more people, the more unified they become in order to repair and fortify what had broken.</p>\r\n</div>', 'Draft', '2016-04-21 20:54:36'),
(115, 8, 'TornadoOf1976', 'Jordan''s Wall of Wind', 'Boone County, Iowa', 'Emma Husar', '<div class="rightcol500 nomargin">\r\n<p><span class="lead_in">In the midst of a remarkable storm on the 13th of June in 1976 Roland Schoof, </span>his wife and two girls &ldquo;saw something in the storm they had never seen before.&rdquo; What they saw was a grey, mangled cloud of debris stretching from plowed fields to the clouds above, nearly a mile wide. Upon seeing this inconceivable feat of nature they fled their home. Upon their return hours later, they discovered to their dismay that they were homeless. In place of their house was a tractor buried &ldquo;nose deep&rdquo; in the ground. The Des Moines Register reported &ldquo;School didn&rsquo;t know where the tractor came from, but he would like to know where his car went. It was also carried away by the wind.&rdquo;</p>\r\n<p>What they, along with nearly everyone else in Central and North Eastern Iowa, witnessed on that stormy Sunday afternoon was a tornado measuring F5 on the Fujita Scale. It touched down at 3:30pm in the tiny farm town of Jordan, Iowa, in Boone County. This tornado was unique from others in their past; not only was it the largest tornado to strike Boone County, but it also formed four satellite tornadoes, one of which was classified as an F3 and was anti-cyclonically rotating (that is, clockwise--extremely unusual for tornadoes). Dr. Ted Fujita himself traveled to Boone County to examine the destruction, studying this tornado in depth. After examining the destruction and interviewing locals he remarked, &ldquo;[Jordan] was completely wiped out.&rdquo; The tornado demolished half of a wooden and corrugated-metal grain elevator, tore off the roof of an unused schoolhouse, and obliterated nearly all seven homes in Jordan and continued to do so as it moved on, taking the Schoof&rsquo;s car along with it. Fortunately, ambulance crews that arrived from the Boone Hospital did not have anyone to take back with them; the affected people acquired only minor injuries.</p>\r\n<img src="../../resources/image/boone/TornadoOf1976/Fujita_Resized.jpg" alt="" width="500" height="432" />\r\n<p>After Jordan, the tornado took an atypical &ldquo;L&rdquo; shaped path headed toward Story City in its 21-mile-long path of destruction, finally lifting nearly four miles from Gilbert around 4:15 pm. Back in Jordan&rsquo;s aftermath the city was sealed off, Iowa Power and Light Co. cut the natural gas and electric to avoid the possibility of fires. When the Boone County Sheriff Henry Wallace visited Jordan he claimed, after accounting for all persons, that &ldquo;there is no more Jordan.&rdquo; Fortunately for sufficient warnings and knowledge of tornado formation, the people of Jordan remained in tact. In the following days the small farming town, though demolished, became populated briefly by researchers and journalists who marveled at the fiercest tornado they had yet seen or heard of.</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/boone/TornadoOf1976/Tornado-Resized.jpg" alt="" width="500" height="369" />\r\n<p>All the destruction Iowa saw this day was spurred from what Fujita also claims was &ldquo;the very strange thing that I&rsquo;ve never seen before in my 20 years of research&rdquo;. Early on in the tornado&rsquo;s &ldquo;unusually long 25 minute period&rdquo; (Gallus) another tornado spun off from the original, swung around it in a annihilating path only to meet up with the main tornado once more. And, seen for the first time by Fujita on camera, was the formation and short life of the anti-cyclonic tornado. This type of rotation, according to Fujita, makes up &ldquo;probably less than a percent, maybe even half a percent&rdquo; of all tornadoes.</p>\r\n<p>William A. Gallus Jr. of Iowa State University concurs with this fascinating anomaly: &ldquo;it happened under relatively weak synoptic forcing with thunderstorm initiation and tornado-genesis both happening relatively early in the afternoon, earlier than normal for summer Iowa tornadoes&rdquo;. His manuscript in the American Meteorological Society claims that it began with &ldquo;a warm front retreating northwestward, ushering in very warm and moist air into central Iowa&rdquo; and the increased moisture in the air led to a &ldquo;more organized mesoscale convective complex to travel across southeast Iowa.&rdquo; This initiated what Fujita called, &ldquo;one of the most spectacular displays of nature&rsquo;s irregularities.&rdquo;</p>\r\n<p>Winds reaching between 261 and 318 mph dismembered anything man-made, turning cars into &ldquo;auto-sized missiles,&rdquo; disrupted the topsoil, pulled corn and other recently planted crops from the earth, and even stripped the bark from trees. Ed Rood of the Tri-County Times delineates, &ldquo;The [F]-5 tornado had literally wiped the village of Jordan off the map. I couldn&rsquo;t believe my eyes&hellip; Describing it as a war zone would be understating what I was witnessing.&rdquo;</p>\r\n<img src="../../resources/image/boone/TornadoOf1976/Debris-Edited.jpg" alt="" width="500" height="294" /></div>', 'Draft', '2016-04-21 21:18:56'),
(117, 21, 'FloodOf1881', 'Clay County Flood of 1881', 'Spencer, Clay County, Iowa', 'Anna Walker', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in"> 1881 was a year of legendary flooding in Western Iowa and it wasn&rsquo;t much different in Clay County. </span>While most of the major flooding in Iowa took place on the Missouri River proper, smaller watersheds that connect to the Missouri were also hit in their own way. The Little Sioux River, which runs through Spencer, Iowa, on its eventual journey to the Missouri River between Sioux City and Omaha, flooded in 1881 due to heavy rain and rapid snow melt in March. A fairly small washed out section of the passenger bridge across the Little Sioux River attracted large crowds of people in Spencer, Iowa, on April 9th, 1881.</p>\r\n<p>Those in Council Bluffs, Iowa were not so lucky. April 9th marked the day the North Western Railroad levee broke from the weight and pressure of the Missouri River and the river inundated this south-western Iowa City. The Missouri kept rising through late April and the waters didn&rsquo;t begin to recede until April 27th of that year.</p>\r\n<p>Being upstream of the mighty Missouri, Clay County experienced relatively few inconveniences and none of the dangers related to the flood season of 1881.</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/clay/FloodOf1881/Photo1.jpg" alt="" width="500" height="385" />\r\n<p class="caption">Photograph from the bank of the Little Sioux River in Spencer, Iowa April 9th, 1881</p>\r\n</div>', 'Draft', '2016-04-21 22:44:16'),
(118, 16, '1965Tornado', 'The Palm Sunday Tornado of 1965', 'Lowden, Iowa', 'by Steve Gottschalk (Typed by Eunice Boedeker)', '<div><!-- full width text -->\r\n<p><span class="lead_in">This tornado was Cedar County&rsquo;s most destructive</span> since May 18, 1898. A Clarence farmer, Richard J. Dircks, would die three weeks later from the serious injuries he received when his house was destroyed. His wife and son survived the storm as they made it to the basement just seconds before the storm hit.</p>\r\n<p>The day had been unusually warm and sultry on Palm Sunday, April 11, 1965. A brief thundershower had visited the area around noon with heavy rain and some hail.</p>\r\n<p>The tornado first touched down 3 miles east of Tipton around 12:30 pm and proceeded on a northeasterly track. It first struck the Raymond Hasenbank farm south of Clarence. A barn, brooder house, garage and machine shed were a complete loss. Next in its path was the Richard Dirck&rsquo;s farm south of Clarence where eleven buildings were demolished.</p>\r\n<p>From there it hit the Hugo Shroeder farm where it destroyed two barns and a hog house. Traveling northeastward it struck the Lowden area. The Fred Kahl farm and Lester Rowold farm had barns destroyed and other buildings damaged. Harlan Pruess lost a machine shed at his farm.</p>\r\n<p>The storm struck the Myron Conrad farm next, destroying two barns. Up the road at the Arnold Wenndt farm, all sixteen of the farm buildings and the house were heavily damaged or destroyed.</p>\r\n<!-- <img class="alignleft" width="100%"  alt="Brian Stephan in front of flooded Midland Supply" src="../../resources/image/linn/Midland/Brian.jpg'');?>"> -->\r\n<div class="centered">\r\n<p class="caption">Arnold Wenndt Farm</p>\r\n<div class="quickFlip_1 alignleft" style="width: 333px; height: 250px;">\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/cedar/1965Tornado/PalmSundayTornado-1965Wenndt_1-S-F.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/cedar/1965Tornado/PalmSundayTornado-1965Wenndt_1-S-B.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n</div>\r\n<div class="quickFlip_1 alignleft" style="width: 333px; height: 250px;">\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/cedar/1965Tornado/PalmSundayTornado-1965Wenndt_2-S-F.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/cedar/1965Tornado/PalmSundayTornado-1965Wenndt_2-S-B.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n</div>\r\n<div class="quickFlip_1 alignleft" style="width: 333px; height: 250px;">\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/cedar/1965Tornado/PalmSundayTornado-1965Wenndt_3-S-F.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/cedar/1965Tornado/PalmSundayTornado-1965Wenndt_3-S-B.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>The Larry Stolte farm had a barn flattened and trees uprooted. The William Pasold farm had a portion of the barn ripped away, two other buildings damaged and extensive damage done to the house. The Albert Nieting farm received heavy damage to the house and several buildings were destroyed.</p>\r\n<img class="centered" src="../../resources/image/cedar/1965Tornado/PalmSundayTornado-1965Nieting-L.jpg" width="100%" />\r\n<p class="caption">Damage caused on Nieting&rsquo;s Farm</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>At the Kruckenberg farm, Hugo, his sister, Dorothea, and his mother, Marie, were sleeping when the storm hit their house and threw all of three of them to the floor. All of their buildings were damaged or destroyed. They lost 500 chickens. Some of the carcasses were found in the timber over a mile away.</p>\r\n<img class="centered" src="../../resources/image/cedar/1965Tornado/PalmSundayTornado-1965Kruckenberg-Lg.jpg" width="100%" />\r\n<p class="caption">Kruckenberg&rsquo;s destroyed farm after the Palm Sunday Tornado</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>Harry Hamdorf&rsquo;s vacant farm had the house and other buildings either damaged or destroyed. The home of Bert and Charlie McDermott, east of Massillon, was also damaged. Two cabins along the Wapsipinicon River were destroyed.</p>\r\n<p>The tornado, later rated as an F4 intensity, swept a 20-mile long path through Fairfield, Springfield, and Massillon townships. The width of that path varied from 200 to 300 yards. At the onset of the tornado, as many as five funnels were seen and when I first saw it west of town (Lowden), there were three funnels.</p>\r\n<p>Before I saw the tornado, our family had just finished eating dinner. My mom was standing by the sink doing the dishes when she looked out of the west window and noticed the dark, strange-looking clouds. She said that it looked like a tornado. My two brothers and I ran upstairs to look out of the west window in his hallway and I saw the tornado with its large main funnel touching the ground with smaller funnels on either side of it. Debris flew around the tornado as it moved off to the north and east and then out of view. There was no warning for the storm.</p>\r\n<p>Henry Pasold described the clouds as flat looking at first and then taking on a shape as if a bubble formed under it. He said the bubble exploded, then touched the ground and bounced back up again as the cloud mass grew larger. Lowden attorney, Bill Norton said the tornado appeared to be white at times and Delbert Lenschow described its coloration as that of a large fire and smoke.</p>\r\n<p>This storm had a major influence on my weather watching and I was particularly interested in severe storms and tornados after that.</p>\r\n<p>The official monetary estimate of damage was over $500,000. The cost to the Dircks family especially and to the other farm families who lost animals and livelihood was not countable in dollars alone.</p>\r\n<p>&nbsp;</p>\r\n<p>[All Photos Source: Lowden Historical Society]</p>\r\n<div class="vspacer">&nbsp;</div>\r\n</div>', 'Draft', '2016-04-22 00:20:13'),
(121, 36, 'Blizzard1850s', 'Fremont 1850s Blizzard', 'Fremont County, Iowa', 'Kat Perdock', '<div class="leftcol500 nomargin">&nbsp;</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p><span class="lead_in">In the dead of an 1850s winter, a man arrived in Tabor. </span> He was traveling on foot, separated from his traveling companion, nearly frozen from the blizzard covering the Midwest in a blanket of snow. Though he stayed in Tabor for several weeks, his name is lost to history. He was far from the first to pass through in this way, and he wouldn&rsquo;t be the last.</p>\r\nIn the 1850s, the people of Tabor shared a silent understanding.\r\n<p>The town&rsquo;s founder, George Gaston, had chosen to settle on the Loess Hills in the southwest corner of Iowa after the Missouri River flooded him and his people out of lower ground. He came to the valley to build a college, but as he acclimated to life on the border of a slave state, his priorities began to change.</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/fremont/popups/undergroundrailraodsm.jpg" alt="" width="500" height="261" /></div>\r\n<div class="rightcol500 nomargin">\r\n<p>America&rsquo;s Civil War would not begin until 1861, but abolitionists in free states were already taking subversive action. The Underground Railroad hit its peak during the 1850s, and Tabor&rsquo;s location and relatively liberal population made it an ideal stop for slaves escaping from Missouri. Nothing about the Railroad was legal; the Fugitive Slave Act allowed for the capture and forced return of slaves in free states as well as slave states. Southern slave catchers haunted the border, popping into towns to hunt for fugitives, and the county&rsquo;s own sheriff was legally obligated to do the same.</p>\r\n<p>This just meant that the people of Tabor, like everyone helping at stations on the Railroad, had to work quickly and quietly.</p>\r\n<p>Escaped slaves passed through Tabor alone and in groups. They could look forward to food and somewhere relatively secure to rest until the next leg of their journey; they rarely stayed for long, with the constant threat of detection on their minds and the minds of their benefactors.</p>\r\n</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p>The man fleeing slavery who arrived in Tabor during the blizzard stayed a few weeks. He was there long enough for residents to give him what medical aid they could and for them to learn where he&rsquo;d come from &ndash; Linden, Missouri, close enough to be dealing with the same snow &ndash; and how he&rsquo;d escaped.</p>\r\n<p>He and his companion had been captured near the Iowa border and put in a log jail in Linden overnight, the floor held three feet off the ground on posts. The two men had first asked their jailor for some source of warmth in their cell. As their jailor put it when he spoke of them the next morning, &ldquo;One of the slaves was havin&rsquo; a chill. It was so cold, wet and nasty, I wasn&rsquo;t surprised.&rdquo; He brought them a kettle of coals from the fireplace. As he was leaving, the men asked for something to drink, and the jailor gave them a pail of water. Had the men stayed where they were, they might have met the abolitionist search party coming to Linden for them. As it was, when the search party arrived, the men were already gone from their cell. While their captors were sleeping, they had dumped the coals from the kettle on the wood floor and allowed the fire to burn a hole through which they could escape.</p>\r\n<p>The blizzard gave the men an opportunity, and their ingenuity in the situation saved their lives.</p>\r\n<p>The Underground Railroad had no off season &ndash; in fact, slaves often made a point of traveling in winter. Further east, the frozen Ohio River provided a famous path from slave state Kentucky to free state Ohio. People escaping slavery would have walked hundreds of miles between stations, in conditions much like the ones this particular Tabor visitor had weathered on his way there.</p>\r\n<p>Though a blizzard could provide cover, it could be dangerous just the same. During the trek from Linden to Tabor, the blizzard worsened, and the two men were separated in the snow. The abolitionist search party looked for the missing escapee with no success. After a few weeks spent recuperating in Tabor, the man who did make it to his destination was able to continue his journey to safety across the Canadian border, undaunted by the snow lingering on the ground.</p>\r\n</div>', 'Draft', '2016-04-22 19:51:37'),
(122, 16, '1979Winter', 'Winter of 1979', 'Cedar County, Iowa', 'by Steve Gottschalk (Typed by Eunice Boedeker)', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">For those living in Cedar County in 1979 </span>who remembered the winter of 1936, the winter of 1978-79 might have seemed familiar and different. Roads were repeatedly impassable &mdash; but delayed trains were no longer an issue; school was closed for weeks &mdash; but not for lack of coal to heat them. In fact the 1979 winter would surpass the winter of 1936 with colder temperatures and more snow.</p>\r\n<p>The winter began on November 26-27 in 1978, with 4.4 inches of snow. The month of December began with more white stuff falling on the 2nd, accompanied by lightning and thunder. 10.7 inches accumulated. Another 2.2 inches fell on the 5th and one inch fell again on the 7th. Every day from the 28th to 31st snow fell, totaling 15.5 inches. December alone produced 30.5 inches of snow, a record. The snows of November and December remained until March 25, 1979 &mdash; a total of 120 days. Some of the snowdrifts remained well into April.</p>\r\n<p>The cold air settled in from December 8th to 10th with lows from -12 to -16 degrees. Milder weather dominated from the 11th to the 20th with daily highs above freezing and little precipitation before the weather turned colder and wetter again. Morning lows were from 0 to -3 degrees from the 24th to the 27th. The high of 34 degrees on the 29th would be the last above freezing reading until February 20th. The month of December averaged 4.7 degrees below normal with seven days of 0 degree readings.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="quickFlip_1 centered" style="width: 500px; height: 381px;">\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/cedar/1979Winter/1979Winter2-F.jpg" />\r\n<div class="caption">A truck driving past snow banks in February of 1979 (click on image to flip)</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/cedar/1979Winter/1979Winter2-B.jpg" />\r\n<div class="caption">A truck driving past snow banks in February of 1979 (click on image to flip)</div>\r\n</div>\r\n</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>On the 24th, the thermometer was down to -10 degrees with 42 mph winds. January ended as it began with impassable roads and impossible travel.</p>\r\n<p>January 1979, with an average of 1.7 degrees, is the coldest on record in Cedar County. We had 24 days with 0 degree readings and 6 days with the high temperatures failing to get above 0 degrees. The 37.9 inches of snow was a record also.</p>\r\n<p>On February 1st, only 5% of the county roads were opened to two lanes of traffic. Some farm families were stranded for several days. The National Guard was called in with their heavy equipment to open the county roads. They used their helicopter to airlift hay to stranded livestock. The state brought in two snow blowers to open the blacktopped roads but some of the snow on the gravel roads was so hard that the blowers did not work. For several weeks there was no school.</p>\r\n<p>As January turned into February, Cedar County residents must have hoped for a change in the weather. Instead, the month of February got off to a cold start with readings below zero every morning from the 1st to the 10th. Lows ranged from -1 to -23 degrees. Four of these mornings saw readings of -20 or colder. There were 2.3 inches of snow on the 7th to 8th blown around by 32 mph winds. The weather was colder again from the 15th to 19th with lows of 0 to -18 degrees. Finally, the thermometer rose above freezing on the 20th of February, the first time in 52 days. February&rsquo;s average temperature was 8.7 degrees, the second coldest in Cedar County. February 1936 was colder. 16 days showed 0 degree readings; on three of those days the highs failed to get above zero. There were 8.7 inches of snow.</p>\r\n</div>\r\n<!-- <img class="alignleft" width="100%"  alt="Brian Stephan in front of flooded Midland Supply" src="../../resources/image/linn/Midland/Brian.jpg'');?>"> -->\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="quickFlip_1 centered" style="width: 500px; height: 381px;">\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/cedar/1979Winter/1979Winter1-F.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/cedar/1979Winter/1979Winter1-B.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>After A New Year&rsquo;s Eve storm, the weather turned bitterly cold &mdash; reading below zero from the 1st to the 11th. The mercury dipped below zero on the evening of the 1st and did not rise above the magic point until the afternoon of the 5th. This was a total of 93.5 hours. The lows during that period ranged form -10 to -25 degrees with seven of those being -20 or colder. Wind chills were from -20 to -70 degrees.</p>\r\n<p>Snow began falling on the 11th and continued through the 13th, totaling 19.0 inches, 14.6 inches on the 13th alone. On that day, a full-blown blizzard raged with NW winds gusting to 43 mph and wind chills down to -40 degrees. The winds continued throughout the next day, bringing the thermometer down to -22 and, with wind chills, as low as an arctic -75 degrees. With snowdrifts 10 to 15 feet high, all roads were impassable. Many cars were stranded on Interstate 80 in the southern part of Cedar County. Tipton housed 140 stranded travelers.</p>\r\n<p>Although Tipton residents were hospitable, the rest of the January, 1979 was not. Another 2.1 inches of snow fell on the 15th ; 4.1 inches, on the 18th and 19th ; 6.3 inches, on the 23rd; 4.5 inches, on the 26th and 27th. Intense cold and strong winds persisted. The morning lows from the 14th-18th were between -7 and -23 degrees.</p>\r\n<div class="quickFlip_1 centered" style="width: 500px; height: 381px;">\r\n<div class="front"><img class="quickFlipCta" src="../../resources/image/cedar/1979Winter/1979Winter3-F.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n<div class="back"><img class="quickFlipCta" src="../../resources/image/cedar/1979Winter/1979Winter3-B.jpg" />\r\n<div class="caption">click on image to flip</div>\r\n</div>\r\n</div>\r\n<div class="clearboth">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>The average temperature in the winter of 1978-1979 was 9.6 degrees, the coldest on record in Cedar County. ON 47 days the thermometer registered 0 degree readings. The 75.1 inches of snow set a new record and made new memories for those who experienced it.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>[All Photos Source: Lowden Historical Society]</p>\r\n<div class="clearboth">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n</div>', 'Draft', '2016-04-22 19:05:22'),
(123, 16, '2011Blizzard', 'Ground Hog Day Blizzard of 2011', 'Cedar County, Iowa', 'by Steve Gottschalk (Typed by Eunice Boedeker)', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">This was the worst winter storm to hit Cedar County</span> since the January 1979 blizzard. The county received 13.0 to 17.5 inches of snow. The Tipton area saw 15.0 inches of snow and Lowden, in the northeastern part of the county, received 17.5 inches in a 24-hour period &mdash; a new record for the area.</p>\r\n<p>The Ground Hog Day storm began late on January 31st, producing an inch of snow through the early morning hours of February 1st. The snow began falling again around noon, picking up in intensity along with the north-blowing wind. By 5 pm, 4.0 inches of snow had already fallen and the winds gusted to 40 mph.</p>\r\n<p>During the next four hours, the snow fell at a rate of 2 inches per hour. By 9 pm, a total of 12 inches had fallen. There was lightning and thunder with the snow. Winds gusted up to 52 mph. The visibility dropped to zero with whiteout conditions at the time. Another 4 inches of snow fell by midnight.</p>\r\n<p>Across the county, travel was virtually impassible and the sheriff&rsquo;s office was flooded with emergency calls. Drifts from 4 to 5 feet deep were quite common and some were as high as 8 feet. The blizzard stopped the westbound Union Pacific train east of Stanwood for nearly 40 hours. There were ten people who had to seek shelter in Stanwood.</p>\r\n<img class="alignleft" src="../../resources/image/cedar/2011Blizzard/2011Blizzard_2.jpg" alt="Blizzard of 2011" /> <!-- <img class="alignleft" width="100%"  alt="Brian Stephan in front of flooded Midland Supply" src="../../resources/image/linn/Midland/Brian.jpg"> --></div>\r\n<div class="rightcol500 nomargin">\r\n<div class="vspacer">&nbsp;</div>\r\n<img class="alignleft" src="../../resources/image/cedar/2011Blizzard/2011Blizzard_1.jpg" alt="Blizzard of 2011" />\r\n<p class="caption">County road after the blizzard passed</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>At least six motorists were stranded in their cars overnight. Highway 130 between Tipton and New Liberty was closed because of the drifting snow. The westbound lanes of Interstate 80 east of the Wilton interchange were shut down due to a multiple vehicle accident.</p>\r\n<p>There were dozens of people and dispatchers involved in helping others. EMTs and snowplow operators assisted in the successful transport of a woman in labor to the Jones County Regional Medical Center.</p>\r\n<p>The governor quickly declared Cedar County a disaster area. This allowed emergency funding to be released for clearing the county roads.</p>\r\n<p>By the morning of February 2nd, the storm had deposited another 1.5 inches of snow, giving the Lowden area a total of 17.5 inches that had fallen in a 24-hour period &mdash; a new record for Lowden. Wind chills were well below zero and the gusting winds caused snow to drift throughout the day.</p>\r\n<div class="vspacer">&nbsp;</div>\r\n<p>[All Photos Source: Lowden Historical Society]</p>\r\n</div>', 'Draft', '2016-04-22 19:12:08'),
(124, 22, 'FloodOf1965', 'History of Floods in Clayton County to 1965', 'Clayton County, Iowa', 'Jeff Lehman', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in"> The people of McGregor are no strangers to flooding; </span>it has been just another facet of the land settlers dealt with since the first land grant was issued to French-American Basil Giard in 1796. The terrain is varied, and along with bluffs that &ldquo;reminded [settlers] of the hills and glens in Scotland&rdquo; also came floodplains that were routinely active. It is positioned just north of where two major Midwest rivers meet, doubling the severity of spring floods when the high water of the Wisconsin River joins that of the Mississippi. Floods of note have occurred in 1816, 1828, 1880, 1881, 1888, 1896, 1916, 1920, 1922, and on through the twentieth century. For those who live in McGregor, Marquette to the north, and across the river in Prairie du Chien, springtime means high water fairly often.</p>\r\n<img src="../../resources/image/clayton/FloodOf1965/No_Parking_Sign_-_Copy.jpg" alt="" width="500" height="340" /></div>\r\n<div class="rightcol500 nomargin">\r\n<p>For decades, residents of McGregor and neighboring towns have known what to do when the flood comes: a 1922 report warns citizens to relocate livestock and movable property to higher ground, protect and sandbag railroad beds, and either to move from their residences or get to their second floors. The crisis is normally contained &ndash; however, some years the containment is too little or too late, as in the devastating spring of 1896, when 25 people were found dead in the waters. But even that tragic year didn&rsquo;t come close to the floods of the twentieth century, starting with that of 1965.</p>\r\n<p>This was the year that the water reached a peak stage of 25.38 ft. &ndash; 7.38 ft. above flood stage, and 3.8 ft. above the worst floods from 1880-1922. A report of the 1965 floods describes the damage:</p>\r\n<p>"Marquette, Iowa, just 2 miles north, was isolated when all highways leading into the city were inundated. The city was separated into three parts by the floodwaters and water stood 3 &frac12; feet deep at the Main Street intersection. Supplies and emergency aid were brought in by National Guard &ldquo;ducks&rdquo; and other boats. At Prairie du Chien, Wis., just across the river, about 250 houses and 25 business establishments were flooded. One-third of the town was underwater and over 1,000 persons were homeless &hellip;. Flood losses in Prairie du Chien were great &ndash; almost $2 &frac12; million, of which over $1 million was to residential property."</p>\r\n</div>', 'Draft', '2016-04-22 02:38:43'),
(125, 47, '1962Flood', 'Flood of 1962', 'Ida Grove, Ida County, Iowa', 'Nate Otjen', '<div class="leftcol500 nomargin">&nbsp;</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p><span class="lead_in">While storms in 1891 deposited nine inches of rain on Ida Grove, </span>the storms that visited seven decades later in 1962 deposited twelve inches of precipitation on the town. In less than thirty-eight hours, between the early morning of Thursday, August 30th, and the evening of Friday, August 31st, a record 12.05 inches of rain fell on the town of Ida Grove.</p>\r\n<p>Ida Grove lies nestled between three waterways. The Maple River flanks the northwestern edge of town and the Odebolt and Badger creeks parallel one another and mark the town&rsquo;s eastern and western limits respectively. Within just six hours of heavy rain during the first morning of the flood, the Odebolt Creek overflowed and began to inundate parts of Ida Grove. Both the Odebolt and Badger Creek crested by 10:00 p.m. on August 30th.</p>\r\n<p>The local school district dismissed children early the morning of the flood and the schools remained closed on Friday. Lightning hit several homes during the two-day rainstorm, but did not cause any damage.</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/ida/1962Flood/Use2.jpg" alt="" width="500" height="275" />\r\n<p class="caption">Photograph featured on the front page of the September 6th edition of the Ida County Pioneer Record</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>Odebolt and Badger Creek only overflowed for a total of 2.5 hours, but the floodwaters caused significant damage within this short period of time. Thirty-eight businesses ranging from feed stores to automobile garages reported flood damages. Floodwaters covered three-quarters of the local golf course and deposited eighteen inches of silt in some places. The floodwater also damaged sections of the Chicago &amp; Northwestern railroad tracks near Ida Grove.</p>\r\n<p>The rising water damaged the homes of at least ninety-three families and forced many Ida Grove residents to find new shelter. One home completely caved in from the eroding floodwaters. The Prine and Jacobs families both had to evacuate their homes along with Archie Percy and D. J. Rabe. A woman named Luelle Devine had to be brought to the local hospital to be treated for shock.</p>\r\n<p>Water ran across many of the town&rsquo;s streets and for several days people could only enter Ida Grove from the north via Highway 175. In a report compiled to assess flood damages soon after the flood, the City of Ida Grove notes:</p>\r\n</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p><span class="lead_in">The city had much expense during and after the flood. Extra men had to be stationed at streets to direct traffic while the water was over the streets. Boom trucks had to be hired at one of the bridges to keep the trees, rubbish and etc., from completely stopping the flow of water and from taking the bridge down the stream. Dynamite was used to help keep the flood water moving.</span></p>\r\n<p>The citizens of Ida Grove began cleanup efforts the following morning even as the rain continued to fall. However their efforts were marked by frustration. The flood of 1962 agitated existing concerns about flooding in Ida Grove and led people to demand citywide flood control. Only a week after the flood, an Ida Grove resident wrote a short opinion piece in the Ida County Pioneer Record entitled &ldquo;High Time for Flood Control.&rdquo; The author notes that while the flooding of Odebolt Creek was not uncommon, the town did not expect the &ldquo;docile little&rdquo; Badger Creek to overflow. The agitated writer asks, &ldquo;Don&rsquo;t you suppose it&rsquo;s about time to do something about the floods besides endure them and clean up?&rdquo;</p>\r\n<p>The town&rsquo;s Report on the Flood Situation echoes the sentiment expressed in the local opinion column. The city assessers conclude, &ldquo;The people of Ida Grove are willing to . . . do whatever is necessary to get our flood problem under control.&rdquo;</p>\r\n</div>\r\n<div class="leftcol500 nomargin">\r\n<p>So three years following the flood, in an attempt to reduce future flooding, the U.S. Army Corps of Engineers changed the channel of the Odebolt Creek and constructed a series of dikes on both the Maple River and the Odebolt. The project cost $350,000 but did not address the flooding of Badger Creek. In the early 1980&rsquo;s, Ida Grove independently funded and implemented a flood control system along Badger Creek.</p>\r\n<p>Yet Ida Grove continues to struggle with floods even after the flood adaptation efforts of the 60&rsquo;s and 80&rsquo;s. The town appealed for funding to deal with floods in 2005, 2007, 2009, 2012 and 2013.</p>\r\n<p>Flood researchers at the University of Iowa recently determined that Iowans have been experiencing more floods in the past fifty years. After examining nearly 800 flood gauge records in the Central United States that contain data spanning from this flood in 1962 to the present, they concluded that the frequency of flooding has increased due to changes in temperature and precipitation.</p>\r\n<p>As the atmosphere warms, it tends to hold more moisture and this disturbing pattern has contributed to the surge of recent floods in Ida Grove. Despite the town&rsquo;s efforts to halt the flooding that displaces so many residents, it appears the increased frequency of flooding events will only continue as the atmospheric temperature rises.</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/ida/1962Flood/Use1.jpg" alt="" width="500" height="397" />\r\n<p class="caption">Submerged streets in Ida Grove</p>\r\n</div>\r\n</div>', 'Draft', '2016-04-22 19:41:19'),
(127, 52, '1993Sandbagging', 'Sandbagging Businesses in 1993', 'Johnson County, Iowa', 'Emma Husar', '<div class="leftcol500 nomargin">&nbsp;</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p><span class="lead_in">Several University of Iowa buildings reside on the banks of the Iowa River</span>&mdash;approximately 2.8 million square feet of a 16 million-square-foot campus. In 2008 all of that was in peril as water began to pour over those banks and inundated 20 of the university buildings.</p>\r\n<p>It was the beginning of June, the beginning of the summer term when water that typically flows out of the Coralville Lake at 6,000 cubic feet per second. This summer however it hit 39,462 cfs and the water level was five feet over the dam&rsquo;s emergency spillway. Thus the beginning of summer term was suspended as record breaking outflow of water rushed into the Iowa River and its surrounding flood plains that coincidentally housed thousands of dorm rooms, a library with countless cherished books, classrooms with technology and other valuable equipment.</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/johnson/1993Sandbagging/Use3.jpg" alt="" width="500" height="340" />\r\n<p class="caption">Coralville strip puts businesses underwater</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/johnson/1993Sandbagging/Use4.jpg" alt="" width="500" height="" />\r\n<p class="caption">Donut Land deliveries through flood waters</p>\r\n<p>In order to keep business flourishing he grabbed his truck and began to deliver some donuts and coffee to places like the Heartland Inn and Alamo motels, with sales averaging ten dollars an hour.</p>\r\n</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p>Similarly in Iowa City, on South Gilbert Street building owner Mike Cilek gathered a group of volunteers to add some 2,000 to 3,000 sandbags to an already six-sandbag-high wall to salvage three businesses within the building. Cliek was concerned that the second round of flooding would be worse than the first: &ldquo;we can&rsquo;t predict what will happen&rdquo; and all the sandbagging could be for nothing.</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/johnson/1993Sandbagging/Use1.jpg" alt="" width="500" height="726" />\r\n<p class="caption">Flooded Business on South Gilbert St.</p>\r\n</div>\r\n<div class="rightcol500 nomargin">\r\n<p>This was a time of mass uncertainty. Lon Drake, professor of geology at the University of Iowa, expressed concern about sandbagging practices. He noted in the Press-Citizen, &ldquo;Many of the sandbag walls and levees hurriedly built over the last few days are poorly constructed and may not withstand another rise in river levels.&rdquo; He warns that any wall over 3 feet high are inclined to fail; plastic sheets must be built within and sealed tight to the earth; and sandbags should only be half filled so to seal tightly to one another.</p>\r\n<p>Some residents and businesses flooded despite their sandbagging efforts and refused to repeat that disappointment as the river levels continued to rise. The struggle for food, for dry land and for effective sandbag levees continued throughout the summer, the most devastating of months being between June and August, with effects lasting long past the waters&rsquo; recede.</p>\r\n<p>Loans to businesses in Johnson County alone was estimated at $842,992 of the $3 million allocated to 11 Iowa counties. Fortunately small businesses were offered loans with low interest to help them rebuild.</p>\r\n<img src="../../resources/image/johnson/1993Sandbagging/Use2.jpg" alt="" width="500" height="" />\r\n<p class="caption">Sandbag diagram</p>\r\n</div>', 'Draft', '2016-04-22 20:19:43'),
(128, 52, '2008Uiowa', 'The University of the Iowa River', 'The University of Iowa, Johnson County, Iowa', 'Emma Husar', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">Several University of Iowa buildings reside on the banks of the Iowa River</span>&mdash;approximately 2.8 million square feet of a 16 million-square-foot campus. In 2008 all of that was in peril as water began to pour over those banks and inundated 20 of the university buildings.</p>\r\n<p>It was the beginning of June, the beginning of the summer term when water that typically flows out of the Coralville Lake at 6,000 cubic feet per second. This summer however it hit 39,462 cfs and the water level was five feet over the dam&rsquo;s emergency spillway. Thus the beginning of summer term was suspended as record breaking outflow of water rushed into the Iowa River and its surrounding flood plains that coincidentally housed thousands of dorm rooms, a library with countless cherished books, classrooms with technology and other valuable equipment.</p>\r\n<p>Luckily a flood plan had been created in response to the 1993 floods and was put into effect. However as Don Guckert, associate vice president and director of facilities management at UI, recognizes, &ldquo;We had a flood plan, it just didn&rsquo;t anticipate a flood of the magnitude.&rdquo; On June 15th the river crested at a record of 31.53 feet (a major flood stage crests at 25 feet).</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/johnson/2008Uiowa/Use3.jpg" alt="" width="500" height="343" />\r\n<p class="caption">UI campus along the river post-flood</p>\r\n<p>With only two month before 30,000 students would arrive on campus, it was imperative to get the imperative buildings&mdash;such as the 1,000 bed residence hall, the library, and classrooms&mdash;functioning again. Rod Lehnertz, director of planning, design, and construction at the University of Iowa reminisced on the incredible reconstruction these inundated buildings: &ldquo;You could go into these buildings after they had taken the bottom 4 feet of the walls off, leaving nothing but the steel studs left onto the concrete floor. You would see dozens of workers with chemical cleaners and toothbrushes, scrubbing the inside and outside corners of every steel stud in the entire building."</p>\r\n<p>Sure enough, they were ready three days before students arrived on August 15th, after two month and approximately $4 million, Guckert relays, &ldquo;the good news: We''re operational. We brought back half of the space that was idled. The bad news: The other half of the space will take much longer and cost much more because there''s that much more damage."</p>\r\n<p>However those three buildings that were salvaged that same summer was not a fraction of the 20 buildings affected on campus, nor was the $4 million a fraction of the total cost in damages and recovery: $743 million.</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/johnson/2008Uiowa/Use1.jpg" alt="" width="500" height="343" />\r\n<p class="caption">Sandbags along the river</p>\r\n</div>', 'Draft', '2016-04-22 20:33:32');
INSERT INTO `stories` (`id`, `f_county_id`, `story_name`, `title`, `location`, `byline`, `story_content`, `status`, `last_modified`) VALUES
(130, 29, 'BurlingtonFlood1965', 'Burlington Flood of 1965', 'Burlington, Des Moines County, Iowa', 'Amanda Lund', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">In April of 1965, Robert Lumberg of Burlington felt the effects of a flood that would result in the loss of fourteen lives, </span> the displacement of 15,000 people, and over $125 million dollars of damage. After a week of sandbagging of the levee adjacent to his home, Lumberg made the decision to move. He determined the time to be right &ldquo;when the water comes in faster than you can mop it up.&rdquo;.</p>\r\n<p>Heavy snowfall during March of 1965, when between 40 to 60 inches fell in Minnesota and Wisconsin, combined with temperatures that were 10 to 15 degrees below normal for the month. The temperatures prevented the gradual melting of the snow, and when temperatures finally rose in April, the fast melting snow created a rush of water into the Mississippi. Additionally, the region experienced between 2 &frac12; and 3 &frac12; inches of rainfall that was unable to soak into the still-frozen ground. The rain filled waterways, causing the Mississippi to reach record flood levels by mid-April.</p>\r\n</div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/desmoines/BurlingtonFlood1965/Use2.jpg" alt="" width="500" height="317" />\r\n<p class="caption">Ten boats were donated by community members to be operated by Naval Reservists during the flooding of April 1965.</p>\r\n<p>On April 19th, Lumberg packed the basement of his home, located near the Iowa River-Flint Creek Levee 16, on a corner of a right-of-way that had recently been acquired in connection with the proposed raising of the levee. He had evacuated his family a week prior but continued to sandbag in hopes of avoiding a move. &ldquo;If it weren&rsquo;t for the seepage water I probably would not be leaving,&rdquo; said Lumberg.</p>\r\n<p>The infiltration of floodwaters into homes and water supplies was a primary concern for health officials. On April 30, 1965 the Burlington Hawk-Eye printed an article stressing the importance of obtaining typhoid vaccines. The series of three injections was recommended for those who experienced flooding in their homes and those helping with clean-up. Mrs. Jean Johnson, the Des Moines county health nurse, stated, &ldquo;The typhoid germ is carried by water supplies and food that has been contaminated by flood water which at this time carries a large amount of raw sewage. As the Mississippi recedes back into its banks, it will leave behind many deposits of germs in water supplies in puddles of stagnant water, virtually everywhere it has extended an ugly arm.&rdquo;</p>\r\n</div>\r\n<div class="leftcol500 nomargin"><img src="../../resources/image/desmoines/BurlingtonFlood1965/Use1.jpg" alt="" width="500" height="298" />\r\n<p class="caption">Gangplanks were used to travel between dry land and Burlington Memorial Auditorium during sandbagging.</p>\r\n</div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p>Downtown, the Burlington Memorial Auditorium endured the Mississippi&rsquo;s rising levels with sandbags and gangplanks. Donated boats were operated by Naval Reservists to transport fuel and sand to levee workers to preserve the building that was constructed in 1939.</p>\r\n<p>On April 30, the river crested at 21.0 feet, surpassing the previous record of 18.9 feet set in June of 1951. Lumberg, who had previously encountered flooding when he began building his home in 1957, stated that he would not be fazed by the potential dangers of the river. &ldquo;I&rsquo;ll be back, but I plan to build back from the right-of-way.&rdquo;</p>\r\n</div>', 'Draft', '2016-04-22 21:00:14'),
(138, 29, 'DesMoinesCountyFlood2008', 'Des Moines County Flood of 2008', 'Des Moines County, Iowa', 'Amanda Lund', '<div class="leftcol500 nomargin">\r\n<p><span class="lead_in">The flooding of 2008 was an act of nature that literally came in waves. </span> Eighty-five of Iowa&rsquo;s 99 counties were declared Federal Disaster Areas. Forty thousand people were affected and the rushing waters of the Cedar, Iowa, and Mississippi river basins did over $10 billion in damage.</p>\r\n<p>The first wave began in the summer of 2007 with heavy rainfall that exacerbated the snow that piled on during the winter of 2007 to the already overly damp soil. More rainfall came during the spring and summer of 2008, some locations reporting 12 to 14 inches in just a two-week period.</p>\r\n<p>The town of Mediapolis, Iowa, has a population of approximately 1,500 people and is surrounded by farmland. Some 12 miles away, the town of Oakville, Iowa, is home to the Iowa River Levee. Early June, 2008, the two communities came together to sandbag the levee in hopes of preventing a break that would wash over miles of farmland and cause damage to surrounding homes. Mediapolis community member, Ned Swygard posted this on a discussion board June 14, 2008:</p>\r\n"&gt;<img src="../../resources/image/desmoines/DesMoinesCountyFlood2008/Use2.jpg" alt="" width="500" height="333" /></div>\r\n<div class="rightcol500 nomargin"><img src="../../resources/image/desmoines/DesMoinesCountyFlood2008/Use1.jpg" alt="" width="500" height="333" /></div>\r\n<div class="singlecolumn nomargin clearboth">\r\n<p><span class="lead_in">The Iowa River Levee broke at Oakville, Ia today. This will flood about 80 sq miles behind the Mississippi R levee and behind the Wife''s family cabin. The cabin has 12" to go before it gets in the cabin. The Mississippi is suppose to crest Tues at additional 3 inches higher. The Iowa River levee break will relieve some of the height on the Mississippi. The Mississippi R had already broken the levee at Keithsberg, Ill relieving some of the height. Cedar River (which flooded Cedar Raplids) flows into the Iowa River at Colombous Jct, Ia about 50 miles from Oakville. Levees will break at Colombous Jct. The Iowa R goes thru Iowa City and oldest boy and family evacuated from Iowa City yesterday. The levee below Iowa City will probably break within a couple of days flooding to Lone Tree all great Iowa farm land. Price of corn will jump.</span> Ned S</p>\r\n</div>', 'Draft', '2016-04-28 19:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1461354525, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '163.246.0.135', NULL, '$2y$08$1CstoCyD3DppiszTgu5N9.sl5IhGSSizYmiD9J6XVw/.XzeI1mWI6', NULL, 'czinkgraf11@hotmail.com', NULL, NULL, NULL, NULL, 1461354655, NULL, 1, 'Christina', 'Zinkgraf', 'PWM', '555-555-1212');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 2, 1),
(5, 2, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `counties`
--
ALTER TABLE `counties`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `county` (`county`);

--
-- Indexes for table `counties_stories`
--
ALTER TABLE `counties_stories`
  ADD PRIMARY KEY (`id`), ADD KEY `county_id` (`f_county_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `image_path` (`source_path`,`image_name`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_import_log`
--
ALTER TABLE `menus_import_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_views`
--
ALTER TABLE `menus_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`), ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups_content`
--
ALTER TABLE `popups_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups_icons`
--
ALTER TABLE `popups_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups_markers`
--
ALTER TABLE `popups_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups_views`
--
ALTER TABLE `popups_views`
  ADD PRIMARY KEY (`id`), ADD KEY `icon_id` (`f_icon_id`), ADD KEY `popup_id` (`f_popup_id`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`), ADD KEY `fk_users_groups_users1_idx` (`user_id`), ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `counties_stories`
--
ALTER TABLE `counties_stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=409;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6109;
--
-- AUTO_INCREMENT for table `menus_import_log`
--
ALTER TABLE `menus_import_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `menus_views`
--
ALTER TABLE `menus_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=610801;
--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `popups_content`
--
ALTER TABLE `popups_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `popups_icons`
--
ALTER TABLE `popups_icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `popups_markers`
--
ALTER TABLE `popups_markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `popups_views`
--
ALTER TABLE `popups_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
