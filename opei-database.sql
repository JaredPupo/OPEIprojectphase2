-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 01:42 AM
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
-- Database: `opei-database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1,
  `Name` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `Email`, `Password`, `Active`, `Name`, `LastName`) VALUES
(1, 'jared.pupo@upr.edu', '$2y$10$T3KV8X/kQvbdenDygNZPu.iIUB83LX0CVFdWal4wbdBPJaytmoWD.', 1, 'Jared', 'Jared'),
(2, 'admin.admin@upr.edu', '$2y$10$KNzRtUuNThqWtTjVueLb2ONJq7WLSo6aOP7YecLRDcb4NSP7TiMeq', 1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE `departamento` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`DepartmentID`, `DepartmentName`) VALUES
(1, 'CCOM'),
(2, 'ADEM'),
(3, 'COMU'),
(4, 'ENFE'),
(5, 'BIOL'),
(6, 'CISO'),
(7, 'INGL'),
(8, 'ESPA'),
(9, 'MATE'),
(10, 'HUMA');

-- --------------------------------------------------------

--
-- Table structure for table `table11a`
--

CREATE TABLE `table11a` (
  `table11aID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(8) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(10) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table11a`
--

INSERT INTO `table11a` (`table11aID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`) VALUES
(12, 1, 2024, 'CCOM3001', 'Activación', 'Aprobado', 'Una breve descripción'),
(13, 2, 2024, 'CCOM3001', 'Activación', 'Aprobado', 'Una breve descripción');

-- --------------------------------------------------------

--
-- Table structure for table `table11b`
--

CREATE TABLE `table11b` (
  `table11bID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table11b`
--

INSERT INTO `table11b` (`table11bID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`) VALUES
(17, 1, 2024, 'Valor Cambio académico', 'Valor Academico Institucional', 'Valor Cambio Academico', 'Valor Cambio Sustancial'),
(19, 2, 2024, 'Valor Cambio académico', 'Valor Academico Institucional', 'Valor Cambio Academico', 'Valor Cambio Sustancial');

-- --------------------------------------------------------

--
-- Table structure for table `table12`
--

CREATE TABLE `table12` (
  `table12ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(20) DEFAULT NULL,
  `field2` varchar(20) DEFAULT NULL,
  `field3` varchar(20) DEFAULT NULL,
  `field4` varchar(20) DEFAULT NULL,
  `field5` varchar(20) DEFAULT NULL,
  `field6` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table12`
--

INSERT INTO `table12` (`table12ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`) VALUES
(35, 1, 2024, 'option1', 'option2', 'option2', 'option3', 'option1', 'option1'),
(36, 2, 2024, 'option1', 'option1', 'option1', 'option1', 'option1', 'option1');

-- --------------------------------------------------------

--
-- Table structure for table `table13`
--

CREATE TABLE `table13` (
  `table13ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table13`
--

INSERT INTO `table13` (`table13ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`) VALUES
(31, 1, 2024, 'CCOM3002', 'Agencia que acredito el programa', '2023', '2024', '2', 'Recomendación'),
(32, 2, 2024, 'CCOM3002', 'Agencia que acredito el programa', '2023', '2024', '2', 'Recomendación');

-- --------------------------------------------------------

--
-- Table structure for table `table14a`
--

CREATE TABLE `table14a` (
  `table14aID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(8) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table14a`
--

INSERT INTO `table14a` (`table14aID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`) VALUES
(4, 2, 2024, 'Value1', 'Value1_2', 'Value1_3', 'Value1_4', 'Value1_5asdasdasd'),
(9, 1, 2024, 'CCOM4005', 'Estrategia', 'Indicador', 'Res', 'Accioque son correctivas');

-- --------------------------------------------------------

--
-- Table structure for table `table14b`
--

CREATE TABLE `table14b` (
  `table14bID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  `field6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table14b`
--

