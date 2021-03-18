-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2021 at 08:16 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sapa`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_history`
--

CREATE TABLE `chat_history` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_history`
--

INSERT INTO `chat_history` (`id`, `sender_id`, `receiver_id`, `message`, `createdAt`, `updateAt`) VALUES
(1, 8, 5, 'hi', '2021-03-17 11:01:21', NULL),
(2, 8, 5, 'apa kabar ?', '2021-03-17 11:01:21', NULL),
(3, 5, 8, 'ye ?', '2021-03-17 11:02:08', NULL),
(4, 5, 8, 'sehat kok, km gmana ?', '2021-03-17 11:02:08', NULL),
(5, 5, 11, 'annyeong haseo', '2021-03-17 11:02:51', NULL),
(6, 11, 5, 'halo', '2021-03-17 11:02:51', NULL),
(7, 5, 8, 'kok lama banget balesnya ?', '2021-03-17 11:34:28', NULL),
(8, 5, 8, 'P', '2021-03-17 14:12:26', NULL),
(9, 8, 5, 'eh iya maap', '2021-03-17 14:14:06', NULL),
(10, 8, 5, 'baru buka hp, tadi lagi keluar sama tmn2', '2021-03-17 14:14:26', NULL),
(11, 8, 5, 'aku sehat kok :)))', '2021-03-17 14:14:51', NULL),
(12, 5, 8, 'Hoo', '2021-03-17 14:40:38', NULL),
(13, 5, 8, 'Hoo', '2021-03-17 14:40:40', NULL),
(14, 8, 5, 'lagi apa kak ?', '2021-03-17 14:41:07', NULL),
(15, 5, 8, 'Biasa, ngopi', '2021-03-17 14:46:02', NULL),
(16, 5, 8, 'Biasa, ngopi', '2021-03-17 14:46:06', NULL),
(17, 5, 8, 'Biasa, ngopi', '2021-03-17 14:46:09', NULL),
(18, 8, 5, 'lanjut dah kak kalo gitu hehe', '2021-03-17 14:46:59', NULL),
(19, 5, 8, 'Eh gpp bil', '2021-03-17 14:47:29', NULL),
(20, 5, 8, 'Lanjut aja chat', '2021-03-17 14:47:37', NULL),
(21, 8, 5, 'gaenak ganggu kak', '2021-03-17 15:00:16', NULL),
(22, 5, 8, 'Yaelah, biasa aja bil', '2021-03-17 15:04:50', NULL),
(23, 5, 8, 'Bila? ', '2021-03-17 15:26:16', NULL),
(24, 5, 8, 'Dah tidur? ', '2021-03-17 15:27:13', NULL),
(25, 5, 8, 'Kok ga bales?? ', '2021-03-17 15:28:01', NULL),
(26, 8, 5, 'belum kak', '2021-03-17 15:29:04', NULL),
(27, 5, 8, 'Hoo', '2021-03-17 15:29:25', NULL),
(28, 5, 8, 'Okedah', '2021-03-17 15:31:10', NULL),
(29, 5, 8, 'Sori dah ganggu', '2021-03-17 15:31:41', NULL),
(30, 8, 5, 'ngga apa2 kok kakk, seneng diganggu kak indra ^_^', '2021-03-17 15:33:04', NULL),
(31, 8, 5, 'jangan marah kak, tadi lagi sibuk. aku td lagi sibuk latihan dance sama tmn2,,\nntar jam 10 senggang ga ?? aku mau nelfon kak indra, tapi kalo kak indra masih marah gausah jg gpp T.T, mudahan besok sudah ga marah :*', '2021-03-17 15:38:56', NULL),
(32, 5, 8, 'Tes', '2021-03-17 15:40:52', NULL),
(33, 5, 9, 'Assalamualaikum ukhti :)) ', '2021-03-17 15:41:39', NULL),
(34, 5, 9, 'Ih sombong:((', '2021-03-17 15:43:19', NULL),
(35, 5, 8, 'ngga marah kokk', '2021-03-17 15:43:32', NULL),
(36, 5, 8, 'yauda nanti kakak tunggu telfonnya ya', '2021-03-17 15:45:58', NULL),
(37, 5, 9, 'sumpah ya', '2021-03-17 15:46:11', NULL),
(38, 5, 13, 'Bu', '2021-03-17 16:04:14', NULL),
(39, 5, 13, 'Ntar indra pulang', '2021-03-17 16:05:50', NULL),
(40, 5, 13, 'Ntar indra pulang', '2021-03-17 16:06:05', NULL),
(41, 5, 13, 'Iyaa gpp nak', '2021-03-17 16:07:21', NULL),
(42, 13, 5, 'iyaa nak. gapapa, hati-hati di jalan', '2021-03-17 16:08:59', NULL),
(43, 13, 5, 'titip nasi bungkus ya', '2021-03-17 16:09:27', NULL),
(44, 5, 13, 'Iyaa aman', '2021-03-17 16:10:36', NULL),
(45, 13, 5, 'makasi nak', '2021-03-17 16:11:04', NULL),
(46, 5, 13, 'Selo', '2021-03-17 16:11:10', NULL),
(47, 5, 7, 'Pubg pal? ', '2021-03-17 16:19:37', NULL),
(48, 5, 8, 'Gmana si? Niat ga? ', '2021-03-17 16:51:23', NULL),
(49, 5, 8, 'Gmana si? Niat ga? ', '2021-03-17 16:51:28', NULL),
(50, 5, 8, 'Bye~', '2021-03-17 16:53:42', NULL),
(51, 5, 8, 'Hai', '2021-03-17 16:55:02', NULL),
(52, 5, 8, 'Hai', '2021-03-17 16:55:02', NULL),
(53, 5, 8, 'P', '2021-03-17 16:55:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `DOB` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `password`, `DOB`, `status`, `photo`, `createdAt`, `updateAt`) VALUES
(5, 'rabudiman', 'rabudiman@gmail.com', NULL, '$2b$10$PtibU00Lh3iGS0xiil0//uzYiIPAhAMB0KrsozAOkTDqeyUBNhARC', NULL, NULL, 'uploads/1615992176302-rn_image_picker_lib_temp_78b29077-5b77-43b1-9d8c-8f46f9f69208.jpg', '2021-03-15 19:04:44', '2021-03-17 14:42:56'),
(6, 'pengenganteng', 'pengenganteng@gmail.com', NULL, '$2b$10$f4fJ6zEOil0KDA5G46xgQu1lGgt.4BvsjyZ34Nyw9.rFDsqJmDchy', NULL, NULL, NULL, '2021-03-16 15:33:34', NULL),
(7, 'gopal', 'gopal@gmail.com', NULL, '$2b$10$GS0xrj9X9yy1yEm35Np/ZOmHXnxsJAZLrbrPSRZN33jGGm8LYoYIW', NULL, NULL, NULL, '2021-03-16 15:33:50', NULL),
(8, 'bila', 'auliaassabila@gmail.com', NULL, '$2b$10$4.emXBJk1jQbmFIQNle28uxKy/ia/fQOK7jTaZWysP8OTbxQBTbOi', NULL, NULL, NULL, '2021-03-16 15:34:19', NULL),
(9, 'icha', 'ichaichaparadise@gmail.com', NULL, '$2b$10$t6xVw7J8Gc3XpNCDCC6f6.jVaficG2yCQT6s/ykaJm7EyyxgkLBuq', NULL, NULL, NULL, '2021-03-16 15:34:39', NULL),
(10, 'jihyo', 'jihyo@gmail.com', NULL, '$2b$10$s03WKUvb3.vqWCEv4/qmJurITvar4zOFncK7H/CIjstBqNM65Yv1q', NULL, NULL, NULL, '2021-03-16 15:35:02', NULL),
(11, 'eunji', 'eunjipyoapple@gmail.com', NULL, '$2b$10$/vdfSeHtPDQ9Tzt3LlXdgO9KpO/ePp1U5/zqo22eLJX8U3AJT0uFK', NULL, NULL, NULL, '2021-03-16 15:35:21', NULL),
(13, 'Mamak', 'salmahpasandrang@gmail.com', NULL, '$2b$10$Dusi1AWh25SSTGvD6BS4YOQIPEqMGN5XqkQo9OPMPPeHhSCOkl3Nq', NULL, NULL, NULL, '2021-03-17 10:06:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_relation`
--

