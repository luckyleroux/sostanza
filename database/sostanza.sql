-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2024 at 08:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sostanza`
--

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(255) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`, `date_created`, `date_updated`) VALUES
(1, 'Request', '2024-07-17 02:44:05', '0000-00-00'),
(2, 'Pending', '2024-07-17 02:44:05', '0000-00-00'),
(3, 'Accepted', '2024-07-17 02:44:22', '0000-00-00'),
(4, 'To Received', '2024-07-17 02:44:22', '0000-00-00'),
(5, 'Received', '2024-07-17 02:44:35', '0000-00-00'),
(6, 'Cancelled', '2024-07-17 02:44:35', '0000-00-00'),
(7, 'Rejected', '2024-07-17 02:44:49', '0000-00-00'),
(8, 'Closed', '2024-07-17 02:44:49', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL DEFAULT 1,
  `attempts` int(11) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT 1,
  `user_fname` varchar(255) NOT NULL DEFAULT 'default',
  `user_lname` varchar(255) NOT NULL DEFAULT 'default',
  `user_email` varchar(255) NOT NULL,
  `user_site` text NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `user_level`, `attempts`, `user_status`, `user_fname`, `user_lname`, `user_email`, `user_site`, `date_created`, `date_updated`) VALUES
(1, 'RYAN', '$2y$12$cREhOI3gfNmUWjAeaWWgQeNAQarKlMEc3Y.6QyEd7mFidrQ0Ju0S2', 0, 0, 1, 'default', 'default', '', '', '2024-07-16 16:00:00', '0000-00-00'),
(2, 'ADMIN', '$2y$12$miTBvfpomR0VDq2vPQARTOFxUWiC5pgBQMX0HuAsrqmJmMXhjBXL.', 1, 0, 1, 'default', 'default', '', '', '2024-07-16 16:00:00', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
