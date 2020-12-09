-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2020 at 07:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `date`) VALUES
(8, 33, 6, 'I also loved this anime!!', 'the_tesla_guy', '2020-12-09 06:28:05'),
(9, 38, 7, 'I am enjoying it Sir.', 'rahul _dev_284131', '2020-12-09 06:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(32, 6, 'Hi any anime lovers out there??', '', '2020-12-09 06:21:17'),
(33, 6, 'Attack on Titans is my favourite anime, Have you seen it too?', 'aot.jpg.30', '2020-12-09 06:21:53'),
(34, 4, 'This is how  our rocket launchers work-', 'empost.jpg.83', '2020-12-09 06:30:37'),
(35, 4, 'We have decrypted aliens code!!Yeah', '', '2020-12-09 06:31:32'),
(38, 7, 'Take your free trial soon!!', '', '2020-12-09 06:41:32'),
(39, 5, 'How Am I looking?', 'rd1.jpg.27', '2020-12-09 06:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(4, 'Elon ', 'Musk', 'the_tesla_guy', 'Founder of Boring Company !! but not so boring as person!', 'Married', 'elonmusk', 'elonmusk@gmail.com', 'US', 'Male', '2020-12-01', 'em2.jpg.5', 'em1.jpg.56', '2020-12-09 06:10:37', 'verified', 'yes', 'Changetheworldbybeingyourself'),
(5, 'Rahul ', 'Dev', 'rahul _dev_284131', 'Hello Ice Breaker! This is my default status!', 'In a Relationship', 'rahuldev', 'rahuldev@gmail.com', 'India', 'Male', '2020-12-09', 'rd1.jpg.18', 'rd1.jpg.3', '2020-12-09 06:11:36', 'verified', 'yes', 'Changetheworldbybeingyourself'),
(6, 'Vansh', 'Gupta', 'vansh_gupta_520744', 'Anime lover!!', 'Single', 'vanshgupta', 'vanshgupta@gmail.com', 'India', 'Male', '2020-12-31', 'aot.jpg.26', 'anime.jpg.69', '2020-12-09 06:12:45', 'verified', 'yes', 'Changetheworldbybeingyourself'),
(7, 'Jeff ', 'Bezos', 'richest_in_d_world', 'we offer A to Z services', 'Divorced', 'jeffbezos', 'jeffbezos@gmail.com', 'US', 'Male', '2020-10-07', 'jb1.jpg.71', 'jb2.jpg.70', '2020-12-09 06:13:49', 'verified', 'yes', 'Changetheworldbybeingyourself');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `date`, `msg_seen`) VALUES
(22, 4, 6, 'Hi sir , I am your big fan\r\n', '2020-12-09 06:22:39', 'no'),
(23, 4, 6, 'You are inspiration sir', '2020-12-09 06:23:10', 'no'),
(24, 4, 6, 'I want to do internship at Tesla', '2020-12-09 06:23:27', 'no'),
(25, 5, 6, 'Hey buddy!!', '2020-12-09 06:23:45', 'no'),
(26, 7, 6, 'Hi sir\r\n', '2020-12-09 06:24:01', 'no'),
(27, 7, 6, 'Amazon Prime is great!!', '2020-12-09 06:24:39', 'no'),
(28, 7, 6, 'I love all the services by amazon', '2020-12-09 06:24:59', 'no'),
(29, 6, 4, 'Send your resume', '2020-12-09 06:28:40', 'no'),
(30, 7, 4, 'Hey cheer up', '2020-12-09 06:29:09', 'no'),
(31, 7, 4, 'Coz i will take d 1st position', '2020-12-09 06:29:24', 'no'),
(32, 7, 4, 'and become the richest person soon!!', '2020-12-09 06:29:38', 'no'),
(33, 4, 7, 'Lets see!!', '2020-12-09 06:34:03', 'no'),
(34, 6, 7, 'Thank You vansh!!', '2020-12-09 06:34:19', 'no'),
(35, 6, 5, 'Hi ', '2020-12-09 06:44:22', 'no'),
(36, 6, 5, 'Where are you from?', '2020-12-09 06:44:33', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