INSERT INTO `table14b` (`table14bID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`) VALUES
(21, 1, 2024, 'Un servicios', 'Indicadors', 'Instrumentos', 'Reasasultasdos que fueron sobtenidos', 'asfsagaaasf', 'asfsagef'),
(22, 2, 2024, 'Un servicio', 'Indicador', 'Instrumento', 'Resultados que fueron obtenidos ', 'Como se usaron', 'Acciones que son correctivas');

-- --------------------------------------------------------

--
-- Table structure for table `table15`
--

CREATE TABLE `table15` (
  `table15ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  `field6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table15`
--

INSERT INTO `table15` (`table15ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`) VALUES
(6, 1, 2024, '1.1 Reviewa', '1.2 Reviewa', '1.3 Reviewa', '1.4 Reviewa', '1.5 Reviewa', '1.6 Reviewa'),
(7, 2, 2024, '1.1 Review', '1.2 Review', '1.3 Review', '1.4 Review', '1.5 Review', '1.6 Review');

-- --------------------------------------------------------

--
-- Table structure for table `table21a`
--

CREATE TABLE `table21a` (
  `table21aID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  `field6` varchar(100) DEFAULT NULL,
  `field7` varchar(100) DEFAULT NULL,
  `field8` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table21a`
--

INSERT INTO `table21a` (`table21aID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`, `field7`, `field8`) VALUES
(19, 1, 2024, 'Insertar Profesord', 'Actividads', '07-05-2024', 'Si', 'Artículo Publicado Revista Arbitrada', 'No Arbitrada', 'Si', 'Entidadd'),
(21, 2, 2024, 'Insertar Profesor', 'Actividad', '11-05-2024', 'Si', 'Libro', 'Arbritada', 'Si', 'Entidad');

-- --------------------------------------------------------

--
-- Table structure for table `table21b`
--

CREATE TABLE `table21b` (
  `table21bID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  `field6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table21b`
--

INSERT INTO `table21b` (`table21bID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`) VALUES
(7, 1, 2024, 'Insertar Profesora', 'Actividads', '05-05-2024', 'Competencia', 'No', 'Lugare en particular'),
(8, 2, 2024, 'Insertar Profesor', 'Actividad', '20-05-2024', 'Bibliografías, discografía y filmografía', 'Si', 'Lugar en particular');

-- --------------------------------------------------------

--
-- Table structure for table `table22`
--

CREATE TABLE `table22` (
  `table22ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table22`
--

INSERT INTO `table22` (`table22ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`) VALUES
(7, 1, 2024, 'Titilo aquis', 'La agenciaw', 'Pendiente a aprobacion', '10001'),
(8, 2, 2024, 'Titilo aqui', 'La agencia', 'Aprobado', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `table23`
--

CREATE TABLE `table23` (
  `table23ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table23`
--

INSERT INTO `table23` (`table23ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`) VALUES
(9, 1, 2024, 'Proyecto Aquis', 'Federals', 'Pendiente a aprobacions', '10002'),
(10, 2, 2024, 'Proyecto Aqui', 'Federal', 'Pendiente a aprobacion', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `table24`
--

CREATE TABLE `table24` (
  `table24ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table24`
--

INSERT INTO `table24` (`table24ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`) VALUES
(11, 1, 2024, 'Trabajo aquia', 'Obrass', '2024-05-18', 'Insertar Profesors', '840-19-10101'),
(12, 2, 2024, 'Trabajo aqui', 'Obras', '2024-05-17', 'Insertar Profesor', '840-19-1010');

-- --------------------------------------------------------

--
-- Table structure for table `table25`
--

CREATE TABLE `table25` (
  `table25ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table25`
--

INSERT INTO `table25` (`table25ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`) VALUES
(6, 1, 2024, '2.1 Reviews', '2.2 Reviews', '2.3 Reviews', '2.4 Reviews', '2.5 Reviews'),
(7, 2, 2024, '2.1 Review', '2.2 Review', '2.3 Review', '2.4 Review', '2.5 Review');

-- --------------------------------------------------------

--
-- Table structure for table `table31`
--

CREATE TABLE `table31` (
  `table31ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table31`
--

INSERT INTO `table31` (`table31ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`) VALUES
(11, 1, 2024, 'Artísticos', '101', 'Reconocimientos descriptivosa', '10-05-2024', 'El organismos'),
(12, 2, 2024, 'Artístico', '10', 'Reconocimientos descriptivos', '11-05-2024', 'El organismo');

-- --------------------------------------------------------

--
-- Table structure for table `table32a`
--

CREATE TABLE `table32a` (
  `table32aID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table32a`
--

INSERT INTO `table32a` (`table32aID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`) VALUES
(9, 1, 2024, 'Tituloa', 'Académicas', '20-05-2024'),
(10, 2, 2024, 'Titulo', 'Académica', '21-05-2024');

-- --------------------------------------------------------

--
-- Table structure for table `table32b`
--

CREATE TABLE `table32b` (
  `table32bID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table32b`
--

INSERT INTO `table32b` (`table32bID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`) VALUES
(8, 2, 2024, 'Estudiante', 'CCOM', 'Algun lugar', '2024', 'Si', 'Comentado'),
(9, 1, 2024, 'Estudiante', 'CCOM', 'Algun lugar', '2024', 'No', 'Comentado');

-- --------------------------------------------------------

--
-- Table structure for table `table33`
--

CREATE TABLE `table33` (
  `table33ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table33`
--

INSERT INTO `table33` (`table33ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`) VALUES
(4, 1, 2024, '3.1 Reviewd', '3.2 Reviewd', '3.3 Reviewa', '3.4 Reviews', '3.5 Reviewf'),
(6, 2, 2024, '3.1 Review', '3.2 Review', '3.3 Review', '3.4 Review', '3.5 Review');

-- --------------------------------------------------------

--
-- Table structure for table `table41`
--

CREATE TABLE `table41` (
  `table41ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table41`
--

INSERT INTO `table41` (`table41ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`) VALUES
(6, 1, 2024, 'Actividads', 'No', '06-05-2024', 'Coordinador aquis', '101'),
(7, 2, 2024, 'Actividad', 'Si', '21-05-2024', 'Coordinador aqui', '10');

-- --------------------------------------------------------

--
-- Table structure for table `table42`
--

CREATE TABLE `table42` (
  `table42ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table42`
--

INSERT INTO `table42` (`table42ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`) VALUES
(7, 2, 2024, 'CCOM3020', '20', '12', '21', '10'),
(8, 1, 2024, 'CCOM4020', '201', '121', '211', '101a');

-- --------------------------------------------------------

--
-- Table structure for table `table43`
--

CREATE TABLE `table43` (
  `table43ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table43`
--

INSERT INTO `table43` (`table43ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`) VALUES
(6, 1, 2024, '4.1 Reviews', '4.2 Reviewa', '4.3 Reviewq', '4.4 Reviewe', '4.5 Reviewt'),
(7, 2, 2024, '4.1 Review', '4.2 Review', '4.3 Review', '4.4 Review', '4.5 Review');

-- --------------------------------------------------------

--
-- Table structure for table `table51`
--

CREATE TABLE `table51` (
  `table51ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  `field6` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table51`
--

INSERT INTO `table51` (`table51ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`) VALUES
(3, 1, 2024, 'Actividada', 'No', '05-05-2024', 'UPRAA', 'Rescursosa', '201'),
(4, 2, 2024, 'Actividad', 'Conferencia, foro o panel', '13-05-2024', 'UPRA', 'Rescursos', '20');

-- --------------------------------------------------------

--
-- Table structure for table `table52`
--

CREATE TABLE `table52` (
  `table52ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table52`
--

INSERT INTO `table52` (`table52ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`) VALUES
(8, 1, 2024, 'Option 2', 'Mas commentariosa', 'Mas commentariosa'),
(9, 2, 2024, 'Simposio', '2000', 'Mas commentarios');

-- --------------------------------------------------------

--
-- Table structure for table `table53`
--

CREATE TABLE `table53` (
  `table53ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  `field6` varchar(100) DEFAULT NULL,
  `field7` varchar(100) DEFAULT NULL,
  `field8` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table53`
--

INSERT INTO `table53` (`table53ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`, `field7`, `field8`) VALUES
(8, 1, 2024, '840-10-1021', 'Titulo de proyectos', 'Describirs', '2025', 'UPRM', 'Option 2', 'Comentados', 'Mas commentarsios'),
(9, 2, 2024, '840-10-1020', 'Titulo de proyecto', 'Describir', '2024', 'UPRA', 'Simposio', 'Comentado', 'Mas commentarios');

-- --------------------------------------------------------

--
-- Table structure for table `table54`
--

CREATE TABLE `table54` (
  `table54ID` int(11) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `field1` varchar(100) DEFAULT NULL,
  `field2` varchar(100) DEFAULT NULL,
  `field3` varchar(100) DEFAULT NULL,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  `field6` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table54`
--

INSERT INTO `table54` (`table54ID`, `DepartmentID`, `year`, `field1`, `field2`, `field3`, `field4`, `field5`, `field6`) VALUES
(5, 1, 2024, '5.1 Reviews', '5.2 Reviewa', '5.3 Reviewf', '5.4 Reviewh', '5.5 Reviewk', '5.6 Review;'),
(6, 2, 2024, '5.1 Review', '5.2 Review', '5.3 Review', '5.4 Review', '5.5 Review', '5.6 Review');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `UserID` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `LastName` varchar(100) DEFAULT NULL,
  `Active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`UserID`, `Email`, `Password`, `DepartmentID`, `Name`, `LastName`, `Active`) VALUES
(1, 'Daisy.upra@upr.edu', '$2y$10$qJBO8z8Q9Q8r/5lA2vNCQ.GcSERlep6ZYEDhy0Ew93Rdux5tT9k3i', 4, 'Daisy', 'UPRA', 1),
(2, 'User@upr.edu', '$2y$10$HjatgkMrOEUc.GflexDY8eP94jrr2RsOW0kcPP.xfGB7xoHxQreJC', 1, 'User', 'User', 1),
(3, 'User2@upr.edu', '$2y$10$zPIxSGgeVksskIvnq.NkjuEAi93u9H6KQhjljbkbJKBFNT7lHZCLq', 2, 'User2', 'User2', 1),
(4, 'Jared.User@upr.edu', '$2y$10$B9yOrGDrSQeG8aZj64Nq0.juzUgiUq8//jgSZA9gPB/TtFAnQzhz2', 1, 'Jared', 'Pupo', 1),
(5, 'number.user@upr.edu', '$2y$10$B3drX0a.wYzM7J2q8om74eXIXbKnbsni.wIa8kaAG3xYaC1BSyfCG', 2, 'user', 'number', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `table11a`
--
ALTER TABLE `table11a`
  ADD PRIMARY KEY (`table11aID`);

--
-- Indexes for table `table11b`
--
ALTER TABLE `table11b`
  ADD PRIMARY KEY (`table11bID`);

--
-- Indexes for table `table12`
--
ALTER TABLE `table12`
  ADD PRIMARY KEY (`table12ID`);

--
-- Indexes for table `table13`
--
ALTER TABLE `table13`
  ADD PRIMARY KEY (`table13ID`);

--
-- Indexes for table `table14a`
--
ALTER TABLE `table14a`
  ADD PRIMARY KEY (`table14aID`);

--
-- Indexes for table `table14b`
--
ALTER TABLE `table14b`
  ADD PRIMARY KEY (`table14bID`);

--
-- Indexes for table `table15`
--
ALTER TABLE `table15`
  ADD PRIMARY KEY (`table15ID`);

--
-- Indexes for table `table21a`
--
ALTER TABLE `table21a`
  ADD PRIMARY KEY (`table21aID`);

--
-- Indexes for table `table21b`
--
ALTER TABLE `table21b`
  ADD PRIMARY KEY (`table21bID`);

--
-- Indexes for table `table22`
--
ALTER TABLE `table22`
  ADD PRIMARY KEY (`table22ID`);

--
-- Indexes for table `table23`
--
ALTER TABLE `table23`
  ADD PRIMARY KEY (`table23ID`);

--
-- Indexes for table `table24`
--
ALTER TABLE `table24`
  ADD PRIMARY KEY (`table24ID`);

--
-- Indexes for table `table25`
--
ALTER TABLE `table25`
  ADD PRIMARY KEY (`table25ID`);

--
-- Indexes for table `table31`
--
ALTER TABLE `table31`
  ADD PRIMARY KEY (`table31ID`);

--
-- Indexes for table `table32a`
--
ALTER TABLE `table32a`
  ADD PRIMARY KEY (`table32aID`);

--
-- Indexes for table `table32b`
--
ALTER TABLE `table32b`
  ADD PRIMARY KEY (`table32bID`);

--
-- Indexes for table `table33`
--
ALTER TABLE `table33`
  ADD PRIMARY KEY (`table33ID`);

--
-- Indexes for table `table41`
--
ALTER TABLE `table41`
  ADD PRIMARY KEY (`table41ID`);

--
-- Indexes for table `table42`
--
ALTER TABLE `table42`
  ADD PRIMARY KEY (`table42ID`);

--
-- Indexes for table `table43`
--
ALTER TABLE `table43`
  ADD PRIMARY KEY (`table43ID`);

--
-- Indexes for table `table51`
--
ALTER TABLE `table51`
  ADD PRIMARY KEY (`table51ID`);

--
-- Indexes for table `table52`
--
ALTER TABLE `table52`
  ADD PRIMARY KEY (`table52ID`);

--
-- Indexes for table `table53`
--
ALTER TABLE `table53`
  ADD PRIMARY KEY (`table53ID`);

--
-- Indexes for table `table54`
--
ALTER TABLE `table54`
  ADD PRIMARY KEY (`table54ID`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table11a`
--
ALTER TABLE `table11a`
  MODIFY `table11aID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `table11b`
--
ALTER TABLE `table11b`
  MODIFY `table11bID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `table12`
--
ALTER TABLE `table12`
  MODIFY `table12ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `table13`
--
ALTER TABLE `table13`
  MODIFY `table13ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `table14a`
--
ALTER TABLE `table14a`
  MODIFY `table14aID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table14b`
--
ALTER TABLE `table14b`
  MODIFY `table14bID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `table15`
--
ALTER TABLE `table15`
  MODIFY `table15ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `table21a`
--
ALTER TABLE `table21a`
  MODIFY `table21aID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `table21b`
--
ALTER TABLE `table21b`
  MODIFY `table21bID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table22`
--
ALTER TABLE `table22`
  MODIFY `table22ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table23`
--
ALTER TABLE `table23`
  MODIFY `table23ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table24`
--
ALTER TABLE `table24`
  MODIFY `table24ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `table25`
--
ALTER TABLE `table25`
  MODIFY `table25ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `table31`
--
ALTER TABLE `table31`
  MODIFY `table31ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `table32a`
--
ALTER TABLE `table32a`
  MODIFY `table32aID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table32b`
--
ALTER TABLE `table32b`
  MODIFY `table32bID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table33`
--
ALTER TABLE `table33`
  MODIFY `table33ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `table41`
--
ALTER TABLE `table41`
  MODIFY `table41ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `table42`
--
ALTER TABLE `table42`
  MODIFY `table42ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table43`
--
ALTER TABLE `table43`
  MODIFY `table43ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `table51`
--
ALTER TABLE `table51`
  MODIFY `table51ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `table52`
--
ALTER TABLE `table52`
  MODIFY `table52ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table53`
--
ALTER TABLE `table53`
  MODIFY `table53ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `table54`
--
ALTER TABLE `table54`
  MODIFY `table54ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
