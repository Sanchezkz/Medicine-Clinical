-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 21-Ago-2023 às 00:38
-- Versão do servidor: 5.7.40
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `Cod_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `Horario` time DEFAULT NULL,
  `Cod_medico` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_agenda`),
  KEY `Cod_medico` (`Cod_medico`)
) ENGINE=MyISAM AUTO_INCREMENT=340 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `agenda`
--

INSERT INTO `agenda` (`Cod_agenda`, `Horario`, `Cod_medico`) VALUES
(1, '06:30:00', 1),
(2, '07:45:00', 1),
(3, '15:00:00', 1),
(4, '08:00:00', 2),
(5, '10:30:00', 2),
(6, '14:45:00', 2),
(7, '09:15:00', 3),
(8, '11:30:00', 3),
(9, '18:00:00', 3),
(10, '12:00:00', 4),
(11, '13:15:00', 4),
(12, '19:30:00', 4),
(13, '10:45:00', 5),
(14, '14:00:00', 5),
(15, '21:00:00', 5),
(16, '11:15:00', 6),
(17, '17:30:00', 6),
(18, '22:30:00', 6),
(19, '12:30:00', 7),
(20, '19:00:00', 7),
(21, '23:45:00', 7),
(22, '13:00:00', 8),
(23, '20:15:00', 8),
(24, '00:00:00', 8),
(25, '15:30:00', 9),
(26, '21:45:00', 9),
(27, '00:30:00', 9),
(28, '16:00:00', 10),
(29, '22:45:00', 10),
(30, '01:00:00', 10),
(31, '08:00:00', 11),
(32, '08:30:00', 11),
(33, '09:00:00', 11),
(34, '09:30:00', 12),
(35, '10:00:00', 12),
(36, '10:30:00', 12),
(37, '11:00:00', 13),
(38, '11:30:00', 13),
(39, '12:00:00', 13),
(40, '12:30:00', 14),
(41, '13:00:00', 14),
(42, '13:30:00', 14),
(43, '14:00:00', 15),
(44, '14:30:00', 15),
(45, '15:00:00', 15),
(46, '15:30:00', 16),
(47, '16:00:00', 16),
(48, '16:30:00', 16),
(49, '17:00:00', 17),
(50, '17:30:00', 17),
(51, '18:00:00', 17),
(52, '18:30:00', 18),
(53, '19:00:00', 18),
(54, '19:30:00', 18),
(55, '20:00:00', 19),
(56, '20:30:00', 19),
(57, '21:00:00', 19),
(58, '21:30:00', 20),
(59, '22:00:00', 20),
(60, '22:30:00', 20),
(61, '08:15:00', 21),
(62, '08:45:00', 21),
(63, '09:15:00', 21),
(64, '09:45:00', 22),
(65, '10:15:00', 22),
(66, '10:45:00', 22),
(67, '11:15:00', 23),
(68, '11:45:00', 23),
(69, '12:15:00', 23),
(70, '12:45:00', 24),
(71, '13:15:00', 24),
(72, '13:45:00', 24),
(73, '14:15:00', 25),
(74, '14:45:00', 25),
(75, '15:15:00', 25),
(76, '15:45:00', 26),
(77, '16:15:00', 26),
(78, '16:45:00', 26),
(79, '17:15:00', 27),
(80, '17:45:00', 27),
(81, '18:15:00', 27),
(82, '18:45:00', 28),
(83, '19:15:00', 28),
(84, '19:45:00', 28),
(85, '20:15:00', 29),
(86, '20:45:00', 29),
(87, '21:15:00', 29),
(88, '21:45:00', 30),
(89, '22:15:00', 30),
(90, '22:45:00', 30),
(91, '08:30:00', 31),
(92, '09:00:00', 31),
(93, '09:30:00', 31),
(94, '10:00:00', 32),
(95, '10:30:00', 32),
(96, '11:00:00', 32),
(97, '11:30:00', 33),
(98, '12:00:00', 33),
(99, '12:30:00', 33),
(100, '13:00:00', 34),
(101, '13:30:00', 34),
(102, '14:00:00', 34),
(103, '14:30:00', 35),
(104, '15:00:00', 35),
(105, '15:30:00', 35),
(106, '16:00:00', 36),
(107, '16:30:00', 36),
(108, '17:00:00', 36),
(109, '17:30:00', 37),
(110, '18:00:00', 37),
(111, '18:30:00', 37),
(112, '19:00:00', 38),
(113, '19:30:00', 38),
(114, '20:00:00', 38),
(115, '20:30:00', 39),
(116, '21:00:00', 39),
(117, '21:30:00', 39),
(118, '22:00:00', 40),
(119, '22:30:00', 40),
(120, '08:45:00', 40),
(121, '09:15:00', 41),
(122, '09:45:00', 41),
(123, '10:15:00', 41),
(124, '10:45:00', 42),
(125, '11:15:00', 42),
(126, '11:45:00', 42),
(127, '12:15:00', 43),
(128, '12:45:00', 43),
(129, '13:15:00', 43),
(130, '13:45:00', 44),
(131, '14:15:00', 44),
(132, '14:45:00', 44),
(133, '15:15:00', 45),
(134, '15:45:00', 45),
(135, '16:15:00', 45),
(136, '16:45:00', 46),
(137, '17:15:00', 46),
(138, '17:45:00', 46),
(139, '18:15:00', 47),
(140, '18:45:00', 47),
(141, '19:15:00', 47),
(142, '19:45:00', 48),
(143, '20:15:00', 48),
(144, '20:45:00', 48),
(145, '21:15:00', 49),
(146, '21:45:00', 49),
(147, '22:15:00', 49),
(148, '22:45:00', 50),
(149, '08:15:00', 50),
(150, '08:45:00', 50),
(151, '09:15:00', 51),
(152, '09:45:00', 51),
(153, '10:15:00', 51),
(154, '10:45:00', 52),
(155, '11:15:00', 52),
(156, '11:45:00', 52),
(157, '12:15:00', 53),
(158, '12:45:00', 53),
(159, '13:15:00', 53),
(160, '13:45:00', 54),
(161, '14:15:00', 54),
(162, '14:45:00', 54),
(163, '15:15:00', 55),
(164, '15:45:00', 55),
(165, '16:15:00', 55),
(166, '16:45:00', 56),
(167, '17:15:00', 56),
(168, '17:45:00', 56),
(169, '18:15:00', 57),
(170, '18:45:00', 57),
(171, '19:15:00', 57),
(172, '19:45:00', 58),
(173, '20:15:00', 58),
(174, '20:45:00', 58),
(175, '21:15:00', 59),
(176, '21:45:00', 59),
(177, '22:15:00', 59),
(178, '22:45:00', 60),
(179, '08:00:00', 60),
(180, '08:30:00', 60),
(181, '09:00:00', 61),
(182, '09:30:00', 61),
(183, '10:00:00', 61),
(184, '10:30:00', 62),
(185, '11:00:00', 62),
(186, '11:30:00', 62),
(187, '12:00:00', 63),
(188, '12:30:00', 63),
(189, '13:00:00', 63),
(190, '13:30:00', 64),
(191, '14:00:00', 64),
(192, '14:30:00', 64),
(193, '15:00:00', 65),
(194, '15:30:00', 65),
(195, '16:00:00', 65),
(196, '16:30:00', 66),
(197, '17:00:00', 66),
(198, '17:30:00', 66),
(199, '18:00:00', 67),
(200, '18:30:00', 67),
(201, '19:00:00', 67),
(202, '19:30:00', 68),
(203, '20:00:00', 68),
(204, '20:30:00', 68),
(205, '21:00:00', 69),
(206, '21:30:00', 69),
(207, '22:00:00', 69),
(208, '22:30:00', 70),
(209, '08:00:00', 70),
(210, '08:30:00', 70),
(211, '09:00:00', 71),
(212, '09:30:00', 71),
(213, '10:00:00', 71),
(214, '10:30:00', 72),
(215, '11:00:00', 72),
(216, '11:30:00', 72),
(217, '12:00:00', 73),
(218, '12:30:00', 73),
(219, '13:00:00', 73),
(220, '13:30:00', 74),
(221, '14:00:00', 74),
(222, '14:30:00', 74),
(223, '15:00:00', 75),
(224, '15:30:00', 75),
(225, '16:00:00', 75),
(226, '16:30:00', 76),
(227, '17:00:00', 76),
(228, '17:30:00', 76),
(229, '18:00:00', 77),
(230, '18:30:00', 77),
(231, '19:00:00', 77),
(232, '19:30:00', 78),
(233, '20:00:00', 78),
(234, '20:30:00', 78),
(235, '21:00:00', 79),
(236, '21:30:00', 79),
(237, '22:00:00', 79),
(238, '22:30:00', 80),
(239, '08:15:00', 80),
(240, '08:45:00', 80),
(241, '09:15:00', 81),
(242, '09:45:00', 81),
(243, '10:15:00', 81),
(244, '10:45:00', 82),
(245, '11:15:00', 82),
(246, '11:45:00', 82),
(247, '12:15:00', 83),
(248, '12:45:00', 83),
(249, '13:15:00', 83),
(250, '13:45:00', 84),
(251, '14:15:00', 84),
(252, '14:45:00', 84),
(253, '15:15:00', 85),
(254, '15:45:00', 85),
(255, '16:15:00', 85),
(256, '16:45:00', 86),
(257, '17:15:00', 86),
(258, '17:45:00', 86),
(259, '18:15:00', 87),
(260, '18:45:00', 87),
(261, '19:15:00', 87),
(262, '19:45:00', 88),
(263, '20:15:00', 88),
(264, '20:45:00', 88),
(265, '21:15:00', 89),
(266, '21:45:00', 89),
(267, '22:15:00', 89),
(268, '22:45:00', 90),
(269, '08:30:00', 90),
(270, '09:00:00', 90),
(271, '09:30:00', 91),
(272, '10:00:00', 91),
(273, '10:30:00', 91),
(274, '11:00:00', 92),
(275, '11:30:00', 92),
(276, '12:00:00', 92),
(277, '12:30:00', 93),
(278, '13:00:00', 93),
(279, '13:30:00', 93),
(280, '14:00:00', 94),
(281, '14:30:00', 94),
(282, '15:00:00', 94),
(283, '15:30:00', 95),
(284, '16:00:00', 95),
(285, '16:30:00', 95),
(286, '17:00:00', 96),
(287, '17:30:00', 96),
(288, '18:00:00', 96),
(289, '18:30:00', 97),
(290, '19:00:00', 97),
(291, '19:30:00', 97),
(292, '20:00:00', 98),
(293, '20:30:00', 98),
(294, '21:00:00', 98),
(295, '21:30:00', 99),
(296, '22:00:00', 99),
(297, '22:30:00', 99),
(298, '08:00:00', 100),
(299, '08:30:00', 100),
(300, '09:00:00', 100),
(301, '09:30:00', 101),
(302, '10:00:00', 101),
(303, '10:30:00', 101),
(304, '11:00:00', 102),
(305, '11:30:00', 102),
(306, '12:00:00', 102),
(307, '12:30:00', 103),
(308, '13:00:00', 103),
(309, '13:30:00', 103),
(310, '14:00:00', 104),
(311, '14:30:00', 104),
(312, '15:00:00', 104),
(313, '15:30:00', 105),
(314, '16:00:00', 105),
(315, '16:30:00', 105),
(316, '17:00:00', 106),
(317, '17:30:00', 106),
(318, '18:00:00', 106),
(319, '18:30:00', 107),
(320, '19:00:00', 107),
(321, '19:30:00', 107),
(322, '20:00:00', 108),
(323, '20:30:00', 108),
(324, '21:00:00', 108),
(325, '21:30:00', 109),
(326, '22:00:00', 109),
(327, '22:30:00', 109),
(328, '08:15:00', 110),
(329, '08:45:00', 110),
(330, '09:15:00', 110),
(331, '09:45:00', 111),
(332, '10:15:00', 111),
(333, '10:45:00', 111),
(334, '11:15:00', 112),
(335, '11:45:00', 112),
(336, '12:15:00', 112),
(337, '12:45:00', 113),
(338, '13:15:00', 113),
(339, '13:45:00', 113);

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimento`
--

DROP TABLE IF EXISTS `atendimento`;
CREATE TABLE IF NOT EXISTS `atendimento` (
  `Cod_atendimento` int(11) NOT NULL AUTO_INCREMENT,
  `Data_atendimento` date DEFAULT NULL,
  `Cod_agenda` int(11) DEFAULT NULL,
  `Cod_espec` int(11) DEFAULT NULL,
  `Cod_medico` int(11) DEFAULT NULL,
  `Cod_paciente` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_atendimento`),
  KEY `Cod_espec` (`Cod_espec`),
  KEY `Cod_medico` (`Cod_medico`),
  KEY `Cod_agenda` (`Cod_agenda`),
  KEY `Cod_paciente` (`Cod_paciente`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

DROP TABLE IF EXISTS `cidade`;
CREATE TABLE IF NOT EXISTS `cidade` (
  `Cod_cidade` int(11) NOT NULL,
  `Nome_cidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_cidade`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`Cod_cidade`, `Nome_cidade`) VALUES
(10, 'Belo Horizonte'),
(11, 'Betim'),
(12, 'Contagem'),
(13, 'Ribeirão das Neves'),
(14, 'Sabará');

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

DROP TABLE IF EXISTS `consulta`;
CREATE TABLE IF NOT EXISTS `consulta` (
  `Cod_consulta` int(11) NOT NULL AUTO_INCREMENT,
  `Data_consulta` date DEFAULT NULL,
  `Cod_medico` int(11) DEFAULT NULL,
  `Cod_paciente` int(11) DEFAULT NULL,
  `Cod_agenda` int(11) DEFAULT NULL,
  `Cod_espec` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_consulta`),
  KEY `Cod_medico` (`Cod_medico`),
  KEY `Cod_agenda` (`Cod_agenda`),
  KEY `Cod_paciente` (`Cod_paciente`),
  KEY `Cod_espec` (`Cod_espec`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Acionadores `consulta`
--
DROP TRIGGER IF EXISTS `Tg_insere_atendimento`;
DELIMITER $$
CREATE TRIGGER `Tg_insere_atendimento` AFTER INSERT ON `consulta` FOR EACH ROW BEGIN
   INSERT INTO Atendimento (Data_atendimento, Cod_agenda, Cod_espec, Cod_medico, Cod_paciente)
   VALUES (new.Data_consulta, new.Cod_agenda, new.Cod_espec, new.Cod_medico, new.Cod_paciente);
  END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
CREATE TABLE IF NOT EXISTS `especialidades` (
  `Cod_espec` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_espec` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_espec`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `especialidades`
--

INSERT INTO `especialidades` (`Cod_espec`, `Nome_espec`) VALUES
(29, 'Anestesiologia'),
(30, 'Angiologia & Cirurgia Vascular'),
(31, 'Cardiologia'),
(32, 'Cirurgia Geral'),
(33, 'Cirurgia De Mão'),
(34, 'Cirurgia Pediátrica'),
(35, 'Clínica Médica'),
(36, 'Coloproctologia'),
(37, 'Dermatologia'),
(38, 'Endocrinologia & Metabologia'),
(39, 'Gastroenterologia'),
(40, 'Geriatria'),
(41, 'Gastroenterologia Pediátrica'),
(42, 'Ginecologia & Obstetrícia'),
(43, 'Homeopatia'),
(44, 'Infectologia'),
(45, 'Mastologia'),
(46, 'Nefrologia Pediátrica'),
(47, 'Nefrologia'),
(48, 'Neurologia'),
(49, 'Neurologia Pediátrica'),
(50, 'Ortopedia & Traumatologia'),
(51, 'Otorrinolaringologia'),
(52, 'Pediatria'),
(53, 'Pneumologia'),
(54, 'Psiquiatria'),
(55, 'Reumatologia'),
(56, 'Urologia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `medico`
--

DROP TABLE IF EXISTS `medico`;
CREATE TABLE IF NOT EXISTS `medico` (
  `Cod_medico` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_medico` varchar(60) DEFAULT NULL,
  `Cod_espec` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_medico`),
  KEY `Cod_espec` (`Cod_espec`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medico`
--

INSERT INTO `medico` (`Cod_medico`, `Nome_medico`, `Cod_espec`) VALUES
(1, 'Dr. João Silva', 29),
(2, 'Dr. Maria Santos', 30),
(3, 'Dr. Pedro Almeida', 31),
(4, 'Dr. Ana Costa', 32),
(5, 'Dr. Carlos Mendes', 33),
(6, 'Dr. Sofia Rocha', 34),
(7, 'Dr. André Oliveira', 35),
(8, 'Dr. Luiza Pereira', 36),
(9, 'Dr. Rafaela Costa', 37),
(10, 'Dr. Marcelo Santos', 38),
(11, 'Dr. Rodrigo Alves', 39),
(12, 'Dra. Carla Rodrigues', 40),
(13, 'Dr. Daniel Carvalho', 41),
(14, 'Dr. Gabriel Ferreira', 42),
(15, 'Dra. Laura Oliveira', 43),
(16, 'Dr. Tiago Martins', 44),
(17, 'Dra. Juliana Sousa', 45),
(18, 'Dr. Alexandre Costa', 46),
(19, 'Dr. Victor Rodrigues', 47),
(20, 'Dr. Gustavo Santos', 48),
(21, 'Dr. Hugo Mendonça', 49),
(22, 'Dr. Leonardo Almeida', 50),
(23, 'Dr. Lucas Ferreira', 51),
(24, 'Dr. Mateus Lima', 52),
(25, 'Dr. Ricardo Gonçalves', 53),
(26, 'Dr. André Mendes', 54),
(27, 'Dra. Camila Costa', 55),
(28, 'Dr. Henrique Oliveira', 56),
(29, 'Dr. Marcos Santos', 29),
(30, 'Dr. Fernanda Oliveira', 30),
(31, 'Dr. Eduardo Almeida', 31),
(32, 'Dra. Juliana Costa', 32),
(33, 'Dr. Gabriel Mendes', 33),
(34, 'Dra. Sofia Rocha', 34),
(35, 'Dra. Carolina Oliveira', 35),
(36, 'Dr. Luiz Pereira', 36),
(37, 'Dra. Isabela Costa', 37),
(38, 'Dr. Rafael Lima', 38),
(39, 'Dr. Gustavo Alves', 39),
(40, 'Dra. Beatriz Rodrigues', 40),
(41, 'Dr. Vinicius Carvalho', 41),
(42, 'Dra. Laura Ferreira', 42),
(43, 'Dr. Marcelo Oliveira', 43),
(44, 'Dr. Tiago Martins', 44),
(45, 'Dra. Juliana Sousa', 45),
(46, 'Dr. Alexandre Costa', 46),
(47, 'Dr. Victor Rodrigues', 47),
(48, 'Dr. Gustavo Santos', 48),
(49, 'Dr. Hugo Mendonça', 49),
(50, 'Dr. Leonardo Almeida', 50),
(51, 'Dra. Larissa Ferreira', 51),
(52, 'Dr. Mateus Lima', 52),
(53, 'Dr. Ricardo Gonçalves', 53),
(54, 'Dr. André Mendes', 54),
(55, 'Dra. Camila Costa', 55),
(56, 'Dr. Henrique Oliveira', 56),
(109, 'Dr. Mateus Lima', 52),
(108, 'Dr. Lucas Ferreira', 51),
(107, 'Dr. Leonardo Almeida', 50),
(106, 'Dr. Hugo Mendonça', 49),
(105, 'Dr. Gustavo Santos', 48),
(104, 'Dr. Victor Rodrigues', 47),
(103, 'Dr. Alexandre Costa', 46),
(102, 'Dra. Juliana Sousa', 45),
(101, 'Dr. Tiago Martins', 44),
(100, 'Dra. Isabela Oliveira', 43),
(99, 'Dr. Gabriel Ferreira', 42),
(98, 'Dr. Daniel Carvalho', 41),
(97, 'Dra. Carla Rodrigues', 40),
(96, 'Dr. Rodrigo Alves', 39),
(95, 'Dr. Marcelo Santos', 38),
(94, 'Dr. Rafaela Costa', 37),
(93, 'Dra. Laura Pereira', 36),
(92, 'Dr. André Oliveira', 35),
(91, 'Dra. Beatriz Rocha', 34),
(90, 'Dr. Carlos Mendonça', 33),
(89, 'Dra. Fernanda Costa', 32),
(88, 'Dr. Ricardo Almeida', 31),
(87, 'Dra. Carolina Santos', 30),
(86, 'Dr. Marcos Lima', 29),
(110, 'Dra. Camila Gonçalves', 53),
(111, 'Dr. André Mendes', 54),
(112, 'Dra. Luana Costa', 55),
(113, 'Dr. Henrique Oliveira', 56);

-- --------------------------------------------------------

--
-- Estrutura da tabela `paciente`
--

DROP TABLE IF EXISTS `paciente`;
CREATE TABLE IF NOT EXISTS `paciente` (
  `Cod_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_paciente` varchar(60) DEFAULT NULL,
  `Data_nascimento` date DEFAULT NULL,
  `Sexo` char(1) DEFAULT NULL,
  `RG` varchar(30) DEFAULT NULL,
  `CPF` char(14) DEFAULT NULL,
  `Telefone` char(13) DEFAULT NULL,
  `Endereco` varchar(50) DEFAULT NULL,
  `Bairro` varchar(50) DEFAULT NULL,
  `Cod_cidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_paciente`),
  KEY `Cod_cidade` (`Cod_cidade`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `Cod_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(50) DEFAULT NULL,
  `Senha` varchar(20) DEFAULT NULL,
  `Nivel` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cod_usuario`),
  UNIQUE KEY `Usuario` (`Usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`Cod_usuario`, `Usuario`, `Senha`, `Nivel`) VALUES
(1, 'Admin', '123', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
