-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2024 at 04:59 AM
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
-- Database: `feedback`
--
CREATE DATABASE IF NOT EXISTS `feedback` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `feedback`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Product` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `FirstName`, `LastName`, `Phone`, `Email`, `Product`) VALUES
(2, 'Shubham', 'Zete', 1234567891, 'sz123@gmail.com', 'SmartTV'),
(3, 'Akshay', 'Matere', 9665261485, 'akshaymatere333@gmail.com', 'SmartTV'),
(4, 'Akshay', 'Matere', 9665261485, 'akshaymatere333@gmail.com', 'Laptop'),
(6, 'Akshay', 'Matere', 9665261485, 'akshaymatere333@gmail.com', 'SmartTV'),
(7, 'Akshay', 'Matere', 9665261485, 'akshaymatere333@gmail.com', 'Mobile'),
(8, 'Akshay', 'Matere', 9665261485, 'zeteshubham@gmail.com', 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_ids`
--

CREATE TABLE `deleted_ids` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deleted_ids`
--

INSERT INTO `deleted_ids` (`id`) VALUES
(1),
(5),
(9),
(10);

-- --------------------------------------------------------

--
-- Table structure for table `deleted_ids1`
--

CREATE TABLE `deleted_ids1` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deleted_ids1`
--

INSERT INTO `deleted_ids1` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `FirstName`, `LastName`, `Phone`, `Email`, `Department`) VALUES
(1, 'Akshay', 'Matere', 9665261485, 'akshaymatere333@redmail.com', 'Mobile'),
(2, 'Akshay', 'Matere', 9665261485, 'akshaymatere333@gmail.com', 'Analysis'),
(4, 'Akshay', 'Matere', 7896541235, 'edmec54@gmail.com', 'inward');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_form`
--

CREATE TABLE `feedback_form` (
  `name` varchar(30) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `device_name` varchar(20) NOT NULL,
  `rating1` varchar(50) NOT NULL,
  `rating2` varchar(50) NOT NULL,
  `rating3` varchar(50) NOT NULL,
  `rating4` varchar(50) NOT NULL,
  `rating5` varchar(50) NOT NULL,
  `rating6` varchar(50) NOT NULL,
  `additional_features` varchar(50) NOT NULL,
  `liked_most` varchar(50) NOT NULL,
  `liked_least` varchar(50) NOT NULL,
  `other_suggestions` varchar(50) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_form`
--

INSERT INTO `feedback_form` (`name`, `mobile`, `device_name`, `rating1`, `rating2`, `rating3`, `rating4`, `rating5`, `rating6`, `additional_features`, `liked_most`, `liked_least`, `other_suggestions`, `created_at`) VALUES
('User1', 1111111111, 'Laptop', '4', '3', '2', '5', '4', '1', 'good feature', 'camera', 'battery life', 'improve performance', '2024-04-23 00:59:00.000000'),
('User2', 2222222222, 'Mobile', '2', '5', '4', '3', '1', '3', 'average experience', 'design', 'price', 'user interface', '2024-04-23 18:04:00.000000'),
('User3', 3333333333, 'Smart TV', '5', '4', '5', '4', '5', '2', 'excellent overall', 'everything', 'NA', 'NA', '2024-04-23 18:29:00.000000'),
('User1', 1111111111, 'Mobile', '4', '3', '2', '5', '4', '1', 'good feature', 'camera', 'battery life', 'improve performance', '2024-04-22 23:25:00.000000'),
('User2', 2222222222, 'Laptop', '2', '5', '4', '3', '1', '3', 'average experience', 'design', 'price', 'user interface', '2024-04-22 18:19:00.000000'),
('User3', 3333333333, 'Mobile', '5', '4', '5', '4', '5', '2', 'excellent overall', 'everything', 'NA', 'NA', '2024-04-21 22:28:00.000000'),
('User1', 1111111111, 'Laptop', '4', '3', '2', '5', '4', '1', 'good feature', 'camera', 'battery life', 'improve performance', '2024-04-22 00:59:00.000000'),
('User2', 2222222222, 'Mobile', '2', '5', '4', '3', '1', '3', 'average experience', 'design', 'price', 'user interface', '2024-04-21 18:04:00.000000'),
('User3', 3333333333, 'Smart TV', '5', '4', '5', '4', '5', '2', 'excellent overall', 'everything', 'NA', 'NA', '2024-04-21 18:29:00.000000'),
('User1', 1111111111, 'Laptop', '4', '3', '2', '5', '4', '1', 'good feature', 'camera', 'battery life', 'improve performance', '2024-04-24 00:59:00.000000'),
('User2', 2222222222, 'Mobile', '2', '5', '4', '3', '1', '3', 'average experience', 'design', 'price', 'user interface', '2024-04-24 18:04:00.000000'),
('User3', 3333333333, 'Smart TV', '5', '4', '5', '4', '5', '2', 'excellent overall', 'everything', 'NA', 'NA', '2024-04-24 18:29:00.000000'),
('Akshay', 9665261485, 'Laptop', '1', '2', '3', '4', '5', '1', '', '', '', '', '2024-04-24 13:36:36.529513'),
('Akshay', 9665261485, 'Laptop', '1', '2', '3', '4', '5', '1', '', '', '', '', '2024-04-24 13:47:18.756973'),
('Akshay', 9665261485, 'Laptop', '1', '2', '3', '4', '5', '1', '', '', '', '', '2024-04-24 13:49:10.754681'),
('Akshay', 9665261485, 'Mobile', '1', '2', '3', '4', '5', '1', '', '', '', '', '2024-04-24 13:56:53.141313'),
('Akshay', 9665261485, 'Laptop', '1', '2', '3', '4', '5', '1', '', '', '', '', '2024-04-24 14:02:53.432177'),
('Akshay', 9665261485, 'Laptop', '1', '2', '3', '4', '5', '1', 'NA', 'NA', '', 'NA', '2024-04-24 14:14:12.327015'),
('Akshay', 9665261485, 'Laptop', '1', '2', '3', '4', '5', '1', 'NA', 'NA', '', 'NA', '2024-04-24 15:05:14.147115'),
('ABHI', 123456789, 'SmartTV', '3', '4', '1', '2', '2', '4', 'NA', 'NA', 'NA', 'NA', '2024-04-24 15:06:18.305370'),
('ABHI', 123456789, 'SmartTV', '3', '4', '1', '2', '2', '4', 'NA', 'NA', 'NA', 'NA', '2024-04-24 15:11:04.164764'),
('Shubham zete', 7531598264, 'Laptop', '4', '4', '4', '4', '4', '4', 'ok', 'ok', 'ok', 'ok', '2024-04-25 02:47:19.394690'),
('Akshay', 9665261485, 'Mobile', '3', '4', '5', '4', '3', '2', 'NA', 'NA', '', 'NA', '2024-04-25 15:22:26.723657'),
('Akshay', 9665261485, 'Mobile', '3', '4', '5', '4', '3', '2', 'NA', 'NA', '', 'NA', '2024-04-25 15:48:09.669688'),
('Akshay', 9665261485, 'Mobile', '3', '4', '5', '4', '3', '2', 'NA', 'NA', '', 'NA', '2024-04-25 15:48:14.343951'),
('', 0, '', '', '', '', '', '', '', '', '', '', '', '2024-04-25 15:48:19.191023'),
('Ak', 1234567892, 'Laptop', '3', '3', '3', '3', '3', '3', 'ok', 'nice', 'well', '', '2024-04-29 03:32:15.176281'),
('Ak', 1234567892, 'Laptop', '3', '3', '3', '3', '3', '3', 'ok', 'nice', 'well', '', '2024-04-29 03:35:07.762468'),
('Ak', 1234567892, 'Laptop', '3', '3', '3', '3', '3', '3', 'ok', 'nice', 'well', '', '2024-04-29 03:37:27.096795'),
('Ak', 1234567892, 'Laptop', '3', '3', '3', '3', '3', '3', 'ok', 'nice', 'well', '', '2024-04-29 03:41:14.118324'),
('shubham', 9145566401, 'SmartTV', '3', '3', '5', '4', '4', '4', 'NA', 'NA', 'NA', 'NA', '2024-04-29 08:25:42.400031');

