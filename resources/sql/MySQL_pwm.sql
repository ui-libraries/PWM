-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Sep 24, 2015 at 04:31 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwm`
--

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `css_id` varchar(32) NOT NULL,
  `menu_desc` varchar(120) NOT NULL,
  `css_class` varchar(32) NOT NULL,
  `sort` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menus_views`
--

DROP TABLE IF EXISTS `menus_views`;
CREATE TABLE `menus_views` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `view_name` varchar(64) NOT NULL,
  `view_center_lat` double NOT NULL,
  `view_center_lng` double NOT NULL,
  `view_zoom` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `child_of` int(11) NOT NULL,
  `sort` smallint(6) NOT NULL,
  `menu_item_text` varchar(64) NOT NULL,
  `menu_item_desc` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `target` varchar(16) NOT NULL DEFAULT '"_self"',
  `css_class` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

DROP TABLE IF EXISTS `popups`;
CREATE TABLE `popups` (
  `id` int(11) NOT NULL,
  `popupname` varchar(32) NOT NULL,
  `setlat` double NOT NULL,
  `setlng` double NOT NULL,
  `maxwidth` smallint(6) NOT NULL,
  `minwidth` smallint(6) NOT NULL,
  `maxheight` smallint(6) NOT NULL,
  `autopan` varchar(6) NOT NULL,
  `keepinview` varchar(6) NOT NULL,
  `closebutton` varchar(6) NOT NULL,
  `offset_x` smallint(6) NOT NULL,
  `offset_y` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `popups_content`
--

DROP TABLE IF EXISTS `popups_content`;
CREATE TABLE `popups_content` (
  `id` int(11) NOT NULL,
  `popupname` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL,
  `subtitle` varchar(128) NOT NULL,
  `body` text NOT NULL,
  `imageurl` varchar(128) NOT NULL,
  `buttontxt` varchar(32) NOT NULL,
  `buttonurl` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `popups_icons`
--

DROP TABLE IF EXISTS `popups_icons`;
CREATE TABLE `popups_icons` (
  `id` int(11) NOT NULL,
  `iconname` varchar(32) NOT NULL,
  `iconurl` varchar(255) NOT NULL,
  `iconsize_x` smallint(6) NOT NULL,
  `iconsize_y` smallint(6) NOT NULL,
  `iconanchor_x` smallint(6) NOT NULL,
  `iconanchor_y` smallint(6) NOT NULL,
  `popupanchor_x` smallint(6) NOT NULL,
  `popupanchor_y` smallint(6) NOT NULL,
  `description` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `popups_markers`
--

DROP TABLE IF EXISTS `popups_markers`;
CREATE TABLE `popups_markers` (
  `id` int(11) NOT NULL,
  `markername` varchar(64) NOT NULL,
  `layergroup` varchar(64) NOT NULL,
  `markertype` varchar(32) NOT NULL,
  `coords` varchar(800) NOT NULL,
  `iconname` varchar(64) NOT NULL,
  `clickable` varchar(6) NOT NULL,
  `draggable` varchar(6) NOT NULL,
  `keyboard` varchar(6) NOT NULL,
  `title` varchar(64) NOT NULL,
  `zindexoffset` smallint(6) NOT NULL,
  `opacity` double NOT NULL,
  `riseonhover` varchar(6) NOT NULL,
  `riseoffset` smallint(6) NOT NULL,
  `location` point NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `popups_views`
--

DROP TABLE IF EXISTS `popups_views`;
CREATE TABLE `popups_views` (
  `id` int(11) NOT NULL,
  `viewname` varchar(64) NOT NULL,
  `markername` varchar(64) NOT NULL,
  `iconname` varchar(64) NOT NULL,
  `popupname` varchar(64) NOT NULL,
  `offset_x` smallint(6) NOT NULL,
  `offset_y` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus_views`
--
ALTER TABLE `menus_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `popups_content`
--
ALTER TABLE `popups_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `popups_icons`
--
ALTER TABLE `popups_icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `popups_markers`
--
ALTER TABLE `popups_markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `popups_views`
--
ALTER TABLE `popups_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
