-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2024 at 01:49 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cafetaria`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `id_admin` int NOT NULL,
  `login_no` varchar(10) NOT NULL,
  `naran_login` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `level` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_admin`
--

INSERT INTO `t_admin` (`id_admin`, `login_no`, `naran_login`, `level`, `username`, `password`) VALUES
(1, '', 'SuperAdmin', '1', 'SuperAdmin', 'admin123'),
(2, 'MDL1', 'Martino Goreti', '2', 'MDL1', 'user123');

-- --------------------------------------------------------

--
-- Table structure for table `t_aldeia`
--

CREATE TABLE `t_aldeia` (
  `id_aldeia` int NOT NULL,
  `aldeia` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_aldeia`
--

INSERT INTO `t_aldeia` (`id_aldeia`, `aldeia`) VALUES
(1, 'Beto-Leste'),
(2, 'Bairo Formosa'),
(3, 'Rai-Mea'),
(5, 'Remac'),
(7, 'kapela'),
(9, 'Vilgorola'),
(10, 'Efaka'),
(11, 'Boa Morena'),
(20, 'Zero tres'),
(21, 'BayLeste'),
(25, 'Mota Klaran'),
(26, 'Zero Cinco'),
(29, '01'),
(30, 'Rai Nain'),
(32, 'Fomento II'),
(35, 'BayLeste'),
(36, 'Direitos Humanos'),
(38, 'Vilgorola'),
(43, '02'),
(44, 'Postu Penal'),
(45, 'Guideon'),
(47, '04 de Setembro'),
(48, 'Mandarin'),
(49, 'Halibur'),
(55, 'Manu Fuik'),
(56, 'Farol'),
(57, 'Kampung-Baru'),
(59, 'Terra Santa'),
(60, 'Malenamu'),
(61, '12 de Setembro'),
(62, 'Grincefor'),
(63, 'Carunggu Laran'),
(64, 'Bee-Karil'),
(65, 'Area Branca'),
(66, 'Mate Restu'),
(67, 'Zero quatro');

-- --------------------------------------------------------

--
-- Table structure for table `t_bebidas`
--

CREATE TABLE `t_bebidas` (
  `id_bebidas` int NOT NULL,
  `bebidas` varchar(50) NOT NULL,
  `id_cafetaria` int NOT NULL,
  `presu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_bebidas`
--

INSERT INTO `t_bebidas` (`id_bebidas`, `bebidas`, `id_cafetaria`, `presu`) VALUES
(11, 'Long Black Coffe', 3, '1.00'),
(12, 'Long Black Coffe Ice', 3, '1.50'),
(13, 'Sigle Espresso Coffee', 3, '1.00'),
(14, 'Avocado Espresso coffee', 3, '3.00'),
(15, 'Strong Espresso coffee', 3, '1.00'),
(16, 'Double espresso coffee', 3, '1.50'),
(17, 'Latte coffee', 3, '1.50'),
(18, 'Latte coffee Ice', 3, '2.00'),
(19, 'Latte coffee Ice Crim/Ice', 3, '2.50/3.00'),
(20, 'Latte Vanilla coffee/Ice', 3, '2.50/3.00'),
(21, 'Latte Cinnamon coffee/Ice', 3, '2.00/2.50'),
(22, 'Cappuccino coffee Ice', 3, '2.50'),
(23, 'Espreso single ', 5, '1.00'),
(24, 'Caffe Metan ', 5, '1.50'),
(25, 'cafe Latte(susu ben)', 5, '2.00'),
(26, 'Cappuccino ( caffe susuben)', 5, '2.00'),
(27, 'caffe mocha (chocolate', 5, '2.00'),
(28, 'Hot chocolate', 5, '2.00'),
(29, 'Ice Latte (Malirin)', 5, '2.50'),
(30, 'Ice cappocino (Malirin)', 5, '2.50'),
(31, 'Ice Mocha(Malirin)', 5, '2.50'),
(32, 'Ice  Chocolate (Malirin)', 5, '2.50'),
(33, 'Orange Juice', 5, '1.50'),
(34, 'Banana Juice', 5, '1.50'),
(35, 'Ice lemon tea', 6, '1.50'),
(36, 'Ice Lemonade', 6, '1.50'),
(37, 'ice coffee latte cheeso', 6, '2.00'),
(38, 'ice cappucino float', 6, '2.00'),
(39, 'Bubble Gum', 6, '2.00'),
(40, 'Tiramisu', 6, '2.00'),
(41, 'Black charcoal', 6, '2.00'),
(42, 'vanilla', 6, '2.00'),
(43, 'Milik tea (Black tea)', 6, '2.00'),
(44, 'mocca', 6, '2.00'),
(45, 'Iced latte', 7, '3.00'),
(46, 'Ice cappocino', 7, '3.00'),
(47, 'Iced Mocha', 7, '3.00'),
(48, 'Iced long black', 7, '2.00'),
(49, 'Iced vanilla latte', 7, '3.50'),
(50, 'Ice carmel', 7, '3.50'),
(51, 'Spanisn latte', 7, '3.00'),
(52, 'Strawberei latte', 7, '2.50'),
(53, 'Ice chocolate', 7, '3.00'),
(54, 'Ice Tea', 7, '1.50'),
(55, 'Affogato', 7, '2.50'),
(56, 'Espresso', 7, '1.00'),
(57, 'Espresso panna', 7, '1.50'),
(58, 'Doppio', 7, '2.00'),
(59, 'Mocchiata', 7, '1.25'),
(60, 'kafe timor', 7, '1.00'),
(61, 'Long Black ', 7, '1.50'),
(62, 'Piccolo latte', 7, '2.25'),
(63, 'caffe latte', 7, '2.50'),
(64, 'caffe mocha', 7, '2.75'),
(65, 'Espresso', 17, '1.00'),
(66, 'Americano', 17, '1.50'),
(67, 'Latte', 17, '2.50'),
(68, 'Cappuccino ', 17, '2.50'),
(69, 'Macchiato', 17, '2.50'),
(70, 'Honey Ginjer Tea', 17, '2.00'),
(71, 'Black Tea', 17, '1.00'),
(72, 'Ice lemon tea', 17, '1.50'),
(73, 'Be gota', 17, '0.25'),
(74, 'Sigle Espresso Coffee', 18, '1.00'),
(75, 'Double espresso coffee', 18, '1.50'),
(76, 'Macchiato', 18, '1.50'),
(77, 'Flat while', 18, '250/3.00'),
(78, 'cafe latte', 18, '2.50/3.00'),
(79, 'Long Black Coffe', 18, '2.50/3.00'),
(80, 'cafe mocha', 18, '2.50/3.00'),
(81, 'Cappuccino ', 18, '2.50/3.00'),
(82, 'Pour over', 18, '3.00/3.50'),
(83, 'Aero press', 18, '3.00/3.50'),
(84, 'French press', 18, '3.00/3.50'),
(85, 'Beco', 18, '2.50/3.00'),
(86, 'Ice cafe latte', 18, '3.00/3.50'),
(87, 'Ice cappucino', 18, '3.00/3.50'),
(88, 'Ice mocha', 18, '3.00/3.50'),
(89, 'Iced manual brew', 18, '3.50/4.00'),
(90, 'Flat white/latte/cappucino', 19, '3.5/4'),
(91, 'Espresso', 19, '1.50/2'),
(92, 'Long Black ', 19, '2.50'),
(93, 'mocca', 19, '3.5/4'),
(94, 'Hot chocolate', 19, '3.5/4'),
(95, 'Mocchiato', 19, '2.50'),
(96, 'Affogato', 19, '3.00'),
(97, 'Tea', 19, '2.00'),
(98, 'Iced tea', 19, '3.00'),
(99, 'Iced latte', 19, '4.00'),
(100, 'Iced long black', 19, '3.50'),
(101, 'Iced chocolate', 19, '4.00'),
(102, 'Milkshake', 19, '4.00'),
(103, 'sada water/tonic water', 19, '2.50'),
(104, 'Espresso', 20, '1.00'),
(105, 'Caffe mocha', 20, '1.50'),
(106, 'caffe latte', 20, '1.50'),
(107, 'caffe americano', 20, '1.50'),
(108, 'Cappuccino ', 20, '1.00'),
(109, 'coffee brew(americano style)', 22, '3.00'),
(110, 'coffee brew(americano style)R', 22, '2.00'),
(111, 'Coffee cappuccino', 22, '2.50'),
(112, 'coffee expresso', 22, '2.00'),
(113, 'coffee latte', 22, '2.50'),
(114, 'Ice coffee', 22, '2.50'),
(115, 'Caffe expresso', 23, '1.00'),
(116, 'caffe mocha', 23, '1.00'),
(117, 'Cappuccino ', 23, '1.50'),
(118, 'Jus Avocado', 23, '1.00'),
(119, 'Boba ', 23, '1.00'),
(120, 'Es Buah', 23, '0.50'),
(121, 'Extra Jos susu', 23, '0.75'),
(122, 'Ice cream ', 23, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `t_cafetaria`
--

CREATE TABLE `t_cafetaria` (
  `id_cafetaria` int NOT NULL,
  `enderesu` varchar(50) NOT NULL,
  `naran_cafetaria` varchar(100) NOT NULL,
  `no_tlfone` varchar(20) NOT NULL,
  `oras_loke` time NOT NULL,
  `oras_taka` time NOT NULL,
  `id_aldeia` int NOT NULL,
  `id_suco` int NOT NULL,
  `id_posto` int NOT NULL,
  `id_municipio` int NOT NULL,
  `latitude` varchar(20) NOT NULL,
  `longitude` varchar(20) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_cafetaria`
--

INSERT INTO `t_cafetaria` (`id_cafetaria`, `enderesu`, `naran_cafetaria`, `no_tlfone`, `oras_loke`, `oras_taka`, `id_aldeia`, `id_suco`, `id_posto`, `id_municipio`, `latitude`, `longitude`, `imagen`, `is_active`) VALUES
(3, 'Rai Mea', 'The Corner Store Network.TL', '752800434', '09:23:00', '19:24:00', 3, 57, 2, 1, '-8.498902', '125.816533', '1730161550_89e6d45868965987e6e9.jpg', 0),
(5, 'Metinaro', 'Mestri Luis Coffe Shop', '78276848', '09:30:00', '09:30:00', 57, 4, 2, 1, '-8.530998', '125.751848', '1730729839_b2e5f0a7b784393f2550.jpg', 0),
(6, 'Becora', 'Kamsia Boba Coffe', '77707600', '08:00:00', '21:30:00', 5, 5, 2, 1, '-8.563366', '125.607828', '1730730218_11d5da8012291293377c.jpg', 0),
(7, 'Bidau ', 'Kafe Expavo', '74889837', '08:30:00', '22:30:00', 7, 40, 2, 1, '-8.552607', '125.582761', '1730730499_0330ba50c9f010b37d7d.jpg', 0),
(17, 'Balide', 'Uma Lafatik Market Caffe', '77041998', '08:30:00', '21:30:00', 29, 29, 4, 1, '-8.566288', '125.576875', '1730899418_bef92a9bead79f5a3dd9.jpg', 0),
(18, 'Fomentu II', 'Caffe Atsabe', '76288938', '08:00:00', '22:30:00', 32, 44, 1, 1, '-8.563235', '125.534555', '1730899948_4cd6ed0e91547ba693a7.jpg', 0),
(19, 'Kampun Alor', 'Ha-Ha Caffe Green', '77757244', '08:30:00', '22:00:00', 43, 43, 1, 1, '-8.548245', '125.559467', '1730900734_076783b2c51a58e3abba.jpg', 0),
(20, 'Bidau Santana', 'Kedai VL Caffe', '78152795', '08:30:00', '21:30:00', 25, 25, 3, 1, '-8.548482', '125.590191', '1730901574_a17992b7fca80787c0e9.jpg', 0),
(22, 'Colmera', 'All Alone Colmera', '77117843', '08:30:00', '03:30:00', 30, 31, 3, 1, '-8.555520', '125.571272', '1730902363_cc0a8049be6bab826209.jpg', 0),
(23, 'Hera', 'Moringa Caffe (Moca)', '74026852', '08:30:00', '19:30:00', 25, 58, 2, 1, '-8.551449', '125.661837', '1730976802_a7535181786bc4a87019.jpg', 0),
(24, 'Beto', 'Incantu Coffe', '77030777', '08:00:00', '19:00:00', 1, 59, 1, 1, '-8.549398', '125.525334', '1730977508_7e762a23e6cf78728d7e.jpg', 0),
(25, 'Colmera', 'Pateo Caffe', '74640522', '08:30:00', '22:30:00', 55, 31, 4, 1, '-8.554938', '125.575600', '1730978137_80fd6f1001dd20098db3.jpg', 0),
(26, 'Kampu Baru', 'Rolls N Bowls \'Coffe\'', '75471394', '08:00:00', '22:00:00', 60, 44, 1, 1, '-8.560972', '125.525942', '1730978931_8cacb49167f2c1b84f8d.jpg', 0),
(27, 'Timor Plaza', 'Rolls N Bowls \'Coffe By\'', '75135314', '08:30:00', '22:30:00', 61, 47, 1, 1, '-8.553372', '125.541469', '1730979359_807e13231d9249bd5b41.jpg', 0),
(28, 'Colmera', 'Glory Jean\'s Coffe', '77899022', '08:30:00', '22:45:00', 55, 31, 3, 1, '-8.554503', '125.574931', '1730979644_34cc1fa7fab0475d6725.jpg', 0),
(29, 'Colmera', 'Hotel Timor Coffe', '77721472', '08:30:00', '20:30:00', 55, 31, 3, 1, '-8.554279', '125.573534', '1730980086_57950568980fa5154835.jpg', 0),
(31, 'Bidau ', 'Incantu Coffe & Bar', '77030777', '09:00:00', '22:00:00', 36, 40, 3, 1, '-8.549165', '125.586197', '1730984971_bebcc8789fee7a1b93a9.jpg', 0),
(32, 'Farol', 'Ha-Ha Blue \'Coffe\'', '75989787', '09:30:00', '20:20:00', 56, 51, 3, 1, '-8.551128', '125.567975', '1730985686_969737307c737efbc818.jpg', 0),
(33, 'Beto', 'Katuas Patricio Coffe', '74905179', '09:00:00', '21:00:00', 1, 59, 1, 1, '-8.549544', '125.524779', '1730986256_0bcf3c880cc1045b6d07.jpg', 0),
(34, 'Delta Nova', 'LAU\'KA CAFE', '78058614', '08:30:00', '20:30:00', 61, 59, 1, 1, '-8.554558', '125.540628', '1730986961_6fb38455b5e774703e17.jpg', 0),
(39, 'Motael', 'Coco Dili (coconut Dlinks) Caffee & Bar', '73842370', '08:00:00', '19:30:00', 49, 51, 3, 1, '-8.551339', '125.567976', '1730989741_830372ac49ffbf8e3244.jpg', 0),
(41, 'Manleuana', 'Resto,Coffee,Bar', '77320540', '08:30:00', '22:30:00', 21, 57, 1, 1, '-8.568194', '125.540155', '1730991036_bc252997d9a08d4c958a.jpg', 0),
(43, 'Manleuana', 'STREET FOOD COFE', '74974579', '08:30:00', '20:30:00', 35, 57, 1, 1, '-8.568609', '125.538508', '1730992152_c2a3037a2acb7d07ef58.jpg', 0),
(45, 'Vila-Verde', 'Velvea91 \'Backery & Coffee\'', '75132709', '08:42:00', '21:30:00', 38, 45, 3, 1, '-8.558742', '125.568621', '1730993349_8be8921f76f769eadeaa.jpg', 0),
(46, 'Colmera', 'DECAFFGINATOR COFFEE', '77749818', '08:30:00', '22:00:00', 30, 31, 3, 1, '-8.554898', '125.574216', '1730993607_1ee75d9b0e4122fc5ae3.jpg', 0),
(47, 'Bidau ', 'ADEMEKI BOBA DRINKS COFFEE', '78653042', '08:30:00', '22:00:00', 36, 40, 4, 1, '-8.552242', '125.581320', '1730993831_38a4a50c5cd1bca951ae.jpg', 0),
(48, 'Bario Formoza', 'Peace Coffee', '76285872', '08:30:00', '20:31:00', 62, 31, 3, 1, '-8.556301', '125.579496', '1730994702_12b2b0e7b326c6d9507e.jpg', 0),
(49, 'Bario Formoza', 'Ainaro Coffee', '76414908', '08:30:00', '20:00:00', 62, 31, 3, 1, '-8.556184', '125.579737', '1730994904_081b36c079f7466d320b.jpg', 0),
(50, 'Colmera', 'Loga no Kafe Arama Timor', '76311904', '08:30:00', '21:00:00', 55, 31, 3, 1, '-8.555729', '125.575759', '1730995260_e747ae0735d174b527b2.jpg', 0),
(51, 'Kampun Alor', 'Fatima Coffee', '77840434', '08:30:00', '22:00:00', 43, 43, 1, 1, '-8.548312', '125.564539', '1730995589_3bd051ca67620a1eeb52.jpg', 0),
(52, 'Colmera', 'Nova Zar', '74948507', '08:00:00', '20:00:00', 55, 31, 3, 1, '-8.555266', '125.579458', '1730995880_cdcd0364cf327c43365b.jpg', 0),
(53, 'Metiaut', 'Blue Ocean \'Resto coffee Bar', '77883731', '09:00:00', '20:30:00', 65, 41, 2, 1, '-8.530672', '125.614844', '1730996339_f710c428abc7444d8610.jpg', 0),
(54, 'Metiaut', 'Beachide \'Hotel & coffee', '77549681', '08:30:00', '22:00:00', 65, 41, 2, 1, '-8.533168', '125.615278', '1730996684_688c73ec9a391a518228.jpg', 0),
(55, 'Motael', 'Black Box coffee', '76375227', '09:00:00', '20:30:00', 56, 51, 3, 1, '-8.551524', '125.567944', '1730997046_1faf21603960ddf82425.jpg', 0),
(58, 'Mandarin', 'Uma Lafatik', '77505005', '08:30:00', '20:30:00', 48, 51, 3, 1, '-8.554183', '125.567425', '1730998478_1bf99cbcdc247a5f9c61.jpg', 0),
(59, 'Motael', 'Saudades Resto And Coffee', '74195759', '08:00:00', '21:00:00', 49, 51, 3, 1, '-8.553929', '125.565366', '1730998818_e793fd0ed98ab5a5c94d.jpg', 0),
(60, 'Timor Plaza', 'Glory Jean\'s Coffe', '75950872', '08:30:00', '21:30:00', 47, 47, 1, 1, '-8.553519', '125.541248', '1730999105_44293582a8fe6b905049.jpg', 0),
(63, 'Bidau', 'EL LEGENDARIO COFFEE', '77139438', '08:30:00', '20:30:00', 36, 40, 4, 1, '-8.548430', '125.586814', '1730999728_6dd8b1804dacc5f80fbe.jpg', 0),
(64, 'Comoro', 'MD Coffee & Book', '76318882', '08:30:00', '21:00:00', 44, 44, 1, 1, '-8.560595', '125.549695', '1731000067_85a4eb0d0fe82da97ae6.jpg', 0),
(66, 'Fomentu II', 'Love Story Coffe', '73069966', '10:00:00', '22:00:00', 66, 57, 1, 1, '-8.561162', '125.536242', '1731249346_26b131f3283a3bfb6fea.jpg', 0),
(67, 'Bebora', 'SM Resto Coffee', '77326915', '09:30:00', '21:30:00', 11, 51, 3, 1, '-8.554311', '125.568304', '1731250366_a0810159316ee12b4198.jpg', 0),
(68, 'Metiaut', 'Coffeto Restaurante', '76063215', '08:30:00', '20:30:00', 63, 41, 2, 1, '-8.540063', '125.613026', '1731253290_b39d0b727d42c8016261.jpg', 0),
(69, 'Metiaut', 'Nelio Coffee \'Bar & Resto\'', '77393549', '09:00:00', '20:30:00', 64, 41, 2, 1, '-8.536412', '125.615071', '1731253594_b6a9c63bc421919be2da.jpg', 0),
(70, 'Metiaut', 'Laclubar Lounge & Cafe', '78061999', '08:30:00', '10:30:00', 63, 41, 2, 1, '-8.544329', '125.609813', '1731254029_4b025317c551fafddefc.jpg', 0),
(71, 'Kampun Alor', 'Aru Bakery & Caffee', '75228940', '08:30:00', '10:30:00', 26, 43, 1, 1, '-8.546029', '125.546916', '1731254446_1b53645839ae1a0b786d.jpg', 0),
(72, 'Vila-Verde', 'Tanous Cafe Dalan Ninin', '73668825', '08:30:00', '21:30:00', 45, 45, 3, 1, '-8.559212', '125.570540', '1731254753_82c7df36d7f90b409359.jpg', 0),
(73, 'fatuhada', 'Kamsia Boba Coffe', '77707600', '08:00:00', '20:00:00', 29, 34, 1, 1, '-8.553898', '125.551261', '1731255007_3bb9ff8e41401a0a49c8.jpg', 0),
(74, 'fatuhada', 'Daily Restu Amores coffee', '74333955', '09:00:00', '20:30:00', 29, 34, 1, 1, '-8.553747', '125.552875', '1731255253_b9b4b66343431bac58a3.jpg', 0),
(75, 'Bebonuk', 'Algarithm Coffee & Boba', '73520276', '08:30:00', '10:00:00', 47, 47, 1, 1, '-8.553606', '125.543665', '1731255762_c8da1148566b075047b1.jpg', 0),
(76, 'Motael', 'Skyra Coffee', '78065311', '08:30:00', '22:00:00', 56, 51, 3, 1, '-8.551849', '125.569307', '1731255991_505a23ed73d4223e6fb1.jpg', 0),
(77, 'Motael', 'A-Cube Caffe', '74603361', '08:30:00', '22:00:00', 56, 51, 3, 1, '-8.551608', '125.570009', '1731256198_4964ae4ab73955572e49.jpg', 0),
(78, 'Motael', 'Caffe Ameu', '75357875', '08:30:00', '22:00:00', 56, 51, 3, 1, '-8.551548', '125.570002', '1731256430_a45c6c4a6dee1f8cb335.jpg', 0),
(79, 'Farmosa', 'Doce Tentacao', '77895123', '08:30:00', '22:00:00', 2, 2, 4, 1, '-8.555275', '125.576654', '1731259823_8012aea0b441f8b7adc6.jpg', 0),
(80, 'Bidau ', 'Mehi Cafetaria', '75055460', '08:30:00', '22:30:00', 7, 40, 2, 1, '-8.552484', '125.584194', '1731260068_253f27ee77c8cdedcf3a.jpg', 0),
(81, 'Motael', 'Coring Coffee & Bar', '77804374', '08:30:00', '22:00:00', 11, 51, 3, 1, '-8.554649', '125.568316', '1731261070_2afe13e247a9ede5909b.jpg', 0),
(82, 'Motael', 'Uma Saudavel Caffe', '76160822', '08:30:00', '10:00:00', 56, 51, 3, 1, '-8.551906', '125.570324', '1731261224_2a5026a3d8cd20e11b9d.jpg', 0),
(83, 'Pantai Kelapa', 'Tasi lidun \'coffe & bar\'', '78474777', '08:00:00', '10:30:00', 26, 34, 1, 1, '-8.544848', '125.549036', '1731261395_f53bccfcffd4de117d71.jpg', 0),
(84, 'formosa', 'kafe uut', '77977253', '08:00:00', '21:00:00', 2, 8, 3, 1, '-8.556043', '125.581366', '1731261592_94b0e3486dd4a9d25ee9.jpg', 0),
(85, 'Motael', 'Caffe Atsabe', '76188743', '08:30:00', '22:00:00', 49, 51, 3, 1, '-8.551541', '125.564933', '1731261719_967a774bb19bec4fecc1.jpg', 0),
(86, 'Pantai Kelapa', 'Letefoho Specialty coffee Roaster', '78552494', '08:00:00', '22:00:00', 67, 34, 1, 1, '-8.548354', '125.558810', '1731262063_5facdc403eee55382cb8.jpg', 0),
(87, 'Pantai Kelapa', 'Letefoho Specialty coffee Roaster', '78552494', '08:00:00', '22:00:00', 67, 34, 1, 1, '-8.548354', '125.558810', '1731262063_743ca5c2bc101b092c28.jpg', 0),
(88, 'Manleuana', 'Cafe Advogadu Lalapan Tanuksa', '77345872', '08:00:00', '20:30:00', 10, 57, 1, 1, '-8.566874', '125.547544', '1731262250_b0b04243089b936945d2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_even`
--

CREATE TABLE `t_even` (
  `id_even` int NOT NULL,
  `id_cafetaria` int NOT NULL,
  `promosaun` varchar(100) NOT NULL,
  `even_stars` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `timestamp` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_even`
--

INSERT INTO `t_even` (`id_even`, `id_cafetaria`, `promosaun`, `even_stars`, `data`, `timestamp`) VALUES
(2, 3, 'Cafe Lokal', 'even festival', '2024-11-07', '0000-00-00 00:00:00'),
(3, 5, 'Cafe Lokal', 'even festival', '2024-11-08', '0000-00-00 00:00:00'),
(4, 6, 'Cafe Lokal', 'even festival', '2024-11-09', '0000-00-00 00:00:00'),
(6, 7, 'Cafe Lokal', 'even festival', '2024-11-11', '0000-00-00 00:00:00'),
(10, 17, 'Cafe lokal', 'even festival', '2024-11-15', '0000-00-00 00:00:00'),
(11, 18, 'Cafe Lokal', 'even festival', '2024-11-16', '0000-00-00 00:00:00'),
(12, 19, 'Cafe Lokal', 'even festival', '2024-11-17', '0000-00-00 00:00:00'),
(13, 20, 'Cafe Lokal', 'even festival', '2024-11-18', '0000-00-00 00:00:00'),
(14, 22, 'Cafe Lokal', 'even festival', '2024-11-19', '0000-00-00 00:00:00'),
(15, 23, 'Cafe Lokal', 'even festival', '2024-11-20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t_hahan`
--

CREATE TABLE `t_hahan` (
  `id_hahan` int NOT NULL,
  `hahan` varchar(50) NOT NULL,
  `id_cafetaria` int NOT NULL,
  `presu` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_hahan`
--

INSERT INTO `t_hahan` (`id_hahan`, `hahan`, `id_cafetaria`, `presu`) VALUES
(11, 'Fehuk ropa sona/ potatoes chips', 3, '2.00'),
(12, 'Fehuk midar sona / sweet potato chips', 3, '1.00'),
(13, 'Aifarina sona/ cassava chips', 3, '1.00'),
(14, 'Akar kadaka', 3, '1.50'),
(15, 'Hudi Sona / Banana Chips', 3, '1.00'),
(16, 'Mie Rebus Original', 3, '2.50'),
(17, 'Ikan tunu (ikan 1) local Grilled Fish', 3, '5.00-30.00'),
(18, 'Gurita Tunu', 3, '5.00-20.00'),
(19, 'Ayam Potong (Lekor )', 3, '5.00'),
(20, 'Boiler tunu (lekor)', 3, '8.00'),
(21, 'Fehuk Sona ', 5, '2.00'),
(22, 'Juice Abocate', 5, '1.50'),
(23, 'Machato', 5, '1.50'),
(24, 'Chocolate cake', 5, '1.50'),
(25, 'Orange cake', 5, '1.50'),
(26, 'Banana cake', 5, '1.50'),
(27, 'Burger pacet', 5, '4.00'),
(28, 'Mini Burger', 5, '1.50'),
(29, 'Vanilla saft serve', 7, '1.00'),
(30, 'Vanilla serve choco nutty', 7, '2.00'),
(31, 'Vanilla saft serve strawberry sauce', 7, '1.50'),
(32, 'Vanilla Sundae strawberry', 7, '2.50'),
(33, 'pepsifloat', 7, '2.75'),
(34, 'Nan manu tunu', 17, '3.00'),
(35, 'Nan fahi tunu', 17, '4.00'),
(36, 'ikan tasi sona', 17, '5.00'),
(37, 'manu timor sona', 17, '8.00'),
(38, 'sate nan fahi', 17, '3.50'),
(39, 'sate nan manu', 17, '2.50'),
(40, 'sate nan karau', 17, '4.00'),
(41, 'sate karau fuan', 17, '2.50'),
(42, 'Banana', 18, '1.50'),
(43, 'Chocolate ', 18, '2.00'),
(44, 'mafin', 18, '1.00'),
(45, 'carousel', 18, '1.50'),
(46, 'Pasleis de natas', 18, '1.50'),
(47, 'Cheesecake', 18, '2.00'),
(48, 'Patato chips', 18, '2.00'),
(49, 'chicken chips', 18, '3.00/6.00'),
(50, 'Burger', 18, '3.00'),
(51, 'Pizza', 18, '4.00/8.00'),
(52, 'chicken roll', 18, '2.50'),
(53, 'sandwich', 18, '2.50'),
(54, 'Home-mode yoghurt with granola and fruit', 19, '5.5'),
(55, 'pancakes with blueberry cream,blueberries,banana a', 19, '6.5'),
(56, 'Huevos Rancheros', 19, '7.5'),
(57, 'Avocado and teast with crispy bacon', 19, '5.5'),
(58, 'Egg and bacon sandwich/eggs and bacon', 19, '6.5'),
(59, 'fresh fruit salad', 19, '4.00'),
(60, 'Toast and spreads', 19, '2.50'),
(61, 'chicken, cheese,tomato and pesto', 19, '6.5'),
(62, 'BLAT (bacon,lettuce,avocado,tomato', 19, '6.00'),
(63, 'Egg and bacon sandwich', 19, '6.5'),
(64, 'Nasi sei Babi', 20, '4.00'),
(65, 'Nasi goreng sapi', 20, '3.00'),
(66, 'Spagetti', 20, '2.50'),
(67, 'Nasi goreng babi', 20, '2.50'),
(68, 'Steak chicken', 20, '4.00'),
(69, 'lalapan ayam', 20, '2.50'),
(70, 'Steak beef', 20, '5.00'),
(71, 'Nasi goreng ayam bakar', 20, '3.50'),
(72, 'Nasi tulang babi', 20, '4.00'),
(73, 'Ayam Geprek', 20, '2.50'),
(74, 'Nasi goreng udang', 20, '4.00'),
(75, 'soto Ayam', 20, '2.50'),
(76, 'Nasi goreng telur', 20, '2.00'),
(77, 'Not tea', 22, '1.00'),
(78, 'Not tea bemon', 22, '  2.00'),
(79, 'Ice tea', 22, '1.00'),
(80, 'Ice bemon tea', 22, '2.00'),
(81, 'hoeney bemon tea', 22, '2.50'),
(82, 'Milik Tea (Bubble Tea)', 22, '2.00'),
(83, 'Aice nanas', 22, '0.25'),
(84, 'Aice chocolate crispy stiek', 22, '0.50'),
(85, 'Mie Bakso biasa', 23, '1.00'),
(86, 'Mie Bakso Telur', 23, '1.50'),
(87, 'Nasi campur', 23, '0.50'),
(88, 'Nasi Ayam', 23, '1.00'),
(89, 'Nasi ikan', 23, '1.00'),
(90, 'fehuk sona', 23, '1.00'),
(91, 'kankung/ mostarda', 23, '1.00'),
(92, 'modo tasak', 23, '1.00'),
(93, 'Soup ikan segar', 23, '3.50'),
(94, 'Nasi bibi bakar', 23, '3.00'),
(95, 'Soup ikan pantin', 23, '2.50'),
(96, 'Nasi goreng Special', 23, '2.50'),
(97, 'Nasi goreng babi', 23, '3.00'),
(98, 'Lalapan ayam/ikan ', 23, '2.50');

-- --------------------------------------------------------

--
-- Table structure for table `t_manager`
--

CREATE TABLE `t_manager` (
  `id_manager` int NOT NULL,
  `login_no` varchar(10) NOT NULL,
  `naran_manager` varchar(100) NOT NULL,
  `sexo` enum('Mane','Feto') NOT NULL,
  `total_s_feto` varchar(10) NOT NULL,
  `total_s_mane` varchar(10) NOT NULL,
  `id_cafetaria` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_manager`
--

INSERT INTO `t_manager` (`id_manager`, `login_no`, `naran_manager`, `sexo`, `total_s_feto`, `total_s_mane`, `id_cafetaria`) VALUES
(2, 'MDL1', 'Martino Goreti', 'Mane', '2', '2', 3),
(4, '', 'Estelio Rodriges', 'Mane', '2', '2', 5),
(5, '', 'Nyang Fenz John', 'Mane', '2', '2', 6),
(6, '', 'Frank Jason Yun Sukagyo Santos', 'Mane', '2', '2', 7),
(16, '', 'Helder Freitas', 'Mane', '4', '3', 17),
(17, '', 'Mariano Da Costa Reis', 'Mane', '5', '2', 18),
(18, '', 'Gabriel de carvalho', 'Mane', '7', '6', 19),
(19, '', 'Samuel Carvalho', 'Mane', '2', '2', 20),
(21, '', 'Erna da silva', 'Feto', '3', '1', 22),
(22, '', 'Alexandro Coutu', 'Mane', '7', '2', 25),
(23, '', 'Milides Lopes', 'Feto', '6', '1', 26),
(24, '', 'Milides Lopes Martins', 'Feto', '5', '4', 27),
(25, '', 'Emelita Alves Serao', 'Feto', '4', '3', 28),
(26, '', 'Ernesto Maia Madeira', 'Mane', '6', '1', 29),
(27, '', 'Jose Bonifasio', 'Mane', '4', '3', 66),
(28, '', 'Zinho Mesquita de Almeida', 'Mane', '3', '5', 31),
(29, '', 'Ezaquel Salsinha', 'Mane', '3', '4', 32),
(30, '', 'Filomena de J.G. Patrico Soimali', 'Feto', '2', '1', 33),
(31, '', 'Mario Pinto', 'Mane', '2', '1', 34),
(32, '', 'Fabiana Manezes', 'Feto', '4', '2', 67),
(33, '', 'Alexanfro Soares Correia', 'Mane', '1', '1', 39),
(34, '', 'Olavio de Araujo Martins', 'Mane', '9', '6', 41),
(35, '', 'Billy Tampenawo', 'Mane', '10', '3', 43),
(36, '', 'Alberto Fernandes', 'Mane', '1', '1', 45),
(37, '', 'Eurico da Costa', 'Mane', '2', '2', 46),
(38, '', 'Graciela Sularati Ximenes', 'Feto', '8', '8', 47),
(39, '', 'Zaqueo David da C Fernandes', 'Mane', '1', '2', 48),
(40, '', 'Menia Araujo', 'Feto', '3', '1', 49),
(41, '', 'Alfredo da luz Neto', 'Mane', '1', '1', 64),
(42, '', 'Cornelio Mau', 'Mane', '2', '3', 63),
(43, '', 'Petrolina Ximenes Fraga', 'Feto', '5', '1', 28),
(44, '', 'Francisco Sarmento Barbosa', 'Mane', '2', '4', 59),
(45, '', 'Laurentino Freitas Correia', 'Mane', '12', '12', 58),
(46, '', 'Veronica Lobato', 'Feto', '8', '4', 18),
(47, '', 'Fatima Moniz Soares', 'Feto', '3', '1', 51),
(48, '', 'Deniz da Costa', 'Mane', '7', '4', 55),
(49, '', 'Angelo Martinho Perreira Alvez', 'Mane', '17', '4', 54),
(50, '', 'Regina de Fatima dos Santos', 'Feto', '2', '1', 53),
(51, '', 'Teodizia Berta Fonseca', 'Feto', '2', '1', 52),
(52, '', 'Fatima Moniz Soares', 'Feto', '3', '2', 51),
(53, '', 'Zito Correia Goncalves', 'Mane', '4', '5', 50),
(54, '', 'Joanico Jeronimo', 'Mane', '1', '2', 24),
(55, '', 'Seri Claudia da Silva Perreira', 'Feto', '1', '1', 23),
(56, '', 'Angelina Freitas da Costa', 'Feto', '1', '1', 78),
(57, '', 'Argie Bernaldes', 'Mane', '2', '1', 77),
(58, '', 'Joaninha Godinho', 'Feto', '2', '4', 76),
(59, '', 'Abdul da Alkatiri', 'Mane', '1', '1', 75),
(60, '', 'Delle Guiana da Cunha ', 'Feto', '3', '1', 74),
(61, '', 'Nyang Fenz John', 'Mane', '2', '1', 73),
(62, '', 'Diogo Carvalho', 'Mane', '4', '4', 72),
(63, '', 'Lucia de Araujo', 'Feto', '3', '2', 71),
(64, '', 'Leonardo Moniz da Silva', 'Mane', '7', '1', 70),
(65, '', 'Leonicio de Aguiar do Rego', 'Mane', '2', '3', 70),
(66, '', 'Febrina Mendonca', 'Feto', '6', '3', 68),
(67, '', 'Sergio Oliveira', 'Mane', '7', '2', 79),
(68, '', 'Guida Soares', 'Feto', '5', '1', 80),
(69, '', 'Gabriel Da Costa De Jesus', 'Mane', '2', '1', 81),
(70, '', 'Aquelina de J.pinto', 'Feto', '4', '1', 82),
(71, '', 'Gregorio Lay', 'Mane', '1', '1', 83),
(72, '', 'Zelindo Soares', 'Mane', '6', '3', 84),
(73, '', 'Veronica Lobato', 'Feto', '8', '4', 85),
(75, '', 'Rui Antonio Mendonca', 'Mane', '1', '1', 88);

-- --------------------------------------------------------

--
-- Table structure for table `t_municipiu`
--

CREATE TABLE `t_municipiu` (
  `id_municipio` int NOT NULL,
  `municipio` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_municipiu`
--

INSERT INTO `t_municipiu` (`id_municipio`, `municipio`) VALUES
(1, 'Dili');

-- --------------------------------------------------------

--
-- Table structure for table `t_postu`
--

CREATE TABLE `t_postu` (
  `id_posto` int NOT NULL,
  `postu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_postu`
--

INSERT INTO `t_postu` (`id_posto`, `postu`) VALUES
(1, 'Dom-Aleixo'),
(2, 'Cristo-Rei'),
(3, 'Vera-cruz'),
(4, 'Nain-Feto'),
(5, 'Metinaro');

-- --------------------------------------------------------

--
-- Table structure for table `t_settings`
--

CREATE TABLE `t_settings` (
  `id_setting` int NOT NULL,
  `naran_web` varchar(50) NOT NULL,
  `cordinat_municipiu` varchar(50) NOT NULL,
  `zom_view` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_settings`
--

INSERT INTO `t_settings` (`id_setting`, `naran_web`, `cordinat_municipiu`, `zom_view`) VALUES
(1, 'GIS_CAFETARIA', '-8.92490909073302, 125.25041128671973', 9);

-- --------------------------------------------------------

--
-- Table structure for table `t_suco`
--

CREATE TABLE `t_suco` (
  `id_suco` int NOT NULL,
  `suco` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `t_suco`
--

INSERT INTO `t_suco` (`id_suco`, `suco`) VALUES
(2, 'Bairo dos Grilhos'),
(4, 'Mantalaun'),
(5, 'Becora'),
(8, 'Grincefor'),
(25, 'Bidau Santana'),
(29, 'Balide'),
(31, 'Colmera'),
(34, 'Fatuhada'),
(40, 'Bidau Licidere'),
(41, 'Metiaut'),
(43, 'Kampun Alor'),
(44, 'Comoro'),
(45, 'Vila-verde'),
(47, 'Bebonuk'),
(51, 'Motael'),
(57, 'Manleuana'),
(58, 'Hera'),
(59, 'Madohi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `t_aldeia`
--
ALTER TABLE `t_aldeia`
  ADD PRIMARY KEY (`id_aldeia`);

--
-- Indexes for table `t_bebidas`
--
ALTER TABLE `t_bebidas`
  ADD PRIMARY KEY (`id_bebidas`),
  ADD KEY `id_cafetaria` (`id_cafetaria`);

--
-- Indexes for table `t_cafetaria`
--
ALTER TABLE `t_cafetaria`
  ADD PRIMARY KEY (`id_cafetaria`),
  ADD KEY `id_municipiu` (`id_municipio`),
  ADD KEY `id_posto` (`id_posto`),
  ADD KEY `id_suco` (`id_suco`),
  ADD KEY `id_aldeia` (`id_aldeia`);

--
-- Indexes for table `t_even`
--
ALTER TABLE `t_even`
  ADD PRIMARY KEY (`id_even`),
  ADD KEY `id_cafetaria` (`id_cafetaria`);

--
-- Indexes for table `t_hahan`
--
ALTER TABLE `t_hahan`
  ADD PRIMARY KEY (`id_hahan`),
  ADD KEY `id_cafetaria` (`id_cafetaria`);

--
-- Indexes for table `t_manager`
--
ALTER TABLE `t_manager`
  ADD PRIMARY KEY (`id_manager`),
  ADD KEY `id_cafetaria` (`id_cafetaria`);

--
-- Indexes for table `t_municipiu`
--
ALTER TABLE `t_municipiu`
  ADD PRIMARY KEY (`id_municipio`);

--
-- Indexes for table `t_postu`
--
ALTER TABLE `t_postu`
  ADD PRIMARY KEY (`id_posto`);

--
-- Indexes for table `t_settings`
--
ALTER TABLE `t_settings`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `t_suco`
--
ALTER TABLE `t_suco`
  ADD PRIMARY KEY (`id_suco`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `t_aldeia`
--
ALTER TABLE `t_aldeia`
  MODIFY `id_aldeia` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `t_bebidas`
--
ALTER TABLE `t_bebidas`
  MODIFY `id_bebidas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `t_cafetaria`
--
ALTER TABLE `t_cafetaria`
  MODIFY `id_cafetaria` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `t_even`
--
ALTER TABLE `t_even`
  MODIFY `id_even` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `t_hahan`
--
ALTER TABLE `t_hahan`
  MODIFY `id_hahan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `t_manager`
--
ALTER TABLE `t_manager`
  MODIFY `id_manager` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `t_municipiu`
--
ALTER TABLE `t_municipiu`
  MODIFY `id_municipio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_postu`
--
ALTER TABLE `t_postu`
  MODIFY `id_posto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `t_settings`
--
ALTER TABLE `t_settings`
  MODIFY `id_setting` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `t_suco`
--
ALTER TABLE `t_suco`
  MODIFY `id_suco` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_bebidas`
--
ALTER TABLE `t_bebidas`
  ADD CONSTRAINT `t_bebidas_ibfk_1` FOREIGN KEY (`id_cafetaria`) REFERENCES `t_cafetaria` (`id_cafetaria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_cafetaria`
--
ALTER TABLE `t_cafetaria`
  ADD CONSTRAINT `t_cafetaria_ibfk_1` FOREIGN KEY (`id_aldeia`) REFERENCES `t_aldeia` (`id_aldeia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_cafetaria_ibfk_2` FOREIGN KEY (`id_suco`) REFERENCES `t_suco` (`id_suco`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_cafetaria_ibfk_3` FOREIGN KEY (`id_posto`) REFERENCES `t_postu` (`id_posto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_cafetaria_ibfk_4` FOREIGN KEY (`id_municipio`) REFERENCES `t_municipiu` (`id_municipio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_even`
--
ALTER TABLE `t_even`
  ADD CONSTRAINT `t_even_ibfk_1` FOREIGN KEY (`id_cafetaria`) REFERENCES `t_cafetaria` (`id_cafetaria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `t_manager`
--
ALTER TABLE `t_manager`
  ADD CONSTRAINT `t_manager_ibfk_1` FOREIGN KEY (`id_cafetaria`) REFERENCES `t_cafetaria` (`id_cafetaria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