CREATE TABLE `users_relation` (
  `id` int(11) NOT NULL,
  `idUser1` int(11) NOT NULL,
  `idUser2` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_relation`
--

INSERT INTO `users_relation` (`id`, `idUser1`, `idUser2`, `createdAt`, `updatedAt`) VALUES
(11, 5, 7, '2021-03-17 09:38:41', NULL),
(12, 7, 5, '2021-03-17 09:38:41', NULL),
(13, 5, 8, '2021-03-17 09:38:45', NULL),
(14, 8, 5, '2021-03-17 09:38:45', NULL),
(15, 5, 9, '2021-03-17 09:38:50', NULL),
(16, 9, 5, '2021-03-17 09:38:50', NULL),
(17, 13, 5, '2021-03-17 10:13:49', NULL),
(18, 5, 13, '2021-03-17 10:13:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_history`
--
ALTER TABLE `chat_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_relation`
--
ALTER TABLE `users_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser1` (`idUser1`),
  ADD KEY `idUser2` (`idUser2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_history`
--
ALTER TABLE `chat_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_relation`
--
ALTER TABLE `users_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_history`
--
ALTER TABLE `chat_history`
  ADD CONSTRAINT `chat_history_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_history_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_relation`
--
ALTER TABLE `users_relation`
  ADD CONSTRAINT `users_relation_ibfk_1` FOREIGN KEY (`idUser1`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_relation_ibfk_2` FOREIGN KEY (`idUser2`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
