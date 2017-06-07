-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 07, 2017 at 06:02 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_expense`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`department_id`, `department_name`) VALUES
(1, 'Operations'),
(2, 'Engineering'),
(3, 'Sales'),
(4, 'Marketing'),
(5, 'HR'),
(6, 'Finance');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `employee_role_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `employee_created_by_id` int(11) NOT NULL,
  `employee_created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `first_name`, `last_name`, `email_id`, `password`, `employee_role_id`, `department_id`, `employee_created_by_id`, `employee_created_on`) VALUES
(1, 1100, 'Ramesh', 'B', 'r@aissell.com', '12345678', 2, 2, 1100, '2017-06-07 09:26:24'),
(2, 1118, 'Soumya', 'Shet', 's@aissel.com', 'soumya', 1, 2, 1100, '2017-06-07 09:27:57'),
(3, 1120, 'Deepa', 'G', 'd@aissel.com', 'deepa', 1, 1, 1100, '2017-06-07 09:29:20'),
(4, 1119, 'Vinuta', 'K', 'v@gmail.com', 'vinuta', 1, 3, 1100, '2017-06-07 09:30:27'),
(5, 1121, 'Uday', 'Haliyal', 'u@aissel.com', 'uday', 1, 4, 1100, '2017-06-07 09:33:00'),
(6, 1122, 'Kumaresh', 'B', 'k@aissel.com', 'kumaresh', 1, 6, 1100, '2017-06-07 09:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` int(11) NOT NULL,
  `expense_travel_assigned_id` int(11) NOT NULL,
  `expense_date` date NOT NULL,
  `expense_time` time NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `expense_desc` varchar(200) NOT NULL,
  `expense_price` float NOT NULL,
  `expense_attach` varchar(255) NOT NULL,
  `expense_status_id` int(11) NOT NULL DEFAULT '1',
  `expense_created_by_id` int(11) NOT NULL,
  `expense_created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `expense_travel_assigned_id`, `expense_date`, `expense_time`, `expense_category_id`, `expense_desc`, `expense_price`, `expense_attach`, `expense_status_id`, `expense_created_by_id`, `expense_created_on`) VALUES
(1, 1, '2017-06-09', '10:00:00', 1, 'lunch', 130, 'a.jpg', 1, 1118, '2017-06-07 10:14:42'),
(2, 1, '2017-06-10', '14:00:00', 2, 'auto', 30, 'd.jpg', 2, 1118, '2017-06-07 10:16:02'),
(3, 1, '2017-06-11', '05:00:00', 3, 'xerox', 50, 'g.jpg', 3, 1118, '2017-06-07 10:17:24'),
(4, 2, '2017-06-09', '21:11:00', 1, 'dinner', 180, 'f.jpg', 1, 1122, '2017-06-07 10:18:28'),
(5, 2, '2017-06-12', '07:00:00', 1, 'tiffin', 30, 'ff.jpg', 2, 1122, '2017-06-07 10:19:19'),
(6, 3, '2017-06-09', '08:00:00', 1, 'tiffin', 30, 'ff.jpg', 1, 1119, '2017-06-07 10:21:31'),
(7, 3, '2017-06-09', '15:00:00', 1, 'lunch', 100, 'aa.jpg', 2, 1119, '2017-06-07 10:21:31'),
(8, 4, '2017-06-22', '23:00:00', 2, 'ticket price', 800, 'rt.jpg', 1, 1121, '2017-06-07 10:25:25'),
(9, 4, '2017-06-23', '10:00:00', 4, 'room rent', 450.5, 'fgh.jpg', 2, 1121, '2017-06-07 10:25:25'),
(10, 4, '2017-06-27', '16:00:00', 2, 'ticket price', 900, 'hjk.jpg', 2, 1121, '2017-06-07 10:32:28'),
(11, 4, '2017-06-27', '14:00:00', 1, 'lunch', 80, 'hjj.jpg', 3, 1121, '2017-06-07 10:33:41'),
(12, 5, '2017-06-22', '10:00:00', 2, 'city bus ticket price', 20, 'dfgg.jpg', 1, 1120, '2017-06-07 10:34:43'),
(13, 7, '2017-06-28', '22:00:00', 1, 'dinner', 140, 'ggf.jpg', 1, 1119, '2017-06-07 10:39:30'),
(14, 7, '2017-06-29', '10:00:00', 2, 'auto', 80, 'ggdgdsv.jpg', 2, 1119, '2017-06-07 10:39:30'),
(15, 8, '2017-06-28', '12:00:00', 3, 'stationery', 40, 'wtt.jpg', 1, 1121, '2017-06-07 10:41:35'),
(16, 8, '2017-06-29', '19:00:00', 4, 'room rent', 600, 'jfhtrfg.jpg', 3, 1121, '2017-06-07 10:41:35'),
(17, 9, '2017-06-28', '16:00:00', 1, 'evening snacks', 30, 'iu.jpg', 1, 1122, '2017-06-07 11:13:17'),
(18, 9, '2017-06-29', '08:00:00', 2, 'bus ticket', 20, 'ytt.jpg', 1, 1122, '2017-06-07 11:13:17'),
(19, 10, '2017-06-28', '13:00:00', 3, 'stationery', 80, 'tyi.jpg', 2, 1119, '2017-06-07 11:15:12'),
(20, 10, '2017-06-29', '15:00:00', 4, 'room rent', 1100, 'erer.jpg', 3, 1119, '2017-06-07 11:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `expense_category_id` int(11) NOT NULL,
  `expense_category_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`expense_category_id`, `expense_category_name`) VALUES
