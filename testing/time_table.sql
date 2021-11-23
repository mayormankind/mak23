-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2021 at 10:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `time_table`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` text NOT NULL,
  `course_title` text NOT NULL,
  `dept` text NOT NULL,
  `level` text NOT NULL,
  `day` int(11) NOT NULL,
  `venue` text NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_title`, `dept`, `level`, `day`, `venue`, `start`, `end`) VALUES
(1, 'COM121', 'Scientific Programming Language Using OO Java', 'comp', 'nd1', 1, 'Computer Science Class', 8, 11),
(2, 'GNS125', 'Use of Library', 'comp', 'nd1', 1, 'NLT1&2', 12, 13),
(3, 'COM124', 'Data Structure and Algorithm', 'comp', 'nd1', 1, 'Computer Science Class', 14, 16),
(4, 'COM123', 'Computer Packages 1', 'comp', 'nd1', 1, 'Computer Science Class', 16, 18),
(5, 'COM122', 'Introduction to Internet Pratical', 'comp', 'nd1', 2, 'Computer Science Class', 8, 10),
(6, 'COM123', 'Computer Packages 1 Practical', 'comp', 'nd1', 2, 'Software Laboratory', 10, 13),
(7, 'COM124', 'Data Structure and Algorithm Practical', 'comp', 'nd1', 2, 'Software Laboratory', 14, 16),
(8, 'COM126', 'Pc Upgrade and Maintainance', 'comp', 'nd1', 2, 'Computer Science Class', 16, 18),
(9, 'SPS126', 'SPORTS', 'comp', 'nd1', 3, 'BORA FIELD', 8, 10),
(11, 'AGT124', 'Rural Sociology', 'comp', 'nd1', 3, 'Computer Science Class', 10, 12),
(12, 'MTH121', 'Calculus 1', 'comp', 'nd1', 3, 'Computer Science Class', 14, 16),
(13, 'FIT122', 'Biology Of Fishes', 'fish', 'nd1', 3, 'CL2', 8, 10),
(14, 'AGT124', 'Rural Sociology', 'fish', 'nd1', 3, 'CL2', 10, 12),
(15, 'COM101', 'Introduction to Computing', 'fish', 'nd1', 3, 'CL2', 12, 13),
(16, 'EED126', 'Introduction  to Entrepreneurship', 'fish', 'nd1', 3, 'CL2', 16, 18),
(17, 'EED126', 'Introduction to Entrepreneurship', 'comp', 'nd1', 3, 'CL2', 16, 18),
(18, 'COM126', 'PC Upgrade and Maintenance Practical', 'comp', 'nd1', 4, 'Hardware Laboratory', 8, 11),
(19, 'COM125', 'Introduction to System Analysis Practical', 'comp', 'nd1', 4, 'Software Lab ', 11, 13),
(20, 'COM121', 'Scientific Programming Language Using OO Java', 'comp', 'nd1', 4, 'Computer Science Laboratory', 14, 16),
(21, 'COM125', 'Introduction to System Analysis', 'comp', 'nd1', 5, 'Computer Science Class', 8, 11),
(22, 'COM122', 'Introduction to Internet', 'comp', 'nd1', 5, 'Computer Science Class', 11, 13),
(23, 'EEP128', 'Skill Acquisition 2', 'comp', 'nd1', 5, 'EEP venue', 15, 18),
(24, 'COM223', 'Basic Hardware Maintenance Practical', 'comp', 'nd2', 1, 'Computer Science Class', 11, 13),
(25, 'COM225', 'Web Technology Practical', 'comp', 'nd2', 1, 'Software Lab', 14, 16),
(26, 'OTM217', 'Technical English 2', 'comp', 'nd2', 1, 'Computer Science Class', 16, 18),
(27, 'COM224', 'Management Information System ', 'comp', 'nd2', 2, 'Computer Science Class', 8, 10),
(28, 'COM223', 'Basic Hardware Maintenance', 'comp', 'nd2', 2, 'Hardware Laboratory', 10, 13),
(29, 'COM222', 'Mathematical Methods', 'comp', 'nd2', 2, 'Hardware Laboratory', 16, 18),
(30, 'COM221', 'Computer Programming Using OO FORTRAN', 'comp', 'nd2', 2, 'Software Laboratory', 14, 16),
(31, 'STA224', 'PROJECT', 'comp', 'nd2', 3, 'Supervisor\'s Office', 8, 13),
(32, 'SEM', 'SEMINAR', 'comp', 'nd2', 3, 'Software Laboratory', 14, 18),
(33, 'COM221', 'Computer Programming Using OO FORTRAN', 'comp', 'nd2', 4, 'Software Laboratory', 8, 12),
(34, 'GNS121', 'Citizenship Education 2', 'comp', 'nd2', 4, 'Computer Science Class', 12, 13),
(35, 'COM226', 'Computer Systems Troubleshooting 2 practical', 'comp', 'nd2', 4, 'Hardware Laboratory', 14, 16),
(36, 'COM224', 'Management Information System Practical', 'comp', 'nd2', 4, 'Software Laboratory', 16, 18),
(37, 'STA226', 'Small Business Startup', 'comp', 'nd2', 5, 'Computer Science Class', 8, 10),
(38, 'COM225', 'Web Technology', 'comp', 'nd2', 5, 'Computer Science Class', 10, 12),
(39, 'COM226', 'Computer Systems Troubleshooting 2', 'comp', 'nd2', 5, 'Hardware Laboratory', 14, 16),
(40, 'EEP218', 'Skill Acquisition 4', 'comp', 'nd2', 5, 'CL1', 16, 18),
(41, 'BCH121', 'Organic And Inorganic Chemistry', 'ahpt', 'nd1', 1, 'NLT1&2', 8, 10),
(42, 'AGT224', 'Genetics And Breeding', 'ahpt', 'nd1', 1, 'NLT1&2', 10, 12),
(43, 'GNS125', 'Use Of Library', 'ahpt', 'nd1', 1, 'NLT1&2', 12, 13),
(44, 'AHP124', 'Introductory Veterinary Microbiology', 'ahpt', 'nd1', 1, 'NLT1&2', 14, 16),
(45, 'AHP125', 'Introduction To Animal Husbandary', 'ahpt', 'nd1', 1, 'NLT1&2', 16, 18),
(46, 'AHP121', 'Principles Of Pasture & Range Management Practical', 'ahpt', 'nd1', 2, 'Paddock', 8, 11),
(47, 'AGT221', 'Animal Nutrition Practical', 'ahpt', 'nd1', 2, 'Nutrition Laboratory', 11, 13),
(48, 'AGT122', 'Animal Parasitology Practical', 'ahpt', 'nd1', 2, 'Parasitology Laboratory', 16, 18),
(49, 'AHP123', 'Anatomy And Physiology 2', 'ahpt', 'nd1', 2, 'Anatomy Laboratory', 14, 16),
(50, 'AHP122', 'Animal Parasitology', 'ahpt', 'nd1', 3, 'NLT1&2', 8, 10),
(51, 'AGT124', 'Rural Sociology', 'ahpt', 'nd1', 3, 'NLT1&2', 10, 12),
(52, 'AHP124', 'Introductory Veterinary Microbiology Practical', 'ahpt', 'nd1', 4, 'Microbiology Laboratory', 9, 11),
(53, 'COM101', 'Introduction to Computing', 'ahpt', 'nd1', 3, 'NLT1&2', 12, 13),
(54, 'BCH121', 'Organic & Inorganic Chemistry Practical', 'ahpt', 'nd1', 4, 'Chemistry Laboratory', 14, 16),
(55, 'AHP123', 'Anatomy and Physiology 2', 'ahpt', 'nd1', 3, 'NLT1&2', 14, 16),
(56, 'EED126', 'Introduction to Entrepreneurship', 'ahpt', 'nd1', 3, 'NLT1&2', 16, 18),
(57, 'COM121', 'Introduction to Computing Practical', 'ahpt', 'nd1', 4, 'Software Laboratory', 11, 13),
(58, 'AHP125', 'Introduction to Animal Husbandary Practical', 'ahpt', 'nd1', 4, 'NLT1&2', 16, 18),
(59, 'AGT221', 'Animal Nutrition', 'ahpt', 'nd1', 5, 'NLT1&2', 8, 10),
(60, 'COM101', 'Introduction To Computing', 'ahpt', 'nd1', 5, 'NLT1&2', 10, 11),
(61, 'GNS201', 'Use of English 2', 'ahpt', 'nd1', 5, 'NLT1&2', 11, 13),
(62, 'AHP121', 'Principles of Pasture And Range Management', 'ahpt', 'nd1', 5, 'NLT1&2', 14, 16),
(63, 'EEP128', 'Skill Acquisition 2', 'ahpt', 'nd1', 5, 'NLT1&2', 16, 18),
(64, 'AHP223', 'Animal Diseases 2 Practical', 'ahpt', 'nd2', 1, 'Southern Farm', 8, 10),
(65, 'AHP224', 'Clinical Techniques Practical 2', 'ahpt', 'nd2', 1, 'Veterinary Clinic', 10, 13),
(66, 'AHP221', 'Mini Livestock Practical', 'ahpt', 'nd2', 1, 'NLT2&3', 14, 16),
(69, 'BDF', 'Beef And Dairy Production', 'ahpt', 'nd2', 2, 'NLT3&4', 12, 13),
(70, 'AHP224', 'Clinical Techniques 2', 'ahpt', 'nd2', 2, 'NLT3&4', 14, 16),
(71, 'AGT230', 'Agricultural Extention', 'ahpt', 'nd2', 2, 'NLT3&4', 16, 18),
(72, 'PRO', 'PROJECT', 'ahpt', 'nd2', 3, 'Supervisor\'s Office', 8, 13),
(73, 'SEM', 'SEMINAR', 'ahpt', 'nd2', 3, 'NLT3&4', 14, 18),
(74, 'AHP222', 'Animal Products Hygiene & Inspection Practical', 'ahpt', 'nd2', 4, 'Bodija Abbatoir', 8, 11),
(75, 'GNS121', 'Citizenship Education 2', 'ahpt', 'nd2', 4, 'NLT3&4', 11, 13),
(76, 'AGT225', 'Beef and Dairy Production Practical ', 'ahpt', 'nd2', 4, 'Southern Farm', 14, 16),
(77, 'AHP221', 'Mini Livestock Production', 'ahpt', 'nd2', 5, 'NLT3&4', 8, 10),
(78, 'BDF', 'Beef And Dairy Production', 'ahpt', 'nd2', 5, 'NLT3&4', 10, 11),
(79, 'AHP222', 'Animal Products Hygiene And Inspection', 'ahpt', 'nd2', 5, 'NLT3&4', 11, 13),
(80, 'EEP218', 'Skill Acquisition 4', 'ahpt', 'nd2', 5, 'EEP VENUES', 15, 18),
(81, 'FIT123', 'Basic Aquaculture', 'fish', 'nd1', 3, 'CL2', 14, 16),
(82, 'BCH121', 'Organic And Inorganic Chemistry', 'fish', 'nd1', 1, 'CL2', 8, 10),
(83, 'FIT124', 'Fishing Gears And Craft Technology 1', 'fish', 'nd1', 1, 'CL2', 10, 12),
(84, 'GNS125', 'Use of Library', 'fish', 'nd1', 1, 'CL2', 12, 13),
(85, 'TLS101', 'Basic Principle Of Land Surveying', 'fish', 'nd1', 1, 'CL2', 14, 16),
(86, 'FIT125', 'Fish Genetics And Breeding', 'fish', 'nd1', 1, 'CL2', 16, 18),
(87, 'FIT123', 'Basic Aquaculture Practical', 'fish', 'nd1', 2, 'CL2', 9, 11),
(88, 'FIT122', 'Biology Of Fishes Practical', 'fish', 'nd1', 2, 'Laboratory', 11, 13),
(89, 'FIT124', 'Fishing Gears And Craft Technology Practical', 'fish', 'nd1', 2, 'Netloft', 14, 16),
(90, 'FIT125', 'Fish Genetics And Breeding Practical', 'fish', 'nd1', 2, 'CL2', 16, 18),
(91, 'TLS101', 'Basic Principle Of Land Surveying Practical', 'fish', 'nd1', 4, 'Field', 8, 11),
(92, 'COM101', 'Introduction To Computing Practical', 'fish', 'nd1', 4, 'Software Laboratory', 11, 13),
(93, 'BXH121', 'Oragnic And Inorganic Chemistry Practical', 'fish', 'nd1', 4, 'CL2', 14, 16),
(94, 'GNS224', 'Physical Geography', 'fish', 'nd1', 5, 'CL2', 8, 10),
(95, 'COM101', 'Introduction To Computing', 'fish', 'nd1', 5, 'CL2', 10, 11),
(96, 'GNS201', 'Use of English 2', 'fish', 'nd1', 5, 'CL2', 11, 13),
(97, 'EEP128', 'Skill Acquisition 2', 'fish', 'nd1', 5, 'CL2', 16, 18),
(98, 'FIT223', 'Practical Fishing 2 Practical', 'fish', 'nd2', 1, 'Fish Pond', 8, 10),
(99, 'FIT221', 'Pond Management 2 Practical', 'fish', 'nd2', 1, 'Fish Pond', 10, 13),
(100, 'FIT229', 'Fish Diseases Practical', 'fish', 'nd2', 1, 'AUDITORIUM', 14, 16),
(101, 'FIT221', 'Pond Management', 'fish', 'nd2', 2, 'AUDITORIUM', 9, 11),
(102, 'FIT222', 'Fisheries Management', 'fish', 'nd2', 2, 'AUDITORIUM', 11, 13),
(103, 'FIT225', 'Introduction To Sus. Livelihood & Code of Resp. Fisheries', 'fish', 'nd2', 2, 'AUDITORIUM', 14, 16),
(104, 'FIT224', 'Fish Farm And Personal Management', 'fish', 'nd2', 2, 'AUDITORIUM', 16, 18),
(105, 'FIT228', 'SEMINAR', 'fish', 'nd2', 3, 'AUDITORIUM', 8, 13),
(106, 'PRO', 'PROJECT', 'fish', 'nd2', 3, 'AUDITORIUM', 14, 18),
(107, 'FIT229', 'Fish Diseases', 'fish', 'nd2', 4, 'AUDITORIUM', 9, 11),
(108, 'GNS121', 'Citizenship Education 2', 'fish', 'nd2', 4, 'AUDITORIUM', 11, 13),
(109, 'FIT223', 'Practical Fishing 2', 'fish', 'nd2', 5, 'AUDITORIUM', 8, 10),
(110, 'FIT221', 'Field Trip /Excursion', 'fish', 'nd2', 5, 'Fish Pond', 10, 13),
(111, 'EEP218', 'Skill Acquisition 4', 'fish', 'nd2', 5, 'EEP venue', 16, 18),
(112, 'STA122', 'Statistical Theory 1', 'stat', 'nd1', 1, 'CL3', 8, 10),
(113, 'BPA123', 'Principles Of Economics 2', 'stat', 'nd1', 1, 'CL3', 10, 12),
(114, 'GNS125', 'Use of Library', 'stat', 'nd1', 1, 'NLT1&2', 12, 13),
(115, 'COM123', 'Computer Packages 1', 'stat', 'nd1', 1, 'CL3', 16, 18),
(116, 'STA122', 'Statistical Theory 1 Practical', 'stat', 'nd1', 2, 'Statistical Tools Room', 8, 10),
(117, 'COM123', 'Computer Packages 1 Practical', 'stat', 'nd1', 2, 'Software Laboratory', 10, 13),
(118, 'STA121', 'Descriptive Statistics 2 Practical', 'stat', 'nd1', 2, 'CL3', 14, 16),
(119, 'STA123', 'Demography 1 Practical', 'stat', 'nd1', 2, 'CL3', 16, 18),
(120, 'STA123', 'Demography 1', 'stat', 'nd1', 3, 'CL3', 8, 10),
(121, 'AGT124', 'Rural Sociology', 'stat', 'nd1', 3, 'LR3', 10, 12),
(122, 'MTH121', 'Calculus 1', 'stat', 'nd1', 3, 'CL3', 14, 16),
(123, 'EED126', 'Introduction To Entrepreneurship', 'stat', 'nd1', 3, 'NLT1&2', 16, 18),
(124, 'GNS402', 'Communication In English 1', 'stat', 'nd1', 4, 'CL3', 8, 10),
(125, 'STA121', 'Descriptive Statistics 2', 'stat', 'nd1', 4, 'CL3', 10, 12),
(126, 'EEP128', 'Skill Acquisition', 'stat', 'nd1', 5, 'EEP venue', 16, 18),
(127, 'COM224', 'Management Information System Practical', 'stat', 'nd2', 1, 'CL4', 9, 11),
(128, 'STA223', 'Applied General Statistics Practical', 'stat', 'nd2', 1, 'CL4', 11, 13),
(129, 'STA225', 'Biostatistics Practical', 'stat', 'nd2', 1, 'CL4', 14, 16),
(130, 'STA221', 'Design and Analysis of Experiments Practical', 'stat', 'nd2', 1, 'CL4', 16, 18),
(131, 'COM224', 'Management Information System', 'stat', 'nd2', 2, 'CL4', 8, 10),
(132, 'GNS202', 'Communication In ENglish 2', 'stat', 'nd2', 2, 'CL4', 11, 13),
(133, 'GNS221', 'Introduction to Sociology', 'stat', 'nd2', 2, 'CL4', 14, 16),
(134, 'MTH222', 'Mathematical Methods', 'stat', 'nd2', 2, 'Computer Science Class', 16, 18),
(135, 'STA224', 'PROJECT', 'stat', 'nd2', 3, 'CL4', 8, 13),
(136, 'SEM', 'SEMINAR', 'stat', 'nd2', 3, 'CL4', 14, 18),
(137, 'STA225', 'Sample Techniques Practical', 'stat', 'nd2', 4, 'CL4', 8, 10),
(138, 'GNS121', 'Citizenship Education 2', 'stat', 'nd2', 4, 'CL4', 11, 13),
(139, 'STA221', 'Design And Analysis Of Experiments', 'stat', 'nd2', 4, 'CL4', 14, 16),
(140, 'STA225', 'Sample Techniques', 'stat', 'nd2', 4, 'CL4', 16, 18),
(141, 'STA226', 'Small Business Start-up', 'stat', 'nd2', 6, 'CL4', 8, 10),
(142, 'STA224', 'Biostatistics', 'stat', 'nd2', 6, 'CL4', 11, 30),
(143, 'STA223', 'Applied General Statistics', 'stat', 'nd2', 6, 'CL4', 14, 16),
(144, 'EEP218', 'Skill Acquisition', 'stat', 'nd2', 6, 'CL4', 16, 18),
(145, 'STC123', 'Analytical Chemistry', 'slt', 'nd1', 1, 'NCL1', 8, 10),
(146, 'STB121', 'Cell Biology', 'slt', 'nd1', 1, 'NCL1', 10, 12),
(147, 'GNS125', 'Use Of Library', 'slt', 'nd1', 1, 'NLT1&2', 12, 13),
(148, 'STC121', 'Organic Chemistry', 'slt', 'nd1', 1, 'NCL1', 14, 16),
(149, 'COM123', 'Computer Packages 1', 'slt', 'nd1', 1, 'NCL1', 16, 18),
(150, 'STC123', 'Analytical Chemistry Practical', 'slt', 'nd1', 2, 'Chemistry Laboratory', 8, 10),
(151, 'COM123', 'Computer Packages 1 Practical', 'slt', 'nd1', 2, 'Software Laboratory', 10, 13),
(152, 'STC122', 'Physical Chemistry Practical', 'slt', 'nd1', 2, 'Chemistry Laboratory', 14, 16),
(153, 'STP121', 'Electricity And Magnetism Practical', 'slt', 'nd1', 2, 'Physics Laboratory', 16, 18),
(154, 'STP122', 'Optics and Waves', 'slt', 'nd1', 3, 'NCL1', 8, 10),
(155, 'AGT124', 'Rural Sociology', 'slt', 'nd1', 3, 'NCL1', 10, 12),
(156, 'STP121', 'ELectricity and Magnetism', 'slt', 'nd1', 3, 'NCL1', 14, 16),
(157, 'EED126', 'Introduction To Entrepreneurship', 'slt', 'nd1', 3, 'NLT1&2', 16, 18),
(158, 'PTD', 'Technical Drawing Practical', 'slt', 'nd1', 4, 'NCL1', 7, 9),
(159, 'STP122', 'Optics and Waves Practical', 'slt', 'nd1', 4, 'NCL1', 9, 11),
(160, 'STB121', 'Cell Biology Practical', 'slt', 'nd1', 4, 'NCL1', 11, 13),
(161, 'GLT', 'Preparation Of Lab. SideShelf Reagent,Seperation Techniques & Sample Management', 'slt', 'nd1', 4, 'NCL1', 14, 16),
(162, 'STC121', 'Organic Chemistry Practical', 'slt', 'nd1', 4, 'Chemistry Laboratory', 16, 18),
(163, 'STC122', 'Physical Chemistry', 'slt', 'nd1', 5, 'NCL1', 9, 11),
(164, 'PTD', 'Technical Drawing Theory', 'slt', 'nd1', 5, 'NCL1', 11, 13),
(165, 'EEP128', 'Skill Acquisition 2', 'slt', 'nd1', 5, 'EEP Venue', 16, 18),
(166, 'STP221', 'Maintenance & Repairs of Scientific & Electronic Equipment Practical', 'slt', 'nd2', 1, 'Physics Laboratory', 9, 11),
(167, 'STC1222', 'Biochemistry Practical', 'slt', 'nd2', 1, 'Chemistry Laboratory', 11, 13),
(168, 'STB221', 'Genetics Practical', 'slt', 'nd2', 1, 'NCL2', 14, 16),
(169, 'STP221', 'Maintenamce & Repairs of Scientific & Electronic Equipments', 'slt', 'nd2', 2, 'NCL2', 9, 11),
(170, 'STB221', 'Genetics', 'slt', 'nd2', 2, 'NCL2', 11, 13),
(171, 'STC221', 'Organic Chemistry 2 Practical', 'slt', 'nd2', 2, 'Chemistry laboratory', 14, 17),
(172, 'PRO', 'PROJECT', 'slt', 'nd2', 3, 'PROJECT', 8, 13),
(173, 'PRO', 'PROJECT', 'slt', 'nd2', 3, 'PROJECT', 14, 18),
(174, 'STC222', 'Biochemistry', 'slt', 'nd2', 4, 'NCL2', 9, 11),
(175, 'GNS121', 'Citizenship Education 2', 'slt', 'nd2', 4, 'NCL2', 11, 13),
(176, 'STC221', 'Organic Chemistry 2', 'slt', 'nd2', 4, 'NCL2', 14, 16),
(177, 'STB222', 'Ecology', 'slt', 'nd2', 4, 'NCL2', 16, 18),
(178, 'GLT222', 'General Laboratory Techniques, Vacuum Techniques & Module Glassblowing', 'slt', 'nd2', 6, 'NCL2', 9, 11),
(179, 'STB222', 'Ecology Practical', 'slt', 'nd2', 6, 'NCL2', 11, 13),
(180, 'EEP218', 'Skill Acquisition 4', 'slt', 'nd2', 6, 'EEP Venue', 16, 18),
(181, 'APT321', 'Livestock Farm Practice 2', 'ap', 'hnd1', 1, 'LR4', 9, 11),
(182, 'APT323', 'Sheep & Goat Production', 'ap', 'hnd1', 1, 'LR4', 11, 13),
(183, 'AGR302', 'Field Experimentation & Data Analysis', 'ap', 'hnd1', 1, 'LR4', 14, 16),
(184, 'AGR401', 'Research Methods', 'ap', 'hnd1', 1, 'LR4', 16, 18),
(185, 'APT321', 'Farm Animal Parasitology Practical', 'ap', 'hnd1', 2, 'Parasitology Laboratory', 8, 10),
(186, 'APT323', 'Sheep & Goat Production Practical', 'ap', 'hnd1', 2, 'LR4', 11, 13),
(187, 'APT324', 'Mini Livestock Production Practical', 'ap', 'hnd1', 2, 'LR4', 14, 16),
(188, 'AGR302', 'Field Experimentation & Data Analysis Practical', 'ap', 'hnd1', 2, 'Lab/Field', 16, 18),
(189, 'APT324', 'Mini Livestock Production', 'ap', 'hnd1', 3, 'LR4', 9, 11),
(190, 'APT431', 'Farm Animal Parasitology', 'ap', 'hnd1', 3, 'LR4', 11, 13),
(191, 'APT322', 'Agricultural Biochemistry', 'ap', 'hnd1', 3, 'LR4', 14, 16),
(192, 'APT322', 'Animal Nutrition', 'ap', 'hnd1', 3, 'LR4', 16, 18),
(193, 'APT321', 'Livestock Farm Practice 2 Practical', 'ap', 'hnd1', 4, 'LR4', 8, 10),
(194, 'APT322', 'Agricultural Biochemistry Practical', 'ap', 'hnd1', 4, 'Biochemistry Laboratory', 11, 13),
(195, 'AEM446', 'Rural Sociology 2', 'ap', 'hnd1', 4, 'LR4', 14, 16),
(196, 'GNS302', 'Communication In English 3', 'ap', 'hnd1', 4, 'LR4', 16, 18),
(197, 'APT322', 'Animal Nutrition Practical', 'ap', 'hnd1', 5, 'Nutrition Laboratory', 9, 11),
(198, 'EEP308', 'Skill Acquisition', 'ap', 'hnd1', 5, 'EEP VENUE', 16, 18),
(199, 'APT444', 'Animal Products Processing & Hygiene Practical', 'ah', 'hnd2', 1, 'Abattior', 8, 11),
(200, 'ANH405', 'Biosecurity', 'ah', 'hnd2', 1, 'LR2', 11, 13),
(201, 'APT443', 'Veterinary Juriprudence', 'ah', 'hnd2', 1, 'LR2', 14, 16),
(203, 'APT443', 'Veterinary Jurisprudence', 'ah', 'hnd2', 1, 'LR2', 14, 16),
(204, 'PRO', 'PROJECT', 'ah', 'hnd2', 2, 'LR2', 8, 13),
(205, 'SEM', 'SEMINAR', 'ah', 'hnd2', 2, 'LR2', 14, 18),
(206, 'ANH442', 'Clinical Techniques 2 Practical', 'ah', 'hnd2', 3, 'Veterinary Clinic', 8, 11),
(207, 'ANH441', 'Toxicology', 'ah', 'hnd2', 3, 'LR2', 11, 13),
(208, 'ANH442', 'Clinical Techniques 2 ', 'ah', 'hnd2', 3, 'LR2', 14, 16),
(209, 'APT444', 'Animal Products Processing & Hygiene', 'ah', 'hnd2', 4, 'LR2', 9, 11),
(210, 'ANH443', 'Pharmacology & Therapeutics 2', 'ah', 'hnd2', 4, 'LR2', 11, 13),
(211, 'ANH405', 'Biochemistry Practical', 'ah', 'hnd2', 4, 'Farm', 16, 18),
(212, 'ANH443', 'Pharmacology & Therapeutics 2 Practical', 'ah', 'hnd2', 6, 'LR2', 11, 13),
(213, 'EEP418', 'Skill Acquisition', 'ah', 'hnd2', 6, 'EEP Venue', 16, 18),
(214, 'APT444', 'Animal Products Processing & Hygiene Practical', 'ap', 'hnd2', 1, 'LR4', 8, 11),
(215, 'ANH405', 'Biosecurity Theory', 'ap', 'hnd2', 1, 'LR4', 11, 13),
(216, 'APT445', 'Dairy Cattle Production Practical', 'ap', 'hnd2', 1, 'Southern Farm', 14, 16),
(217, 'APT441', 'Swine Production Practical', 'ap', 'hnd2', 1, 'Southern Farm', 16, 18),
(218, 'APT442', 'Beef Cattle Production', 'ap', 'hnd2', 2, 'LR4', 9, 11),
(219, 'APT441', 'Swine Production Theory', 'ap', 'hnd2', 2, 'LR4', 11, 13),
(220, 'APT444', 'Farm Animal Disease ', 'ap', 'hnd2', 2, 'LR4', 14, 16),
(221, 'PRO', 'PROJECT', 'ap', 'hnd2', 3, 'LR4', 8, 13),
(222, 'SEM', 'SEMINAR', 'ap', 'hnd2', 3, 'LR4', 14, 18),
(223, 'APT444', 'Animal Products Processing & Hygiene', 'ap', 'hnd2', 4, 'LR4', 8, 11),
(224, 'APT444', 'Farm Animal Diseases Practical', 'ap', 'hnd2', 4, 'Farm', 11, 13),
(225, 'APT445', 'Dairy Cattle Production', 'ap', 'hnd2', 4, 'LR4', 14, 16),
(226, 'ANH405', 'Biosecurity Practical', 'ap', 'hnd2', 4, 'Farm', 16, 18),
(227, 'APT442', 'Beef Cattle Production Practical', 'ap', 'hnd2', 4, 'Southern Farm', 8, 11),
(228, 'EEP418', 'Skill Acquisition 6', 'ap', 'hnd2', 4, 'EEP Venue', 14, 16);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'Admin1', 'pass1234');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `nid` int(11) NOT NULL,
  `heading` varchar(500) NOT NULL,
  `dept` text NOT NULL,
  `level` varchar(10) NOT NULL,
  `msg_content` varchar(3000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`nid`, `heading`, `dept`, `level`, `msg_content`) VALUES
(1, 'jhjchhcac', 'comp', 'ND1', 'This is it0o inform you that your scheduled 2:00 class has been shifted to 4:00'),
(2, 'after party', 'comp', 'ND2', 'The students of the computer science department nd2 are inviting you to their after party.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`nid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