-- --------------------------------------------------------

--
-- Table structure for table `form_table`
--

CREATE TABLE `form_table` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `html_code` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form_table`
--

INSERT INTO `form_table` (`id`, `name`, `html_code`, `created_at`) VALUES
(1, 'Laptop', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"> \r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"> \r\n</head>\r\n<style>\r\n\r\n@import url(\'https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900\');\r\n\r\nhtml {\r\n  box-sizing: border-box;\r\n}\r\n*, *:before, *:after {\r\n  box-sizing: inherit;\r\n}\r\n\r\narticle, header, section, aside, details, figcaption, figure, footer, header, hgroup, main, nav, section, summary {\r\n    display: block;\r\n}\r\nbody {\r\n    background:#d9e5ed none repeat scroll 0 0;\r\n    color: #222;\r\n    font-size: 100%;\r\n    line-height: 24px;\r\n    margin: 0;\r\n	padding:0;\r\n	font-family: \"Raleway\",sans-serif;\r\n}\r\na{\r\n	font-family: \"Raleway\",sans-serif;\r\n	text-decoration: none;\r\n	outline: none;\r\n}\r\na:hover, a:focus {\r\n	color: #373e18;\r\n}\r\nsection {\r\n    float: left;\r\n    width: 100%;\r\n	padding-bottom:3em;\r\n}\r\nh2 {\r\n    color: #1a0e0e;\r\n    font-size: 26px;\r\n    font-weight: 700;\r\n    margin: 0;\r\n    line-height: normal;\r\n	text-transform:uppercase;\r\n}\r\nh2 span {\r\n    display: block;\r\n    padding: 0;\r\n    font-size: 18px;\r\n    opacity: 0.7;\r\n    margin-top: 5px;\r\n	text-transform:uppercase;\r\n}\r\n\r\n#float-right{\r\n	float:right;	\r\n}\r\n\r\n.ScriptTop {\r\n    background: #fff none repeat scroll 0 0;\r\n    float: left;\r\n    font-size: 0.69em;\r\n    font-weight: 600;\r\n    line-height: 2.2;\r\n    padding: 12px 0;\r\n    text-transform: uppercase;\r\n    width: 100%;\r\n}\r\n\r\n.ScriptTop ul {\r\n    margin: 24px 0;\r\n    padding: 0;\r\n    text-align: left;\r\n}\r\n.ScriptTop li{\r\n	list-style:none;	\r\n	display:inline-block;\r\n}\r\n.ScriptTop li a {\r\n    background: #6a4aed none repeat scroll 0 0;\r\n    color: #fff;\r\n    display: inline-block;\r\n    font-size: 14px;\r\n    font-weight: 600;\r\n    padding: 5px 18px;\r\n    text-decoration: none;\r\n    text-transform: capitalize;\r\n}\r\n.ScriptTop li a:hover{\r\n	background:#000;\r\n	color:#fff;\r\n}\r\n\r\n.ScriptHeader {\r\n    float: left;\r\n    width: 100%;\r\n    padding: 2em 0;\r\n}\r\n.rt-heading {\r\n    margin: 0 auto;\r\n	text-align:center;\r\n}\r\n.Scriptcontent{\r\n	line-height:28px;	\r\n}\r\n.ScriptHeader h1{\r\n	font-family: \"brandon-grotesque\", \"Brandon Grotesque\", \"Source Sans Pro\", \"Segoe UI\", Frutiger, \"Frutiger Linotype\", \"Dejavu Sans\", \"Helvetica Neue\", Arial, sans-serif;\r\n  text-rendering: optimizeLegibility;\r\n  -webkit-font-smoothing: antialiased;\r\n    color: #6a4aed;\r\n    font-size: 26px;\r\n    font-weight: 700;\r\n    margin: 0;\r\n    line-height: normal;\r\n\r\n}\r\n.ScriptHeader h2 {\r\n    color: #312c8f;\r\n    font-size: 20px;\r\n    font-weight: 400;\r\n    margin: 5px 0 0;\r\n    line-height: normal;\r\n\r\n}\r\n.ScriptHeader h1 span {\r\n    display: block;\r\n    padding: 0;\r\n    font-size: 22px;\r\n    opacity: 0.7;\r\n    margin-top: 5px;\r\n\r\n}\r\n.ScriptHeader span {\r\n    display: block;\r\n    padding: 0;\r\n    font-size: 22px;\r\n    opacity: 0.7;\r\n    margin-top: 5px;\r\n}\r\n\r\n.rt-container {\r\n	margin: 0 auto;\r\n    padding-top:30px ;\r\n	padding-left:12px;\r\n	padding-right:12px;\r\n}\r\n.rt-row:before, .rt-row:after {\r\n  display: table;\r\n  line-height: 0;\r\n  content: \"\";\r\n}\r\n\r\n.rt-row:after {\r\n  clear: both;\r\n}\r\n[class^=\"col-rt-\"] {\r\n  box-sizing: border-box;\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  -o-box-sizing: border-box;\r\n  -ms-box-sizing: border-box;\r\n  padding: 0 15px;\r\n  min-height: 1px;\r\n  position: relative;\r\n}\r\n\r\n\r\n@media (min-width: 768px) {\r\n  .rt-container {\r\n    width: 750px;\r\n  }\r\n  [class^=\"col-rt-\"] {\r\n    float: left;\r\n    width: 49.9999999999%;\r\n  }\r\n  .col-rt-6, .col-rt-12 {\r\n    width: 100%;\r\n  }\r\n  \r\n}\r\n\r\n@media (min-width: 1200px) {\r\n	.rt-container {\r\n		width: 1170px;\r\n	}\r\n	.col-rt-1 {\r\n		width:16.6%;\r\n	}\r\n	.col-rt-2 {\r\n		width:30.33%;\r\n	}\r\n	.col-rt-3 {\r\n		width:50%;\r\n	}\r\n	.col-rt-4 {\r\n		width: 67.664%;\r\n	}\r\n	.col-rt-5 {\r\n		width: 83.33%;\r\n	}\r\n	\r\n\r\n}\r\n\r\n@media only screen and (min-width:240px) and (max-width: 768px){\r\n	 .ScriptTop h1, .ScriptTop ul {\r\n		text-align: center;\r\n	}\r\n	.ScriptTop h1{\r\n		margin-top:0;\r\n		margin-bottom:15px;\r\n	}\r\n	.ScriptTop ul{\r\n		 margin-top:12px;		\r\n	}\r\n	\r\n	.ScriptHeader h1,\r\n	.ScriptHeader h2, \r\n	.scriptnav ul{\r\n		text-align:center;	\r\n	}\r\n	.scriptnav ul{\r\n		 margin-top:12px;		\r\n	}\r\n	#float-right{\r\n		float:none;	\r\n	}\r\n	\r\n}\r\n.feedback{\r\n    width: 100%;\r\n    max-width: 780px;\r\n    background: #fff;\r\n    margin: 0 auto;\r\n    padding: 15px;\r\n    box-shadow: 1px 1px 16px rgba(0, 0, 0, 0.3);\r\n}\r\n.survey-hr{\r\n  margin:10px 0;\r\n  border: .5px solid #ddd;\r\n}\r\n.star-rating {\r\n   margin: 25px 0 0px;\r\n  font-size: 0;\r\n  white-space: nowrap;\r\n  display: inline-block;\r\n  width: 175px;\r\n  height: 35px;\r\n  overflow: hidden;\r\n  position: relative;\r\n  background: url(\'data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjREREREREIiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=\');\r\n  background-size: contain;\r\n}\r\n.star-rating i {\r\n  opacity: 0;\r\n  position: absolute;\r\n  left: 0;\r\n  top: 0;\r\n  height: 100%;\r\n  width: 20%;\r\n  z-index: 1;\r\n  background: url(\'data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjRkZERjg4IiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=\');\r\n  background-size: contain;\r\n}\r\n.star-rating input {\r\n  -moz-appearance: none;\r\n  -webkit-appearance: none;\r\n  opacity: 0;\r\n  display: inline-block;\r\n  width: 20%;\r\n  height: 100%;\r\n  margin: 0;\r\n  padding: 0;\r\n  z-index: 2;\r\n  position: relative;\r\n}\r\n.star-rating input:hover + i,\r\n.star-rating input:checked + i {\r\n  opacity: 1;\r\n}\r\n.star-rating i ~ i {\r\n  width: 40%;\r\n}\r\n.star-rating i ~ i ~ i {\r\n  width: 60%;\r\n}\r\n.star-rating i ~ i ~ i ~ i {\r\n  width: 80%;\r\n}\r\n.star-rating i ~ i ~ i ~ i ~ i {\r\n  width: 100%;\r\n}\r\n.choice {\r\n  position: fixed;\r\n  top: 0;\r\n  left: 0;\r\n  right: 0;\r\n  text-align: center;\r\n  padding: 20px;\r\n  display: block;\r\n}\r\nspan.scale-rating{\r\nmargin: 5px 0 15px;\r\n    display: inline-block;\r\n   \r\n    width: 100%;\r\n   \r\n}\r\nspan.scale-rating>label {\r\n  position:relative;\r\n    -webkit-appearance: none;\r\n  outline:0 !important;\r\n    border: 1px solid grey;\r\n    height:33px;\r\n    margin: 0 5px 0 0;\r\n  width: calc(10% - 7px);\r\n    float: left;\r\n  cursor:pointer;\r\n}\r\nspan.scale-rating label {\r\n  position:relative;\r\n    -webkit-appearance: none;\r\n  outline:0 !important;\r\n    height:33px;\r\n      \r\n    margin: 0 5px 0 0;\r\n  width: calc(10% - 7px);\r\n    float: left;\r\n  cursor:pointer;\r\n}\r\nspan.scale-rating input[type=radio] {\r\n  position:absolute;\r\n    -webkit-appearance: none;\r\n  opacity:0;\r\n  outline:0 !important;\r\n    height:33px;\r\n \r\n    margin: 0 5px 0 0;\r\n  \r\n  width: 100%;\r\n    float: left;\r\n  cursor:pointer;\r\n  z-index:3;\r\n}\r\nspan.scale-rating label:hover{\r\nbackground:#fddf8d;\r\n}\r\nspan.scale-rating input[type=radio]:last-child{\r\nborder-right:0;\r\n}\r\nspan.scale-rating label input[type=radio]:checked ~ label{\r\n    -webkit-appearance: none;\r\n\r\n    margin: 0;\r\n  background:#fddf8d;\r\n}\r\nspan.scale-rating label:before\r\n{\r\n  content:attr(value);\r\n    top: 7px;\r\n    width: 100%;\r\n    position: absolute;\r\n    left: 0;\r\n    right: 0;\r\n    text-align: center;\r\n    vertical-align: middle;\r\n  z-index:2;\r\n}\r\n\r\ninput[type=\"text\"] {\r\n  width: 100%;\r\n  padding: 12px 20px;\r\n  margin: 8px 0;\r\n  display: inline-block;\r\n  border: 1px solid #ccc;\r\n  border-radius: 4px;\r\n  box-sizing: border-box;\r\n  font-size: 16px;\r\n}\r\n\r\ninput[type=\"text\"]:focus {\r\n  border-color: #66afe9;\r\n  outline: 0;\r\n  box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);\r\n}\r\n\r\n\r\n</style>\r\n<body>\r\n		\r\n\r\n<section>\r\n    <div class=\"rt-container\">\r\n          <div class=\"col-rt-12\">\r\n              <div class=\"Scriptcontent\">\r\n              \r\n<div class=\"feedback\">\r\n<h2  style=\"text-align: center;\">Feedback Form</h2>\r\n<p>Dear Customer,<br>\r\nThank you for getting your services at our platform. We would like to know how we performed. Please spare some moments to give us your valuable feedback as it will help us in improving our service.</p>\r\n\r\n<h4>Please rate your service experience for the following parameters</h4><br>\r\n<form method=\"post\" action=\"submitFeedback\">\r\n\r\n<label>Name:</label><br>\r\n<input type=\"text\" name=\"name\" required/><br>\r\n\r\n<lable>Mobile No. :</lable><br>\r\n<input type=\"text\" name=\"mobile\" required/><br>\r\n\r\n<label>Device Name :</label><br>\r\n<select name=\"device_name\" style=\"width: 50%;height:40px;font-size:20px\">\r\n  <option value=\"NA\">--</option>\r\n  <option value=\"Laptop\">Laptop</option>\r\n    <option value=\"Mobile\">Mobile</option>\r\n    <option value=\"SmartTV\">SmartTV</option>\r\n</select><br>\r\n<label>1.   How satisfied are you with the Device experience?</label><br>\r\n<span class=\"star-rating\" required>\r\n    <input type=\"radio\" name=\"rating1\" value=\"1\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"2\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"3\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"4\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"5\"><i></i>\r\n  </span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label>2.  How easy was it to navigate and use the device? </label><br>\r\n<span class=\"star-rating\" required>\r\n  <input type=\"radio\" name=\"rating2\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"5\"><i></i>\r\n</span>\r\n\r\n \r\n<div class=\"clear\"></div> \r\n<hr class=\"survey-hr\">\r\n<label>3.   How would you rate the speed and responsiveness of the device? </label><br>\r\n<span class=\"star-rating\" required>\r\n<input type=\"radio\" name=\"rating3\" value=\"1\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"2\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"3\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"4\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label>4.   How would you rate the visual design and aesthetics of the device? </label><br>\r\n<span class=\"star-rating\"required>\r\n  <input type=\"radio\" name=\"rating4\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\"required>\r\n<label>5.  How relevant and helpful was the content/information provided on the service platform? </label><br>\r\n<span class=\"star-rating\">\r\n  <input type=\"radio\" name=\"rating5\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label>6.   How useful were the main features and functionalities of the Device?  </label><br>\r\n<span class=\"star-rating\"required>\r\n  <input type=\"radio\" name=\"rating6\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label class=\"7\">7.  What additional features or functionality would you like to see in the device? </label><br>\r\n<textarea cols=\"75\" name=\"additional_features\" rows=\"5\" ></textarea><br>\r\n\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label class=\"8\">8.   What did you like most about the device? </label><br>\r\n<textarea cols=\"75\" name=\"liked_most\" rows=\"5\" ></textarea><br>\r\n\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label class=\"9\">9. What did you like least about the device? </label><br>\r\n<textarea cols=\"75\" name=\"liked_least\" rows=\"5\" ></textarea><br>\r\n\r\n\r\n  <div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\"> \r\n<label for=\"10\">10. Any Other suggestions:</label><br/>\r\n<textarea cols=\"75\" name=\"other_suggestions\" rows=\"5\" ></textarea><br>\r\n<br>\r\n  <div class=\"clear\"></div> \r\n<input style=\"background:#43a7d5;color:#fff;padding:12px;border:0\" type=\"submit\" value=\"Submit your review\">&nbsp;\r\n</form>\r\n                  </div>\r\n           \r\n    		</div>\r\n		</div>\r\n    </div>\r\n</section>\r\n	</body>\r\n</html>', '2024-04-24 14:25:38'),
(2, 'Mobile', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"> \r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"> \r\n</head>\r\n<style>\r\n\r\n@import url(\'https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900\');\r\n\r\nhtml {\r\n  box-sizing: border-box;\r\n}\r\n*, *:before, *:after {\r\n  box-sizing: inherit;\r\n}\r\n\r\narticle, header, section, aside, details, figcaption, figure, footer, header, hgroup, main, nav, section, summary {\r\n    display: block;\r\n}\r\nbody {\r\n    background:#d9e5ed none repeat scroll 0 0;\r\n    color: #222;\r\n    font-size: 100%;\r\n    line-height: 24px;\r\n    margin: 0;\r\n	padding:0;\r\n	font-family: \"Raleway\",sans-serif;\r\n}\r\na{\r\n	font-family: \"Raleway\",sans-serif;\r\n	text-decoration: none;\r\n	outline: none;\r\n}\r\na:hover, a:focus {\r\n	color: #373e18;\r\n}\r\nsection {\r\n    float: left;\r\n    width: 100%;\r\n	padding-bottom:3em;\r\n}\r\nh2 {\r\n    color: #1a0e0e;\r\n    font-size: 26px;\r\n    font-weight: 700;\r\n    margin: 0;\r\n    line-height: normal;\r\n	text-transform:uppercase;\r\n}\r\nh2 span {\r\n    display: block;\r\n    padding: 0;\r\n    font-size: 18px;\r\n    opacity: 0.7;\r\n    margin-top: 5px;\r\n	text-transform:uppercase;\r\n}\r\n\r\n#float-right{\r\n	float:right;	\r\n}\r\n\r\n.ScriptTop {\r\n    background: #fff none repeat scroll 0 0;\r\n    float: left;\r\n    font-size: 0.69em;\r\n    font-weight: 600;\r\n    line-height: 2.2;\r\n    padding: 12px 0;\r\n    text-transform: uppercase;\r\n    width: 100%;\r\n}\r\n\r\n.ScriptTop ul {\r\n    margin: 24px 0;\r\n    padding: 0;\r\n    text-align: left;\r\n}\r\n.ScriptTop li{\r\n	list-style:none;	\r\n	display:inline-block;\r\n}\r\n.ScriptTop li a {\r\n    background: #6a4aed none repeat scroll 0 0;\r\n    color: #fff;\r\n    display: inline-block;\r\n    font-size: 14px;\r\n    font-weight: 600;\r\n    padding: 5px 18px;\r\n    text-decoration: none;\r\n    text-transform: capitalize;\r\n}\r\n.ScriptTop li a:hover{\r\n	background:#000;\r\n	color:#fff;\r\n}\r\n\r\n.ScriptHeader {\r\n    float: left;\r\n    width: 100%;\r\n    padding: 2em 0;\r\n}\r\n.rt-heading {\r\n    margin: 0 auto;\r\n	text-align:center;\r\n}\r\n.Scriptcontent{\r\n	line-height:28px;	\r\n}\r\n.ScriptHeader h1{\r\n	font-family: \"brandon-grotesque\", \"Brandon Grotesque\", \"Source Sans Pro\", \"Segoe UI\", Frutiger, \"Frutiger Linotype\", \"Dejavu Sans\", \"Helvetica Neue\", Arial, sans-serif;\r\n  text-rendering: optimizeLegibility;\r\n  -webkit-font-smoothing: antialiased;\r\n    color: #6a4aed;\r\n    font-size: 26px;\r\n    font-weight: 700;\r\n    margin: 0;\r\n    line-height: normal;\r\n\r\n}\r\n.ScriptHeader h2 {\r\n    color: #312c8f;\r\n    font-size: 20px;\r\n    font-weight: 400;\r\n    margin: 5px 0 0;\r\n    line-height: normal;\r\n\r\n}\r\n.ScriptHeader h1 span {\r\n    display: block;\r\n    padding: 0;\r\n    font-size: 22px;\r\n    opacity: 0.7;\r\n    margin-top: 5px;\r\n\r\n}\r\n.ScriptHeader span {\r\n    display: block;\r\n    padding: 0;\r\n    font-size: 22px;\r\n    opacity: 0.7;\r\n    margin-top: 5px;\r\n}\r\n\r\n.rt-container {\r\n	margin: 0 auto;\r\n    padding-top:30px ;\r\n	padding-left:12px;\r\n	padding-right:12px;\r\n}\r\n.rt-row:before, .rt-row:after {\r\n  display: table;\r\n  line-height: 0;\r\n  content: \"\";\r\n}\r\n\r\n.rt-row:after {\r\n  clear: both;\r\n}\r\n[class^=\"col-rt-\"] {\r\n  box-sizing: border-box;\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  -o-box-sizing: border-box;\r\n  -ms-box-sizing: border-box;\r\n  padding: 0 15px;\r\n  min-height: 1px;\r\n  position: relative;\r\n}\r\n\r\n\r\n@media (min-width: 768px) {\r\n  .rt-container {\r\n    width: 750px;\r\n  }\r\n  [class^=\"col-rt-\"] {\r\n    float: left;\r\n    width: 49.9999999999%;\r\n  }\r\n  .col-rt-6, .col-rt-12 {\r\n    width: 100%;\r\n  }\r\n  \r\n}\r\n\r\n@media (min-width: 1200px) {\r\n	.rt-container {\r\n		width: 1170px;\r\n	}\r\n	.col-rt-1 {\r\n		width:16.6%;\r\n	}\r\n	.col-rt-2 {\r\n		width:30.33%;\r\n	}\r\n	.col-rt-3 {\r\n		width:50%;\r\n	}\r\n	.col-rt-4 {\r\n		width: 67.664%;\r\n	}\r\n	.col-rt-5 {\r\n		width: 83.33%;\r\n	}\r\n	\r\n\r\n}\r\n\r\n@media only screen and (min-width:240px) and (max-width: 768px){\r\n	 .ScriptTop h1, .ScriptTop ul {\r\n		text-align: center;\r\n	}\r\n	.ScriptTop h1{\r\n		margin-top:0;\r\n		margin-bottom:15px;\r\n	}\r\n	.ScriptTop ul{\r\n		 margin-top:12px;		\r\n	}\r\n	\r\n	.ScriptHeader h1,\r\n	.ScriptHeader h2, \r\n	.scriptnav ul{\r\n		text-align:center;	\r\n	}\r\n	.scriptnav ul{\r\n		 margin-top:12px;		\r\n	}\r\n	#float-right{\r\n		float:none;	\r\n	}\r\n	\r\n}\r\n.feedback{\r\n    width: 100%;\r\n    max-width: 780px;\r\n    background: #fff;\r\n    margin: 0 auto;\r\n    padding: 15px;\r\n    box-shadow: 1px 1px 16px rgba(0, 0, 0, 0.3);\r\n}\r\n.survey-hr{\r\n  margin:10px 0;\r\n  border: .5px solid #ddd;\r\n}\r\n.star-rating {\r\n   margin: 25px 0 0px;\r\n  font-size: 0;\r\n  white-space: nowrap;\r\n  display: inline-block;\r\n  width: 175px;\r\n  height: 35px;\r\n  overflow: hidden;\r\n  position: relative;\r\n  background: url(\'data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjREREREREIiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=\');\r\n  background-size: contain;\r\n}\r\n.star-rating i {\r\n  opacity: 0;\r\n  position: absolute;\r\n  left: 0;\r\n  top: 0;\r\n  height: 100%;\r\n  width: 20%;\r\n  z-index: 1;\r\n  background: url(\'data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjRkZERjg4IiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=\');\r\n  background-size: contain;\r\n}\r\n.star-rating input {\r\n  -moz-appearance: none;\r\n  -webkit-appearance: none;\r\n  opacity: 0;\r\n  display: inline-block;\r\n  width: 20%;\r\n  height: 100%;\r\n  margin: 0;\r\n  padding: 0;\r\n  z-index: 2;\r\n  position: relative;\r\n}\r\n.star-rating input:hover + i,\r\n.star-rating input:checked + i {\r\n  opacity: 1;\r\n}\r\n.star-rating i ~ i {\r\n  width: 40%;\r\n}\r\n.star-rating i ~ i ~ i {\r\n  width: 60%;\r\n}\r\n.star-rating i ~ i ~ i ~ i {\r\n  width: 80%;\r\n}\r\n.star-rating i ~ i ~ i ~ i ~ i {\r\n  width: 100%;\r\n}\r\n.choice {\r\n  position: fixed;\r\n  top: 0;\r\n  left: 0;\r\n  right: 0;\r\n  text-align: center;\r\n  padding: 20px;\r\n  display: block;\r\n}\r\nspan.scale-rating{\r\nmargin: 5px 0 15px;\r\n    display: inline-block;\r\n   \r\n    width: 100%;\r\n   \r\n}\r\nspan.scale-rating>label {\r\n  position:relative;\r\n    -webkit-appearance: none;\r\n  outline:0 !important;\r\n    border: 1px solid grey;\r\n    height:33px;\r\n    margin: 0 5px 0 0;\r\n  width: calc(10% - 7px);\r\n    float: left;\r\n  cursor:pointer;\r\n}\r\nspan.scale-rating label {\r\n  position:relative;\r\n    -webkit-appearance: none;\r\n  outline:0 !important;\r\n    height:33px;\r\n      \r\n    margin: 0 5px 0 0;\r\n  width: calc(10% - 7px);\r\n    float: left;\r\n  cursor:pointer;\r\n}\r\nspan.scale-rating input[type=radio] {\r\n  position:absolute;\r\n    -webkit-appearance: none;\r\n  opacity:0;\r\n  outline:0 !important;\r\n    height:33px;\r\n \r\n    margin: 0 5px 0 0;\r\n  \r\n  width: 100%;\r\n    float: left;\r\n  cursor:pointer;\r\n  z-index:3;\r\n}\r\nspan.scale-rating label:hover{\r\nbackground:#fddf8d;\r\n}\r\nspan.scale-rating input[type=radio]:last-child{\r\nborder-right:0;\r\n}\r\nspan.scale-rating label input[type=radio]:checked ~ label{\r\n    -webkit-appearance: none;\r\n\r\n    margin: 0;\r\n  background:#fddf8d;\r\n}\r\nspan.scale-rating label:before\r\n{\r\n  content:attr(value);\r\n    top: 7px;\r\n    width: 100%;\r\n    position: absolute;\r\n    left: 0;\r\n    right: 0;\r\n    text-align: center;\r\n    vertical-align: middle;\r\n  z-index:2;\r\n}\r\n\r\ninput[type=\"text\"] {\r\n  width: 100%;\r\n  padding: 12px 20px;\r\n  margin: 8px 0;\r\n  display: inline-block;\r\n  border: 1px solid #ccc;\r\n  border-radius: 4px;\r\n  box-sizing: border-box;\r\n  font-size: 16px;\r\n}\r\n\r\ninput[type=\"text\"]:focus {\r\n  border-color: #66afe9;\r\n  outline: 0;\r\n  box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);\r\n}\r\n\r\n\r\n</style>\r\n<body>\r\n		\r\n\r\n<section>\r\n    <div class=\"rt-container\">\r\n          <div class=\"col-rt-12\">\r\n              <div class=\"Scriptcontent\">\r\n              \r\n<div class=\"feedback\">\r\n<h2  style=\"text-align: center;\">Feedback Form</h2>\r\n<p>Dear Customer,<br>\r\nThank you for getting your services at our platform. We would like to know how we performed. Please spare some moments to give us your valuable feedback as it will help us in improving our service.</p>\r\n\r\n<h4>Please rate your service experience for the following parameters</h4><br>\r\n<form method=\"post\" action=\"submitFeedback\">\r\n\r\n<label>Name:</label><br>\r\n<input type=\"text\" name=\"name\" required/><br>\r\n\r\n<lable>Mobile No. :</lable><br>\r\n<input type=\"text\" name=\"mobile\" required/><br>\r\n\r\n<label>Device Name :</label><br>\r\n<select name=\"device_name\" style=\"width: 50%;height:40px;font-size:20px\">\r\n  <option value=\"NA\">--</option>\r\n  <option value=\"Laptop\">Laptop</option>\r\n    <option value=\"Mobile\">Mobile</option>\r\n    <option value=\"SmartTV\">SmartTV</option>\r\n</select><br>\r\n<label>1.   How satisfied are you with the Device experience?</label><br>\r\n<span class=\"star-rating\" required>\r\n    <input type=\"radio\" name=\"rating1\" value=\"1\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"2\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"3\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"4\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"5\"><i></i>\r\n  </span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label>2.  How easy was it to navigate and use the device? </label><br>\r\n<span class=\"star-rating\" required>\r\n  <input type=\"radio\" name=\"rating2\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"5\"><i></i>\r\n</span>\r\n\r\n \r\n<div class=\"clear\"></div> \r\n<hr class=\"survey-hr\">\r\n<label>3.   How would you rate the speed and responsiveness of the device? </label><br>\r\n<span class=\"star-rating\" required>\r\n<input type=\"radio\" name=\"rating3\" value=\"1\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"2\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"3\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"4\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label>4.   How would you rate the visual design and aesthetics of the device? </label><br>\r\n<span class=\"star-rating\"required>\r\n  <input type=\"radio\" name=\"rating4\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\"required>\r\n<label>5.  How relevant and helpful was the content/information provided on the service platform? </label><br>\r\n<span class=\"star-rating\">\r\n  <input type=\"radio\" name=\"rating5\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label>6.   How useful were the main features and functionalities of the Device?  </label><br>\r\n<span class=\"star-rating\"required>\r\n  <input type=\"radio\" name=\"rating6\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label class=\"7\">7.  What additional features or functionality would you like to see in the device? </label><br>\r\n<textarea cols=\"75\" name=\"additional_features\" rows=\"5\" ></textarea><br>\r\n\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label class=\"8\">8.   What did you like most about the device? </label><br>\r\n<textarea cols=\"75\" name=\"liked_most\" rows=\"5\" ></textarea><br>\r\n\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label class=\"9\">9. What did you like least about the device? </label><br>\r\n<textarea cols=\"75\" name=\"liked_least\" rows=\"5\" ></textarea><br>\r\n\r\n\r\n  <div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\"> \r\n<label for=\"10\">10. Any Other suggestions:</label><br/>\r\n<textarea cols=\"75\" name=\"other_suggestions\" rows=\"5\" ></textarea><br>\r\n<br>\r\n  <div class=\"clear\"></div> \r\n<input style=\"background:#43a7d5;color:#fff;padding:12px;border:0\" type=\"submit\" value=\"Submit your review\">&nbsp;\r\n</form>\r\n                  </div>\r\n           \r\n    		</div>\r\n		</div>\r\n    </div>\r\n</section>\r\n	</body>\r\n</html>', '2024-04-24 14:25:38'),
(3, 'Smart TV', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\" />\r\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"> \r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"> \r\n</head>\r\n<style>\r\n\r\n@import url(\'https://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900\');\r\n\r\nhtml {\r\n  box-sizing: border-box;\r\n}\r\n*, *:before, *:after {\r\n  box-sizing: inherit;\r\n}\r\n\r\narticle, header, section, aside, details, figcaption, figure, footer, header, hgroup, main, nav, section, summary {\r\n    display: block;\r\n}\r\nbody {\r\n    background:#d9e5ed none repeat scroll 0 0;\r\n    color: #222;\r\n    font-size: 100%;\r\n    line-height: 24px;\r\n    margin: 0;\r\n	padding:0;\r\n	font-family: \"Raleway\",sans-serif;\r\n}\r\na{\r\n	font-family: \"Raleway\",sans-serif;\r\n	text-decoration: none;\r\n	outline: none;\r\n}\r\na:hover, a:focus {\r\n	color: #373e18;\r\n}\r\nsection {\r\n    float: left;\r\n    width: 100%;\r\n	padding-bottom:3em;\r\n}\r\nh2 {\r\n    color: #1a0e0e;\r\n    font-size: 26px;\r\n    font-weight: 700;\r\n    margin: 0;\r\n    line-height: normal;\r\n	text-transform:uppercase;\r\n}\r\nh2 span {\r\n    display: block;\r\n    padding: 0;\r\n    font-size: 18px;\r\n    opacity: 0.7;\r\n    margin-top: 5px;\r\n	text-transform:uppercase;\r\n}\r\n\r\n#float-right{\r\n	float:right;	\r\n}\r\n\r\n.ScriptTop {\r\n    background: #fff none repeat scroll 0 0;\r\n    float: left;\r\n    font-size: 0.69em;\r\n    font-weight: 600;\r\n    line-height: 2.2;\r\n    padding: 12px 0;\r\n    text-transform: uppercase;\r\n    width: 100%;\r\n}\r\n\r\n.ScriptTop ul {\r\n    margin: 24px 0;\r\n    padding: 0;\r\n    text-align: left;\r\n}\r\n.ScriptTop li{\r\n	list-style:none;	\r\n	display:inline-block;\r\n}\r\n.ScriptTop li a {\r\n    background: #6a4aed none repeat scroll 0 0;\r\n    color: #fff;\r\n    display: inline-block;\r\n    font-size: 14px;\r\n    font-weight: 600;\r\n    padding: 5px 18px;\r\n    text-decoration: none;\r\n    text-transform: capitalize;\r\n}\r\n.ScriptTop li a:hover{\r\n	background:#000;\r\n	color:#fff;\r\n}\r\n\r\n.ScriptHeader {\r\n    float: left;\r\n    width: 100%;\r\n    padding: 2em 0;\r\n}\r\n.rt-heading {\r\n    margin: 0 auto;\r\n	text-align:center;\r\n}\r\n.Scriptcontent{\r\n	line-height:28px;	\r\n}\r\n.ScriptHeader h1{\r\n	font-family: \"brandon-grotesque\", \"Brandon Grotesque\", \"Source Sans Pro\", \"Segoe UI\", Frutiger, \"Frutiger Linotype\", \"Dejavu Sans\", \"Helvetica Neue\", Arial, sans-serif;\r\n  text-rendering: optimizeLegibility;\r\n  -webkit-font-smoothing: antialiased;\r\n    color: #6a4aed;\r\n    font-size: 26px;\r\n    font-weight: 700;\r\n    margin: 0;\r\n    line-height: normal;\r\n\r\n}\r\n.ScriptHeader h2 {\r\n    color: #312c8f;\r\n    font-size: 20px;\r\n    font-weight: 400;\r\n    margin: 5px 0 0;\r\n    line-height: normal;\r\n\r\n}\r\n.ScriptHeader h1 span {\r\n    display: block;\r\n    padding: 0;\r\n    font-size: 22px;\r\n    opacity: 0.7;\r\n    margin-top: 5px;\r\n\r\n}\r\n.ScriptHeader span {\r\n    display: block;\r\n    padding: 0;\r\n    font-size: 22px;\r\n    opacity: 0.7;\r\n    margin-top: 5px;\r\n}\r\n\r\n.rt-container {\r\n	margin: 0 auto;\r\n    padding-top:30px ;\r\n	padding-left:12px;\r\n	padding-right:12px;\r\n}\r\n.rt-row:before, .rt-row:after {\r\n  display: table;\r\n  line-height: 0;\r\n  content: \"\";\r\n}\r\n\r\n.rt-row:after {\r\n  clear: both;\r\n}\r\n[class^=\"col-rt-\"] {\r\n  box-sizing: border-box;\r\n  -webkit-box-sizing: border-box;\r\n  -moz-box-sizing: border-box;\r\n  -o-box-sizing: border-box;\r\n  -ms-box-sizing: border-box;\r\n  padding: 0 15px;\r\n  min-height: 1px;\r\n  position: relative;\r\n}\r\n\r\n\r\n@media (min-width: 768px) {\r\n  .rt-container {\r\n    width: 750px;\r\n  }\r\n  [class^=\"col-rt-\"] {\r\n    float: left;\r\n    width: 49.9999999999%;\r\n  }\r\n  .col-rt-6, .col-rt-12 {\r\n    width: 100%;\r\n  }\r\n  \r\n}\r\n\r\n@media (min-width: 1200px) {\r\n	.rt-container {\r\n		width: 1170px;\r\n	}\r\n	.col-rt-1 {\r\n		width:16.6%;\r\n	}\r\n	.col-rt-2 {\r\n		width:30.33%;\r\n	}\r\n	.col-rt-3 {\r\n		width:50%;\r\n	}\r\n	.col-rt-4 {\r\n		width: 67.664%;\r\n	}\r\n	.col-rt-5 {\r\n		width: 83.33%;\r\n	}\r\n	\r\n\r\n}\r\n\r\n@media only screen and (min-width:240px) and (max-width: 768px){\r\n	 .ScriptTop h1, .ScriptTop ul {\r\n		text-align: center;\r\n	}\r\n	.ScriptTop h1{\r\n		margin-top:0;\r\n		margin-bottom:15px;\r\n	}\r\n	.ScriptTop ul{\r\n		 margin-top:12px;		\r\n	}\r\n	\r\n	.ScriptHeader h1,\r\n	.ScriptHeader h2, \r\n	.scriptnav ul{\r\n		text-align:center;	\r\n	}\r\n	.scriptnav ul{\r\n		 margin-top:12px;		\r\n	}\r\n	#float-right{\r\n		float:none;	\r\n	}\r\n	\r\n}\r\n.feedback{\r\n    width: 100%;\r\n    max-width: 780px;\r\n    background: #fff;\r\n    margin: 0 auto;\r\n    padding: 15px;\r\n    box-shadow: 1px 1px 16px rgba(0, 0, 0, 0.3);\r\n}\r\n.survey-hr{\r\n  margin:10px 0;\r\n  border: .5px solid #ddd;\r\n}\r\n.star-rating {\r\n   margin: 25px 0 0px;\r\n  font-size: 0;\r\n  white-space: nowrap;\r\n  display: inline-block;\r\n  width: 175px;\r\n  height: 35px;\r\n  overflow: hidden;\r\n  position: relative;\r\n  background: url(\'data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjREREREREIiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=\');\r\n  background-size: contain;\r\n}\r\n.star-rating i {\r\n  opacity: 0;\r\n  position: absolute;\r\n  left: 0;\r\n  top: 0;\r\n  height: 100%;\r\n  width: 20%;\r\n  z-index: 1;\r\n  background: url(\'data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMjBweCIgaGVpZ2h0PSIyMHB4IiB2aWV3Qm94PSIwIDAgMjAgMjAiIGVuYWJsZS1iYWNrZ3JvdW5kPSJuZXcgMCAwIDIwIDIwIiB4bWw6c3BhY2U9InByZXNlcnZlIj48cG9seWdvbiBmaWxsPSIjRkZERjg4IiBwb2ludHM9IjEwLDAgMTMuMDksNi41ODMgMjAsNy42MzkgMTUsMTIuNzY0IDE2LjE4LDIwIDEwLDE2LjU4MyAzLjgyLDIwIDUsMTIuNzY0IDAsNy42MzkgNi45MSw2LjU4MyAiLz48L3N2Zz4=\');\r\n  background-size: contain;\r\n}\r\n.star-rating input {\r\n  -moz-appearance: none;\r\n  -webkit-appearance: none;\r\n  opacity: 0;\r\n  display: inline-block;\r\n  width: 20%;\r\n  height: 100%;\r\n  margin: 0;\r\n  padding: 0;\r\n  z-index: 2;\r\n  position: relative;\r\n}\r\n.star-rating input:hover + i,\r\n.star-rating input:checked + i {\r\n  opacity: 1;\r\n}\r\n.star-rating i ~ i {\r\n  width: 40%;\r\n}\r\n.star-rating i ~ i ~ i {\r\n  width: 60%;\r\n}\r\n.star-rating i ~ i ~ i ~ i {\r\n  width: 80%;\r\n}\r\n.star-rating i ~ i ~ i ~ i ~ i {\r\n  width: 100%;\r\n}\r\n.choice {\r\n  position: fixed;\r\n  top: 0;\r\n  left: 0;\r\n  right: 0;\r\n  text-align: center;\r\n  padding: 20px;\r\n  display: block;\r\n}\r\nspan.scale-rating{\r\nmargin: 5px 0 15px;\r\n    display: inline-block;\r\n   \r\n    width: 100%;\r\n   \r\n}\r\nspan.scale-rating>label {\r\n  position:relative;\r\n    -webkit-appearance: none;\r\n  outline:0 !important;\r\n    border: 1px solid grey;\r\n    height:33px;\r\n    margin: 0 5px 0 0;\r\n  width: calc(10% - 7px);\r\n    float: left;\r\n  cursor:pointer;\r\n}\r\nspan.scale-rating label {\r\n  position:relative;\r\n    -webkit-appearance: none;\r\n  outline:0 !important;\r\n    height:33px;\r\n      \r\n    margin: 0 5px 0 0;\r\n  width: calc(10% - 7px);\r\n    float: left;\r\n  cursor:pointer;\r\n}\r\nspan.scale-rating input[type=radio] {\r\n  position:absolute;\r\n    -webkit-appearance: none;\r\n  opacity:0;\r\n  outline:0 !important;\r\n    height:33px;\r\n \r\n    margin: 0 5px 0 0;\r\n  \r\n  width: 100%;\r\n    float: left;\r\n  cursor:pointer;\r\n  z-index:3;\r\n}\r\nspan.scale-rating label:hover{\r\nbackground:#fddf8d;\r\n}\r\nspan.scale-rating input[type=radio]:last-child{\r\nborder-right:0;\r\n}\r\nspan.scale-rating label input[type=radio]:checked ~ label{\r\n    -webkit-appearance: none;\r\n\r\n    margin: 0;\r\n  background:#fddf8d;\r\n}\r\nspan.scale-rating label:before\r\n{\r\n  content:attr(value);\r\n    top: 7px;\r\n    width: 100%;\r\n    position: absolute;\r\n    left: 0;\r\n    right: 0;\r\n    text-align: center;\r\n    vertical-align: middle;\r\n  z-index:2;\r\n}\r\n\r\ninput[type=\"text\"] {\r\n  width: 100%;\r\n  padding: 12px 20px;\r\n  margin: 8px 0;\r\n  display: inline-block;\r\n  border: 1px solid #ccc;\r\n  border-radius: 4px;\r\n  box-sizing: border-box;\r\n  font-size: 16px;\r\n}\r\n\r\ninput[type=\"text\"]:focus {\r\n  border-color: #66afe9;\r\n  outline: 0;\r\n  box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);\r\n}\r\n\r\n\r\n</style>\r\n<body>\r\n		\r\n\r\n<section>\r\n    <div class=\"rt-container\">\r\n          <div class=\"col-rt-12\">\r\n              <div class=\"Scriptcontent\">\r\n              \r\n<div class=\"feedback\">\r\n<h2  style=\"text-align: center;\">Feedback Form</h2>\r\n<p>Dear Customer,<br>\r\nThank you for getting your services at our platform. We would like to know how we performed. Please spare some moments to give us your valuable feedback as it will help us in improving our service.</p>\r\n\r\n<h4>Please rate your service experience for the following parameters</h4><br>\r\n<form method=\"post\" action=\"submitFeedback\">\r\n\r\n<label>Name:</label><br>\r\n<input type=\"text\" name=\"name\" required/><br>\r\n\r\n<lable>Mobile No. :</lable><br>\r\n<input type=\"text\" name=\"mobile\" required/><br>\r\n\r\n<label>Device Name :</label><br>\r\n<select name=\"device_name\" style=\"width: 50%;height:40px;font-size:20px\">\r\n  <option value=\"NA\">--</option>\r\n  <option value=\"Laptop\">Laptop</option>\r\n    <option value=\"Mobile\">Mobile</option>\r\n    <option value=\"SmartTV\">SmartTV</option>\r\n</select><br>\r\n<label>1.   How satisfied are you with the Device experience?</label><br>\r\n<span class=\"star-rating\" required>\r\n    <input type=\"radio\" name=\"rating1\" value=\"1\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"2\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"3\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"4\"><i></i>\r\n    <input type=\"radio\" name=\"rating1\" value=\"5\"><i></i>\r\n  </span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label>2.  How easy was it to navigate and use the device? </label><br>\r\n<span class=\"star-rating\" required>\r\n  <input type=\"radio\" name=\"rating2\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating2\" value=\"5\"><i></i>\r\n</span>\r\n\r\n \r\n<div class=\"clear\"></div> \r\n<hr class=\"survey-hr\">\r\n<label>3.   How would you rate the speed and responsiveness of the device? </label><br>\r\n<span class=\"star-rating\" required>\r\n<input type=\"radio\" name=\"rating3\" value=\"1\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"2\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"3\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"4\"><i></i>\r\n<input type=\"radio\" name=\"rating3\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label>4.   How would you rate the visual design and aesthetics of the device? </label><br>\r\n<span class=\"star-rating\"required>\r\n  <input type=\"radio\" name=\"rating4\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating4\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\"required>\r\n<label>5.  How relevant and helpful was the content/information provided on the service platform? </label><br>\r\n<span class=\"star-rating\">\r\n  <input type=\"radio\" name=\"rating5\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating5\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label>6.   How useful were the main features and functionalities of the Device?  </label><br>\r\n<span class=\"star-rating\"required>\r\n  <input type=\"radio\" name=\"rating6\" value=\"1\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"2\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"3\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"4\"><i></i>\r\n  <input type=\"radio\" name=\"rating6\" value=\"5\"><i></i>\r\n</span>\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label class=\"7\">7.  What additional features or functionality would you like to see in the device? </label><br>\r\n<textarea cols=\"75\" name=\"additional_features\" rows=\"5\" ></textarea><br>\r\n\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label class=\"8\">8.   What did you like most about the device? </label><br>\r\n<textarea cols=\"75\" name=\"liked_most\" rows=\"5\" ></textarea><br>\r\n\r\n\r\n<div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\">\r\n<label class=\"9\">9. What did you like least about the device? </label><br>\r\n<textarea cols=\"75\" name=\"liked_least\" rows=\"5\" ></textarea><br>\r\n\r\n\r\n  <div class=\"clear\"></div> \r\n  <hr class=\"survey-hr\"> \r\n<label for=\"10\">10. Any Other suggestions:</label><br/>\r\n<textarea cols=\"75\" name=\"other_suggestions\" rows=\"5\" ></textarea><br>\r\n<br>\r\n  <div class=\"clear\"></div> \r\n<input style=\"background:#43a7d5;color:#fff;padding:12px;border:0\" type=\"submit\" value=\"Submit your review\">&nbsp;\r\n</form>\r\n                  </div>\r\n           \r\n    		</div>\r\n		</div>\r\n    </div>\r\n</section>\r\n	</body>\r\n</html>', '2024-04-24 14:25:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `created_at`, `updated_at`, `desc`) VALUES
(29, 'Laptop', 'pexels-tuur-tisseghem-8122641.jpg', '2024-04-12 07:15:21', '2024-04-12 07:15:21', 'A laptop is a portable personal computer with a clamshell design, integrating the display, keyboard, and other components into a single mobile device. Laptops are designed for mobile use, allowing users to work, browse, and be productive on the go. They offer the convenience of portability compared to desktop computers.'),
(30, 'Mobile', 'pexels-jess-bailey-designs-7889461.jpg', '2024-04-12 07:18:12', '2024-04-14 09:58:36', 'A mobile device is a portable electronic gadget that can be easily carried and used while on the move. Common examples include smartphones, tablets, and e-readers. These devices are designed for mobility, with features like touch screens, wireless connectivity, and compact, lightweight forms. Mobile devices enable users to access information, communicate, and be productive from almost anywhere. Key capabilities often include web browsing, app usage, media playback, and location-based services.'),
(31, 'Smart TV', 'Untitled1.jpg', '2024-04-12 07:44:50', '2024-04-14 09:58:53', 'A smart TV is an internet-connected television that offers a range of advanced features beyond traditional TV sets. Smart TVs can access online content, run apps, and provide additional functionality like web browsing, voice control, and streaming services. They connect to the internet either wirelessly or through a wired ethernet connection, allowing users to stream movies, shows, and live TV from popular platforms. Smart TVs often have built-in software platforms and user interfaces.');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(10) NOT NULL,
  `FirstName` char(30) NOT NULL,
  `LastName` char(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FirstName`, `LastName`, `Email`, `Password`, `PostingDate`) VALUES
(1, 'Akshay', 'Matere', 'akshaymatere333@gmail.com', '123456', '2024-03-11 15:31:12'),
(2, 'Shubham', 'Zete', 'ShubhamZete345@hotmail.com', '789456', '2024-04-01 06:03:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deleted_ids`
--
ALTER TABLE `deleted_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_table`
--
ALTER TABLE `form_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form_table`
--
ALTER TABLE `form_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"feedback\",\"table\":\"feedback_form\"},{\"db\":\"feedback\",\"table\":\"employee\"},{\"db\":\"feedback\",\"table\":\"deleted_ids\"},{\"db\":\"feedback\",\"table\":\"customer\"},{\"db\":\"feedback\",\"table\":\"products\"},{\"db\":\"feedback\",\"table\":\"form_table\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-04-21 02:10:14', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