(1, 'Food'),
(2, 'Transportation'),
(3, 'Accomodation'),
(4, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `expense_statuses`
--

CREATE TABLE `expense_statuses` (
  `expense_status_id` int(11) NOT NULL,
  `expense_status_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_statuses`
--

INSERT INTO `expense_statuses` (`expense_status_id`, `expense_status_name`) VALUES
(1, 'Pending'),
(2, 'Accepted'),
(3, 'Rejected');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Employee'),
(2, 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `travel_id` int(11) NOT NULL,
  `travel_name` varchar(255) NOT NULL,
  `travel_desc` text NOT NULL,
  `travel_startd` date NOT NULL,
  `travel_endd` date NOT NULL,
  `travel_status` int(11) NOT NULL DEFAULT '1',
  `travel_created_by_id` int(11) NOT NULL,
  `travel_created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travels`
--

INSERT INTO `travels` (`travel_id`, `travel_name`, `travel_desc`, `travel_startd`, `travel_endd`, `travel_status`, `travel_created_by_id`, `travel_created_on`) VALUES
(1, 'Recruitment Drive in bengaluru', 'Recruitment Drive in bengaluru for MBA graduates in ramaiyya collage....', '2017-06-09', '2017-06-13', 1, 1100, '2017-06-07 09:38:54'),
(2, 'AWS Training', 'AWS Training in Mumbai', '2017-06-22', '2017-06-27', 1, 1100, '2017-06-07 09:41:32'),
(3, 'Marketing team KT', 'Marketing team KT in Goa', '2017-06-28', '2017-06-29', 1, 1100, '2017-06-07 09:42:15'),
(4, 'Recruitment Drive in Goa', 'Recruitment Drive in Goa for B.E graduates', '2017-06-09', '2017-06-18', 1, 1100, '2017-06-07 09:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `travels_assigned`
--

CREATE TABLE `travels_assigned` (
  `travel_assigned_id` int(11) NOT NULL,
  `travel_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travels_assigned`
--

INSERT INTO `travels_assigned` (`travel_assigned_id`, `travel_id`, `employee_id`) VALUES
(1, 1, 1118),
(2, 1, 1122),
(3, 1, 1119),
(4, 2, 1121),
(5, 2, 1120),
(6, 3, 1119),
(7, 3, 1120),
(8, 3, 1121),
(9, 3, 1122),
(10, 4, 1119);

-- --------------------------------------------------------

--
-- Table structure for table `travel_statuses`
--

CREATE TABLE `travel_statuses` (
  `travel_status_id` int(11) NOT NULL,
  `travel_status_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_statuses`
--

INSERT INTO `travel_statuses` (`travel_status_id`, `travel_status_name`) VALUES
(1, 'Ongoing'),
(2, 'Completed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`,`employee_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indexes for table `expense_statuses`
--
ALTER TABLE `expense_statuses`
  ADD PRIMARY KEY (`expense_status_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`travel_id`);

--
-- Indexes for table `travels_assigned`
--
ALTER TABLE `travels_assigned`
  ADD PRIMARY KEY (`travel_assigned_id`);

--
-- Indexes for table `travel_statuses`
--
ALTER TABLE `travel_statuses`
  ADD PRIMARY KEY (`travel_status_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `expense_statuses`
--
ALTER TABLE `expense_statuses`
  MODIFY `expense_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `travel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `travels_assigned`
--
ALTER TABLE `travels_assigned`
  MODIFY `travel_assigned_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `travel_statuses`
--
ALTER TABLE `travel_statuses`
  MODIFY `travel_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
