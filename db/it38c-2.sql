-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 08:41 AM
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
-- Database: `it38c-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `login_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`login_id`, `user_id`, `login_time`) VALUES
(1, 1, '2025-02-13 15:16:15'),
(2, 2, '2025-02-13 15:16:55'),
(3, 3, '2025-02-13 15:38:19'),
(4, 4, '2025-02-13 15:39:23'),
(5, 2, '2025-02-13 15:39:32'),
(6, 2, '2025-03-13 14:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL DEFAULT current_timestamp(),
  `users_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `attendance_date`, `users_id`) VALUES
(1, '2025-03-01', 1),
(2, '2025-03-01', 2),
(3, '2025-03-02', 3),
(4, '2025-03-02', 1),
(5, '2025-03-03', 2),
(6, '2025-03-03', 4),
(7, '2025-03-04', 5),
(8, '2025-03-04', 3),
(9, '2025-03-05', 4),
(10, '2025-03-05', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` enum('admin','user') NOT NULL DEFAULT 'user',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_type`, `last_login`, `created_at`) VALUES
(1, 'user', '$2y$10$.xUVMEPtedA5tNMgoFGyB.dnRdAXn7FavkhG8XrBjf0GYIgka0suq', 'user', '2025-02-13 15:16:15', '2025-02-13 07:15:40'),
(2, 'admin', '$2y$10$4oJDOkM8cjYYPqBML412ZODYSwSzvyjHbnrrEMV5tKptb2JGzurcG', 'admin', '2025-03-13 14:50:13', '2025-02-13 07:15:57'),
(3, 'alawabalo', '$2y$10$ukk.lQ1iKzZ/4PmX5WNPketmhtjvwlSPLLWB2xeKBqr5Ku.h2Sx4a', 'user', '2025-02-13 15:38:19', '2025-02-13 07:38:08'),
(4, 'lawrenceGay', '$2y$10$/NiMYhYwcey.vQ1x8vCvouK2t6ruzZEePMYy3KYxdh78jsZ9.LxQ.', 'user', '2025-02-13 15:39:23', '2025-02-13 07:39:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
