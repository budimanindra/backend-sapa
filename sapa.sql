-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Apr 2021 pada 18.13
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

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
-- Struktur dari tabel `chat_history`
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
-- Dumping data untuk tabel `chat_history`
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
(35, 5, 8, 'ngga marah kokk', '2021-03-17 15:43:32', NULL),
(36, 5, 8, 'yauda nanti kakak tunggu telfonnya ya', '2021-03-17 15:45:58', NULL),
(54, 8, 5, 'Syap :p', '2021-03-17 21:22:10', NULL),
(55, 8, 5, 'Syap :p', '2021-03-17 21:22:16', NULL),
(56, 8, 5, 'Eh', '2021-03-17 21:22:24', NULL),
(57, 8, 5, 'Kak indra? ', '2021-03-17 21:22:53', NULL),
(58, 6, 5, 'Ndra', '2021-03-17 21:24:14', NULL),
(59, 5, 16, 'Assalamualaikum pak', '2021-03-17 21:29:33', NULL),
(60, 16, 5, 'waalaikumussalam, kenapa ?', '2021-03-17 21:30:10', NULL),
(61, 5, 16, 'Ga ada pak, kangen aja', '2021-03-17 21:30:39', NULL),
(62, 5, 16, 'Tumben ga ronda pak', '2021-03-17 21:30:54', NULL),
(63, 5, 16, 'Lg sakit ya? ', '2021-03-17 21:31:04', NULL),
(64, 16, 5, 'iya nih, sudah 2 hari bapak ga enak badan ', '2021-03-17 21:31:32', NULL),
(65, 16, 5, 'pak RT ga ada nyari ndra ?', '2021-03-17 21:32:39', NULL),
(66, 5, 16, 'Kagak pak', '2021-03-17 21:36:04', NULL),
(67, 5, 16, 'Kata pak ilham, besok pada kerja bakti ya pak?? ', '2021-03-17 21:37:26', NULL),
(68, 16, 5, 'ah mana ada ndra', '2021-03-17 21:37:56', NULL),
(69, 16, 5, 'pun juga kalo jadi, bapak skip ye', '2021-03-17 21:38:10', NULL),
(70, 16, 5, 'bilang aja masih demam', '2021-03-17 21:38:20', NULL),
(71, 5, 16, 'Yaelah si bapak dah', '2021-03-17 21:39:23', NULL),
(72, 5, 16, 'Bolos mulu dah', '2021-03-17 21:39:32', NULL),
(73, 16, 5, 'ini seriusan sakit kali', '2021-03-17 21:40:11', NULL),
(74, 16, 5, 'ijinin ye besok, pls', '2021-03-17 21:40:25', NULL),
(75, 5, 8, 'ya ?', '2021-03-18 04:09:22', NULL),
(76, 5, 16, 'pak', '2021-03-18 04:17:08', NULL),
(77, 5, 16, 'pak', '2021-03-18 04:17:13', NULL),
(78, 5, 16, 'p', '2021-03-18 04:17:18', NULL),
(79, 5, 16, 'p', '2021-03-18 04:17:20', NULL),
(80, 16, 5, 'iye, napa ?', '2021-03-18 04:18:18', NULL),
(81, 5, 16, 'kemana aja pak ?', '2021-03-18 04:18:51', NULL),
(82, 16, 5, 'keluyuran ndra sama pak irwan', '2021-03-18 04:19:29', NULL),
(83, 5, 16, 'papan karambol di pos ronda kemana yak ?', '2021-03-18 04:20:08', NULL),
(84, 5, 7, 'pal', '2021-03-18 05:07:01', NULL),
(85, 8, 5, 'ga ada kak, cuma nyapa aja', '2021-03-18 07:55:10', NULL),
(86, 8, 5, 'lagi apa kak ?', '2021-03-18 07:55:57', NULL),
(87, 8, 5, 'hello', '2021-03-18 07:56:38', NULL),
(88, 8, 5, 'kak ?', '2021-03-18 07:56:59', NULL),
(89, 5, 8, 'yaa ?', '2021-03-18 07:58:08', NULL),
(90, 5, 8, 'sori baru cek hp', '2021-03-18 07:58:22', NULL),
(91, 5, 8, 'lagi presentasi nih, ntr aja ya sy tlfn', '2021-03-18 07:58:44', NULL),
(115, 5, 5, 'sabar', '2021-03-18 09:37:44', NULL),
(116, 5, 5, 'sabar', '2021-03-18 09:37:53', NULL),
(119, 5, 11, 'Tes', '2021-04-05 11:48:20', NULL),
(120, 5, 11, 'Testes', '2021-04-05 11:48:21', NULL),
(121, 5, 8, '', '2021-04-07 08:07:23', NULL),
(122, 8, 5, 'kenapa kak ??', '2021-04-07 08:09:16', NULL),
(123, 8, 5, 'hmm ngilang lagi....', '2021-04-07 08:09:34', NULL),
(124, 5, 8, 'Ngodang ngoding bil', '2021-04-07 08:48:27', NULL),
(125, 5, 8, 'Sori lama bales, kk lagi sibuk', '2021-04-07 08:48:38', NULL),
(126, 5, 8, 'Sori lama bales, kk lagi sibuk', '2021-04-07 08:48:39', NULL),
(127, 5, 8, 'Hmm sekarang giliran km yg ngilang... ', '2021-04-07 12:58:11', NULL),
(128, 5, 19, 'Bre? ', '2021-04-07 13:19:24', NULL),
(129, 5, 11, 'Tes', '2021-04-08 17:08:23', NULL),
(130, 5, 11, 'Tes', '2021-04-08 17:08:24', NULL),
(131, 5, 11, 'Tes', '2021-04-08 17:08:25', NULL),
(132, 5, 11, 'Tes', '2021-04-08 17:08:25', NULL),
(133, 5, 11, 'Tes', '2021-04-08 17:08:26', NULL),
(134, 5, 11, 'Tes', '2021-04-08 17:08:28', NULL),
(135, 5, 17, 'Tes', '2021-04-08 17:08:32', NULL),
(136, 5, 6, 'Pal', '2021-04-08 17:08:54', NULL),
(137, 5, 6, 'Pal', '2021-04-08 17:08:55', NULL),
(138, 5, 6, 'Pal', '2021-04-08 17:08:56', NULL),
(139, 5, 6, 'Pal', '2021-04-08 17:08:56', NULL),
(140, 5, 20, 'Kes', '2021-04-08 17:09:27', NULL),
(141, 5, 20, 'Kes', '2021-04-08 17:09:30', NULL),
(142, 5, 20, 'Kes', '2021-04-08 17:11:04', NULL),
(143, 5, 19, 'Ngapain aja bre', '2021-04-09 10:11:27', NULL),
(144, 19, 5, 'biasa em el, kenapa bre ?', '2021-04-09 10:15:29', NULL),
(145, 5, 19, 'Kenalin cewe dong bre', '2021-04-09 10:15:50', NULL),
(146, 5, 16, '', '2021-04-09 10:22:22', NULL),
(147, 28, 5, 'Om', '2021-04-09 10:37:47', NULL),
(148, 28, 5, 'Iphone 12 dong om :)) ', '2021-04-09 10:41:37', NULL),
(149, 5, 9, 'Hallo icha', '2021-04-15 06:26:28', NULL),
(150, 9, 5, 'kenapa dul ?', '2021-04-15 06:27:17', NULL),
(151, 9, 5, 'yo ?', '2021-04-15 06:27:33', NULL),
(152, 5, 9, 'Notifikasi nya belum bang', '2021-04-15 06:27:42', NULL),
(153, 9, 5, 'iye sabar belom nerapin nih', '2021-04-15 06:27:48', NULL),
(154, 8, 5, 'hi kak ^_^', '2021-04-16 18:37:28', NULL),
(155, 5, 8, 'Hai bil', '2021-04-16 18:37:52', NULL),
(156, 5, 8, 'Lagi apa? ', '2021-04-16 18:37:57', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `password`, `DOB`, `status`, `photo`, `createdAt`, `updateAt`) VALUES
(5, 'Rabudiman', 'rabudiman@gmail.com', 'null', '$2b$10$z8siFkV2tkYh5eOh80Ts..6QUgnuiMCZzMNdbbpCFlpOO7o33YdDq', '0000-00-00', 'null', 'uploads/1617964526984-rn_image_picker_lib_temp_457337f1-e377-4509-8351-12e54f7ed095.jpg', '0000-00-00 00:00:00', '2021-04-09 10:35:27'),
(6, 'pengenganteng', 'pengenganteng@gmail.com', NULL, '$2b$10$f4fJ6zEOil0KDA5G46xgQu1lGgt.4BvsjyZ34Nyw9.rFDsqJmDchy', NULL, NULL, NULL, '2021-03-16 15:33:34', NULL),
(7, 'gopal', 'gopal@gmail.com', NULL, '$2b$10$GS0xrj9X9yy1yEm35Np/ZOmHXnxsJAZLrbrPSRZN33jGGm8LYoYIW', NULL, NULL, 'uploads/1616040912425-rn_image_picker_lib_temp_9bc992a8-53f7-4c1a-9786-e391c2459bdd.jpg', '2021-03-16 15:33:50', '2021-03-18 04:15:12'),
(8, 'bila', 'auliaassabila@gmail.com', NULL, '$2b$10$4.emXBJk1jQbmFIQNle28uxKy/ia/fQOK7jTaZWysP8OTbxQBTbOi', NULL, NULL, 'uploads/1616040961223-rn_image_picker_lib_temp_362b59da-7a93-4bc0-9265-4e8a05a547f2.jpg', '2021-03-16 15:34:19', '2021-03-18 04:16:01'),
(9, 'icha', 'ichaichaparadise@gmail.com', NULL, '$2b$10$t6xVw7J8Gc3XpNCDCC6f6.jVaficG2yCQT6s/ykaJm7EyyxgkLBuq', NULL, NULL, NULL, '2021-03-16 15:34:39', NULL),
(10, 'jihyo', 'jihyo@gmail.com', NULL, '$2b$10$s03WKUvb3.vqWCEv4/qmJurITvar4zOFncK7H/CIjstBqNM65Yv1q', NULL, NULL, NULL, '2021-03-16 15:35:02', NULL),
(11, 'eunji', 'eunjipyoapple@gmail.com', NULL, '$2b$10$/vdfSeHtPDQ9Tzt3LlXdgO9KpO/ePp1U5/zqo22eLJX8U3AJT0uFK', NULL, NULL, NULL, '2021-03-16 15:35:21', NULL),
(16, 'pak sanusi', 'sanusi@gmail.com', NULL, '$2b$10$etXvrEjdXL4y77ScyYQd9e2UEDv1.Le9wSI0meMLjEmuo275I1.XW', NULL, NULL, 'uploads/1616042061601-sanusi.jpg', '2021-03-17 21:27:03', '2021-03-18 04:35:22'),
(17, 'pak ponco', 'ponco@gmail.com', NULL, '$2b$10$1Xjp60fepHmVSZW.wE0JFeTDy1Ds3/DmYEjzO1AMWBrlraGdqYPri', NULL, NULL, 'uploads/1616054966902-rn_image_picker_lib_temp_eb9d3dee-d867-4ba1-9f5a-72e995f1c7a2.jpg', '2021-03-18 06:02:01', '2021-03-18 08:09:26'),
(18, 'irwan aja', 'irwan@gmail.com', NULL, '$2b$10$Y..6NxSHS5gk4pQ7MktcOuY294CaI0METAhKo2IlhlvxEh.vldMei', NULL, NULL, NULL, '2021-03-18 08:31:49', NULL),
(19, 'seva', 'seva@gmail.com', NULL, '$2b$10$BoObOObrMkZGvGupnxSerOaJNdkmNFjVRZB2BQcuB3ZfFeX4vhNyC', NULL, NULL, NULL, '2021-03-18 08:35:36', NULL),
(20, 'ilham', 'ilham@gmail.com', NULL, '$2b$10$sckjNthcEN9tNbJeXBNEVeVRLZOowp6dLp3SyweUeF/asvpdO6XhW', NULL, NULL, NULL, '2021-03-18 08:41:22', NULL),
(26, 'V', 'Tesvskyrim@gmail.com', NULL, '$2b$10$JMqGa.W9V4K6a2S/HhUD.O8d8cGivZQwz7AwS5r9HpgN2/pHV6kcW', NULL, NULL, NULL, '2021-04-08 16:16:03', NULL),
(27, 'W', 'Teswskyrim@gmail.com', NULL, '$2b$10$lQm6DQLzXiGyShghE/kRL.YEwqIVuUdIJtaeDxsVBSCZO4bIy5xZO', NULL, NULL, NULL, '2021-04-08 16:18:05', NULL),
(28, 'Lola', 'Lalonte@gmail.com', NULL, '$2b$10$CMf2le9Wm2zTmyN2BBt2G.umUzcH26EYRAQMomOqm0tGzVYqr/FtK', NULL, NULL, 'uploads/1617964807028-rn_image_picker_lib_temp_f3187c09-2a9b-49d1-966c-bb1770c99561.jpg', '2021-04-09 10:36:16', '2021-04-09 10:40:28'),
(30, 'Samsul', 'Kumbang@gmail.com', NULL, '$2b$10$0Sbsk1W5yHBZr/twMxbPW.amd/MCVT/gE8Z3y/oNUEzS5XBbGfsOm', NULL, NULL, NULL, '2021-04-09 10:50:58', '2021-04-09 11:28:38'),
(31, 'Gigih', 'Gigih@gmail.com', NULL, '$2b$10$rcTugVGJT4InpsIuKdcXee2aPhUvY5VzJSYNFcisT7AKgK9kQSDp.', NULL, NULL, 'uploads/1617971976675-rn_image_picker_lib_temp_2b7fb830-ed91-4ff7-a10a-349addc39450.png', '2021-04-09 11:29:29', '2021-04-09 12:39:36'),
(34, 'Salmah123', 'salmahpasandrang@gmail.com', NULL, '$2b$10$easmjOQrKDsyEJamT6J0ZOOif9k.iJQgPC2P9een4t3bUQSYl5mvG', NULL, NULL, NULL, '2021-04-15 07:26:20', NULL),
(35, 'Erlangga', 'Erlangga@hotmail.com', NULL, '$2b$10$MiDQhRXedQMrZ7NNYzF6AuIz3No5g80crgHgYGdnZuOGJ31auVOCW', NULL, NULL, NULL, '2021-04-15 07:31:35', NULL),
(36, 'Yzhhsheb', 'Trele@hotmail.com', NULL, '$2b$10$RstcWUs6wMuanmsgT.FMlecoKwGTg/rhvhxaRlpMawodWGhpkf3lK', NULL, NULL, NULL, '2021-04-15 07:33:28', NULL),
(37, 'Gyugyuhjbfgy56677', 'Ghuuu@msn.com', NULL, '$2b$10$zR3YbhaVD6crz6arPWX3qehrts/AlpX4g1/5viCa48OyjUI8LyPO2', NULL, NULL, NULL, '2021-04-15 07:35:00', NULL),
(38, 'Yyggghhv', 'Hshebeb@msn.com', NULL, '$2b$10$OzlXB1useiuQtjzcFC1zkuL4KK6zHyYj5aQeUsmczQKZKYO7VmED2', NULL, NULL, NULL, '2021-04-15 07:37:25', NULL),
(39, 'Ghhhhbbb', 'Ggggfff@hotmail.com', NULL, '$2b$10$RktyQjtXlGs/ILSpCt5AjupKQU.iod.5chzCBu8z2hBr0aWU2H9G6', NULL, NULL, NULL, '2021-04-15 07:41:07', NULL),
(41, 'Tytytyty', 'Bbbvcn@msn.com', NULL, '$2b$10$4xTYcRsF/ikvT1zhSN3I..PR4cbGmgaknQfPqmQt8BDSDIPWzXJ0m', NULL, NULL, NULL, '2021-04-15 07:47:29', NULL),
(42, 'perawatcantik', 'perawat@gmail.com', NULL, '$2b$10$XqKpWkgv6h8e.sivx0RwFeA8c8Eev/BLzry//TT.iFOBW7fUN1KCm', NULL, NULL, NULL, '2021-04-15 08:12:26', NULL),
(43, 'bukanperawatcantik', 'bukanperawat@gmail.com', NULL, '$2b$10$wI7Jkub2kPVxTMINBDh9BufgwHJeaC9C4CSsoVVmYJlb2rcVOT8Fi', NULL, NULL, NULL, '2021-04-15 08:13:23', NULL),
(44, 'pilotkeren', 'pilotkeren@gmail.com', NULL, '$2b$10$SGpO.y.7CpMbdQd4DTAVNOTbHwCvxWEx4YDtPbv4VokGh7sHojF9K', NULL, NULL, NULL, '2021-04-15 08:14:01', NULL),
(45, 'pilotkeren1', 'pilotkeren1@gmail.com', NULL, '$2b$10$bByod2d.BRd..PusPIvWdOZ3EiNN4FYyVZ7BYs0rmiEEox/BAEBr6', NULL, NULL, NULL, '2021-04-15 08:14:47', NULL),
(46, 'pilotkereen', 'pilotkeren2@gmail.com', NULL, '$2b$10$/eJ8J2mWKCWk3Ty9JUIggehryeLUFerYl73olX22dHT6UP1nnTUn2', NULL, NULL, NULL, '2021-04-16 17:47:41', NULL),
(47, 'pilotkereeen', 'pilotkeren3@gmail.com', NULL, '$2b$10$aiFwy8Lvu8ZW3dtWAtmOhubAW.Yuu1aEVfUsskzh2f1NBvlUENHAq', NULL, NULL, NULL, '2021-04-16 17:50:48', NULL),
(48, 'pilotkereeen1', 'pilotkeren4@gmail.com', NULL, '$2b$10$AGMF2.cZSAl/q2ybUE8s7OdyWC/d3X7G3g/T9mbdY76uQfkCXRGHW', NULL, NULL, NULL, '2021-04-16 17:51:06', NULL),
(49, 'pilotkereeen5', 'pilotkeren5@gmail.com', NULL, '$2b$10$KWPZAc67gWvTBwLa2KZM9uS58REA/ImB0Vye8Xwg6DKqDGWTW0Twe', NULL, NULL, NULL, '2021-04-16 17:53:25', NULL),
(50, 'pilotkereeen6', 'pilotkeren6@gmail.com', NULL, '$2b$10$rRi86dvOUKBl96pjSuEB5eUs.X9WBXlja3Fl5Cth/Z4b4hRN0fvRy', NULL, NULL, NULL, '2021-04-16 18:00:16', NULL),
(51, 'Fgyhvft55', 'Yuojbgg@hotmail.', NULL, '$2b$10$nwqLqw8L2Ostfvyq.ZDJiORX/FLxfxG1430p/OOE4LkZALfzY8H3.', NULL, NULL, NULL, '2021-04-16 18:08:52', NULL),
(52, 'pilotkereeen7', 'pilotkeren7@gmail.', NULL, '$2b$10$Be61zbSGCkqB5xf/Mhz7iO.7CAg9HugfUpacrDkix34uW.DXdyIxu', NULL, NULL, NULL, '2021-04-16 18:09:31', NULL),
(53, 'pilotkereeen8', 'pilotkeren8@gmail.co', NULL, '$2b$10$olxp/U4Ip0lEu/yrI0UAYOY2jSmj6dCarja9GEYMaBdWHnfsSzYea', NULL, NULL, NULL, '2021-04-16 18:12:39', NULL),
(54, 'Iyamiyam123', 'Ilhambayu@hotmail.com', NULL, '$2b$10$hn4KU/izvEioVgmmJLwnqe.GPPJUvyDJ072gXA.UZ0yehINmBaFbK', NULL, NULL, NULL, '2021-04-16 18:16:07', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_relation`
--

CREATE TABLE `users_relation` (
  `id` int(11) NOT NULL,
  `idUser1` int(11) NOT NULL,
  `idUser2` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_relation`
--

INSERT INTO `users_relation` (`id`, `idUser1`, `idUser2`, `createdAt`, `updatedAt`) VALUES
(11, 5, 7, '2021-03-17 09:38:41', NULL),
(12, 7, 5, '2021-03-17 09:38:41', NULL),
(13, 5, 8, '2021-03-17 09:38:45', NULL),
(14, 8, 5, '2021-03-17 09:38:45', NULL),
(32, 5, 6, '2021-03-17 21:15:39', NULL),
(33, 6, 5, '2021-03-17 21:15:39', NULL),
(34, 5, 16, '2021-03-17 21:27:37', NULL),
(35, 16, 5, '2021-03-17 21:27:37', NULL),
(36, 5, 11, '2021-03-18 04:26:41', NULL),
(37, 11, 5, '2021-03-18 04:26:41', NULL),
(40, 5, 17, '2021-03-18 07:59:38', NULL),
(41, 17, 5, '2021-03-18 07:59:39', NULL),
(48, 5, 20, '2021-04-07 08:33:18', NULL),
(49, 20, 5, '2021-04-07 08:33:18', NULL),
(66, 5, 9, '2021-04-07 11:20:16', NULL),
(67, 9, 5, '2021-04-07 11:20:16', NULL),
(68, 5, 19, '2021-04-07 11:21:01', NULL),
(69, 19, 5, '2021-04-07 11:21:01', NULL),
(70, 5, 27, '2021-04-09 10:19:21', NULL),
(71, 27, 5, '2021-04-09 10:19:21', NULL),
(72, 5, 26, '2021-04-09 10:26:37', NULL),
(73, 26, 5, '2021-04-09 10:26:37', NULL),
(74, 28, 5, '2021-04-09 10:37:39', NULL),
(75, 5, 28, '2021-04-09 10:37:39', NULL),
(76, 31, 19, '2021-04-09 13:07:50', NULL),
(77, 19, 31, '2021-04-09 13:07:50', NULL),
(78, 31, 5, '2021-04-09 13:47:53', NULL),
(79, 5, 31, '2021-04-09 13:47:53', NULL),
(80, 31, 26, '2021-04-09 13:48:29', NULL),
(81, 26, 31, '2021-04-09 13:48:30', NULL),
(82, 5, 18, '2021-04-15 06:28:30', NULL),
(83, 18, 5, '2021-04-15 06:28:30', NULL),
(84, 54, 5, '2021-04-16 18:22:40', NULL),
(85, 5, 54, '2021-04-16 18:22:40', NULL),
(86, 54, 8, '2021-04-16 18:23:37', NULL),
(87, 8, 54, '2021-04-16 18:23:37', NULL),
(88, 54, 9, '2021-04-16 18:25:20', NULL),
(89, 9, 54, '2021-04-16 18:25:20', NULL),
(90, 54, 11, '2021-04-16 18:32:22', NULL),
(91, 11, 54, '2021-04-16 18:32:22', NULL),
(92, 54, 19, '2021-04-16 18:33:44', NULL),
(93, 19, 54, '2021-04-16 18:33:44', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `chat_history`
--
ALTER TABLE `chat_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users_relation`
--
ALTER TABLE `users_relation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser1` (`idUser1`),
  ADD KEY `idUser2` (`idUser2`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `chat_history`
--
ALTER TABLE `chat_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `users_relation`
--
ALTER TABLE `users_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `chat_history`
--
ALTER TABLE `chat_history`
  ADD CONSTRAINT `chat_history_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_history_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users_relation`
--
ALTER TABLE `users_relation`
  ADD CONSTRAINT `users_relation_ibfk_1` FOREIGN KEY (`idUser1`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_relation_ibfk_2` FOREIGN KEY (`idUser2`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
