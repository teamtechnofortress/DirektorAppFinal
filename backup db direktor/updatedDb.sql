-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 01, 2023 at 10:07 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `anares_actividad`
--

CREATE TABLE `anares_actividad` (
  `codAnaResActividad` bigint(20) NOT NULL,
  `desActividad` varchar(255) DEFAULT NULL,
  `desRestriccion` varchar(255) DEFAULT NULL,
  `codTipoRestriccion` int(11) DEFAULT NULL,
  `dayFechaRequerida` datetime DEFAULT NULL,
  `idUsuarioResponsable` bigint(20) DEFAULT NULL,
  `desAreaResponsable` char(18) DEFAULT NULL,
  `codEstadoActividad` char(18) DEFAULT NULL,
  `codUsuarioSolicitante` char(18) DEFAULT NULL,
  `codAnaResFase` bigint(20) DEFAULT NULL,
  `codAnaResFrente` bigint(20) DEFAULT NULL,
  `codProyecto` bigint(20) DEFAULT NULL,
  `codAnaRes` bigint(20) DEFAULT NULL,
  `dayFechaConciliada` datetime DEFAULT NULL,
  `dayFechaLevantamiento` datetime DEFAULT NULL,
  `numOrden` decimal(10,5) DEFAULT '0.00000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `anares_actividad`
--

INSERT INTO `anares_actividad` (`codAnaResActividad`, `desActividad`, `desRestriccion`, `codTipoRestriccion`, `dayFechaRequerida`, `idUsuarioResponsable`, `desAreaResponsable`, `codEstadoActividad`, `codUsuarioSolicitante`, `codAnaResFase`, `codAnaResFrente`, `codProyecto`, `codAnaRes`, `dayFechaConciliada`, `dayFechaLevantamiento`, `numOrden`) VALUES
(40, '', 'nada', NULL, '2023-02-16 15:10:15', 5, NULL, '3', '9', 1, 1, 1, 57, NULL, NULL, '0.00000'),
(84, 'Actividad 1', 'Prueba', 2, '2020-01-01 00:00:00', 5, NULL, '5', NULL, NULL, NULL, NULL, NULL, '2020-10-15 00:00:00', NULL, '0.00000'),
(85, 'Actividad 1', 'Prueba', 2, '2020-01-01 00:00:00', 5, NULL, '5', NULL, NULL, NULL, NULL, NULL, '2020-10-15 00:00:00', NULL, '0.00000'),
(86, 'Actividad 1', 'Prueba', 2, '2020-01-01 00:00:00', 6, NULL, '5', NULL, NULL, NULL, NULL, NULL, '2020-10-15 00:00:00', NULL, '0.00000'),
(87, 'Actividad 1', 'Prueba', 2, '2020-01-01 00:00:00', 5, NULL, '5', NULL, NULL, NULL, NULL, NULL, '2020-10-15 00:00:00', NULL, '0.00000'),
(88, 'Actividad 1', 'Prueba', 2, '2020-01-01 00:00:00', 5, NULL, '5', NULL, NULL, NULL, NULL, NULL, '2020-10-15 00:00:00', NULL, '0.00000'),
(89, 'Actividad 1', 'Prueba', 2, '2020-01-01 00:00:00', 6, NULL, '5', NULL, NULL, NULL, NULL, NULL, '2020-10-15 00:00:00', NULL, '0.00000'),
(90, 'Actividad 1', 'Prueba', 2, '2020-01-01 00:00:00', 5, NULL, '5', NULL, NULL, NULL, NULL, NULL, '2020-10-15 00:00:00', NULL, '0.00000'),
(91, 'Actividad 1', 'Prueba', 2, '2020-01-01 00:00:00', 5, NULL, '5', NULL, NULL, NULL, NULL, NULL, '2020-10-15 00:00:00', NULL, '0.00000'),
(92, 'Actividad 1', 'Prueba', 2, '2020-01-01 00:00:00', 6, NULL, '5', NULL, NULL, NULL, NULL, NULL, '2020-10-15 00:00:00', NULL, '0.00000');

-- --------------------------------------------------------

--
-- Table structure for table `anares_analisisrestricciones`
--

CREATE TABLE `anares_analisisrestricciones` (
  `codProyecto` bigint(20) NOT NULL,
  `codEstado` int(11) DEFAULT NULL,
  `dayFechaCreacion` datetime DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) DEFAULT NULL,
  `indNoRetrasados` int(11) DEFAULT NULL,
  `indRetrasados` int(11) DEFAULT NULL,
  `codAnaRes` bigint(20) NOT NULL,
  `desColOcultas` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `anares_analisisrestricciones`
--

INSERT INTO `anares_analisisrestricciones` (`codProyecto`, `codEstado`, `dayFechaCreacion`, `desUsuarioCreacion`, `indNoRetrasados`, `indRetrasados`, `codAnaRes`, `desColOcultas`) VALUES
(1, 0, '2023-02-11 10:19:38', 'diego@gmail.com', 0, 0, 57, ' '),
(2, 0, '2023-02-23 13:02:58', 'diego@gmail.com', 0, 0, 58, NULL),
(3, 0, '2023-02-23 15:10:36', 'diego@gmail.com', 0, 0, 59, NULL),
(4, 0, '2023-02-23 20:19:05', 'diego@gmail.com', 0, 0, 60, NULL),
(6, 0, '2023-02-24 03:59:01', 'diego@gmail.com', 0, 0, 61, NULL),
(7, 0, '2023-02-24 04:23:39', 'diego@gmail.com', 0, 0, 62, NULL),
(8, 0, '2023-02-28 11:08:20', 'peter@p.com', 0, 0, 63, NULL),
(9, 0, '2023-02-28 17:38:09', 'peter@p.com', 0, 0, 64, NULL),
(10, 0, '2023-03-01 10:57:00', 'peter@p.com', 0, 0, 65, NULL),
(11, 0, '2023-03-01 11:51:31', 'peter@p.com', 0, 0, 66, NULL),
(12, 0, '2023-03-01 11:54:29', 'peter@p.com', 0, 0, 67, NULL),
(13, 0, '2023-03-01 13:10:01', 'peter@p.com', 0, 0, 68, NULL),
(14, 0, '2023-03-01 13:11:26', 'peter@p.com', 0, 0, 69, NULL),
(15, 0, '2023-03-01 13:13:24', 'peter@p.com', 0, 0, 70, NULL),
(16, 0, '2023-03-01 13:17:16', 'peter@p.com', 0, 0, 71, NULL),
(17, 0, '2023-03-01 13:19:30', 'peter@p.com', 0, 0, 72, NULL),
(18, 0, '2023-03-01 13:20:13', 'peter@p.com', 0, 0, 73, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anares_analisis_tiporestricciones`
--

CREATE TABLE `anares_analisis_tiporestricciones` (
  `codAnalisisTipoRestricciones` bigint(20) NOT NULL,
  `codAnaRes` bigint(20) NOT NULL,
  `desTipoRestricciones` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `anares_fase`
--

CREATE TABLE `anares_fase` (
  `codAnaResFase` bigint(20) NOT NULL,
  `desAnaResFase` varchar(255) DEFAULT NULL,
  `dayFechaCreacion` datetime DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) DEFAULT NULL,
  `codAnaResFrente` bigint(20) DEFAULT NULL,
  `codProyecto` bigint(20) DEFAULT NULL,
  `codAnaRes` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `anares_fase`
--

INSERT INTO `anares_fase` (`codAnaResFase`, `desAnaResFase`, `dayFechaCreacion`, `desUsuarioCreacion`, `codAnaResFrente`, `codProyecto`, `codAnaRes`) VALUES
(1, 'fase 003', '2023-02-11 13:59:24', '', 1, 1, 57),
(4, 'FASE 0093', '2023-02-23 20:44:57', '', 3, 1, 57),
(8, 'FS NUMERO 2', '2023-02-26 10:41:14', '', 4, 7, 62),
(57, 'fase 001', NULL, NULL, NULL, NULL, NULL),
(58, 'fase 001', NULL, NULL, NULL, NULL, NULL),
(59, 'fase 002', NULL, NULL, NULL, NULL, NULL),
(60, 'fase 001', NULL, NULL, NULL, NULL, NULL),
(61, 'fase 001', NULL, NULL, NULL, NULL, NULL),
(62, 'fase 002', NULL, NULL, NULL, NULL, NULL),
(63, 'fase 001', NULL, NULL, NULL, NULL, NULL),
(64, 'fase 001', NULL, NULL, NULL, NULL, NULL),
(65, 'fase 002', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anares_frente`
--

CREATE TABLE `anares_frente` (
  `codAnaResFrente` bigint(20) NOT NULL,
  `desAnaResFrente` varchar(255) DEFAULT NULL,
  `dayFechaCreacion` datetime DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) DEFAULT NULL,
  `codProyecto` bigint(20) DEFAULT NULL,
  `codAnaRes` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `anares_frente`
--

INSERT INTO `anares_frente` (`codAnaResFrente`, `desAnaResFrente`, `dayFechaCreacion`, `desUsuarioCreacion`, `codProyecto`, `codAnaRes`) VALUES
(1, 'frente 001', '2023-02-11 13:59:15', '', 1, 57),
(3, 'FRENTE 002', '2023-02-23 20:44:46', '', 1, 57),
(4, 'FR NUMERO 1', '2023-02-26 10:25:40', '', 7, 62),
(54, 'frente 001', NULL, NULL, NULL, NULL),
(55, 'frente 001', NULL, NULL, NULL, NULL),
(56, 'frente 001', NULL, NULL, NULL, NULL),
(57, 'frente 001', NULL, NULL, NULL, NULL),
(58, 'frente 001', NULL, NULL, NULL, NULL),
(59, 'frente 001', NULL, NULL, NULL, NULL),
(60, 'frente 001', NULL, NULL, NULL, NULL),
(61, 'frente 001', NULL, NULL, NULL, NULL),
(62, 'frente 001', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `anares_tiporestricciones`
--

CREATE TABLE `anares_tiporestricciones` (
  `codTipoRestricciones` bigint(20) NOT NULL,
  `desTipoRestricciones` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anares_tiporestricciones`
--

INSERT INTO `anares_tiporestricciones` (`codTipoRestricciones`, `desTipoRestricciones`) VALUES
(1, 'Proceso Constructivo'),
(2, 'Entorno'),
(3, 'Información'),
(4, 'Mano de Obra'),
(5, 'Materiales'),
(6, 'Equipos y Herramientas'),
(7, 'SubContratos'),
(8, 'Seguridad'),
(9, 'Calidad'),
(10, 'Administración'),
(11, 'Cliente y Supervisión'),
(12, 'Logistica');

-- --------------------------------------------------------

--
-- Table structure for table `ana_integrantes`
--

CREATE TABLE `ana_integrantes` (
  `codProyecto` bigint(20) NOT NULL,
  `codAnaRes` bigint(20) NOT NULL,
  `codEstado` int(11) DEFAULT NULL,
  `dayFechaCreacion` datetime DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) DEFAULT NULL,
  `codProyIntegrante` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ana_integrantes`
--

INSERT INTO `ana_integrantes` (`codProyecto`, `codAnaRes`, `codEstado`, `dayFechaCreacion`, `desUsuarioCreacion`, `codProyIntegrante`) VALUES
(1, 57, 1, '2023-02-22 11:45:24', '', 5),
(1, 57, 1, '2023-02-22 11:45:24', '', 6),
(9, 64, 1, '2023-03-01 09:35:44', '', 20),
(9, 64, 1, '2023-03-01 09:35:44', '', 21);

-- --------------------------------------------------------

--
-- Table structure for table `conf_colacorreos`
--

CREATE TABLE `conf_colacorreos` (
  `codColaCorreo` bigint(20) NOT NULL,
  `desMensaje` varchar(100) DEFAULT NULL,
  `dayFechaRegistro` datetime DEFAULT NULL,
  `dayFechaEnvio` datetime DEFAULT NULL,
  `numEstado` int(11) DEFAULT '0',
  `codUsuarioRegistro` bigint(20) DEFAULT NULL,
  `desCorreoEnvio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `conf_estado`
--

CREATE TABLE `conf_estado` (
  `codEstado` int(11) NOT NULL,
  `desEstado` varchar(100) NOT NULL,
  `desModulo` varchar(100) NOT NULL,
  `desDescripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conf_estado`
--

INSERT INTO `conf_estado` (`codEstado`, `desEstado`, `desModulo`, `desDescripcion`) VALUES
(1, 'Pendiente', 'ANARES', 'Estado de las actividad es o restricciones, este estado es el estao inicial con el cual se crea.'),
(2, 'Proceso', 'ANARES', 'Estado de las actividad es o restricciones, este estado  indica que se esta completando la actividad'),
(3, 'Completado', 'ANARES', 'Estado de las actividad es o restricciones, este estado indica que fue cerrado la actividad'),
(0, 'Abierto', 'ANAPROY', 'Estado perteneciente al proyecto de analisis de restricciones , indica que es un proyecto trabajandose.'),
(1, 'Cerrado', 'ANAPROY', 'Estado perteneciente al proyecto de analisis de restricciones , indica que es un proyecto finalizado');

-- --------------------------------------------------------

--
-- Table structure for table `conf_maestro_empresas`
--

CREATE TABLE `conf_maestro_empresas` (
  `cod_Empresa` bigint(20) NOT NULL,
  `des_Empresa` varchar(250) DEFAULT NULL,
  `num_Ruc` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conf_maestro_empresas`
--

INSERT INTO `conf_maestro_empresas` (`cod_Empresa`, `des_Empresa`, `num_Ruc`) VALUES
(1, 'SODIMAC', 7845451121),
(2, 'CANTABRIA', 788415151),
(3, 'NUEVAEMPRESA', 787984141),
(4, 'CORNELIA', 8494151),
(5, 'SOLGAS', 984545451),
(6, 'GLORIA', 978545),
(7, 'SAMAS', 98471545),
(8, 'CONSTRUCTORAX', 9784515),
(9, 'ENTEL', 5545454),
(10, 'AVIANCA', 2121545),
(11, 'NADAAAAAA', 1545454),
(12, 'PRUEBA001', 45454);

-- --------------------------------------------------------

--
-- Table structure for table `conf_moneda`
--

CREATE TABLE `conf_moneda` (
  `codMoneda` bigint(20) NOT NULL,
  `desMoneda` varchar(100) DEFAULT NULL,
  `desSimbolo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conf_moneda`
--

INSERT INTO `conf_moneda` (`codMoneda`, `desMoneda`, `desSimbolo`) VALUES
(1, 'Soles', 'S/'),
(2, 'Dolares', '$'),
(3, 'Euros', '€');

-- --------------------------------------------------------

--
-- Table structure for table `conf_tipodiaprogramacion`
--

CREATE TABLE `conf_tipodiaprogramacion` (
  `codTipoDiaProgramacion` bigint(20) NOT NULL,
  `desTipoDiaProgramacion` varchar(250) DEFAULT NULL,
  `desNombreCorto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conf_tipodiaprogramacion`
--

INSERT INTO `conf_tipodiaprogramacion` (`codTipoDiaProgramacion`, `desTipoDiaProgramacion`, `desNombreCorto`) VALUES
(1, 'Lunea a Viernes', 'LV'),
(2, 'Lunes a Sabado', 'LS'),
(3, 'Lunes a Domingo', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `conf_ubigeo`
--

CREATE TABLE `conf_ubigeo` (
  `codUbigeo` int(11) UNSIGNED NOT NULL,
  `desUbigeo` varchar(255) DEFAULT NULL,
  `Departamento` varchar(255) DEFAULT NULL,
  `Provincia` varchar(255) DEFAULT NULL,
  `Distrito` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `conf_ubigeo`
--

INSERT INTO `conf_ubigeo` (`codUbigeo`, `desUbigeo`, `Departamento`, `Provincia`, `Distrito`) VALUES
(1, 'Chachapoyas , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Chachapoyas'),
(2, 'Asuncion , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Asuncion'),
(3, 'Balsas , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Balsas'),
(4, 'Cheto , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Cheto'),
(5, 'Chiliquin , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Chiliquin'),
(6, 'Chuquibamba , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Chuquibamba'),
(7, 'Granada , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Granada'),
(8, 'Huancas , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Huancas'),
(9, 'La Jalca , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'La Jalca'),
(10, 'Leimebamba , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Leimebamba'),
(11, 'Levanto , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Levanto'),
(12, 'Magdalena , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Magdalena'),
(13, 'Mariscal Castilla , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Mariscal Castilla'),
(14, 'Molinopampa , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Molinopampa'),
(15, 'Montevideo , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Montevideo'),
(16, 'Olleros , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Olleros'),
(17, 'Quinjalca , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Quinjalca'),
(18, 'San Francisco de Daguas , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'San Francisco de Daguas'),
(19, 'San Isidro de Maino , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'San Isidro de Maino'),
(20, 'Soloco , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Soloco'),
(21, 'Sonche , Chachapoyas , Amazonas', 'Amazonas', 'Chachapoyas', 'Sonche'),
(22, 'Bagua , Bagua , Amazonas', 'Amazonas', 'Bagua', 'Bagua'),
(23, 'Aramango , Bagua , Amazonas', 'Amazonas', 'Bagua', 'Aramango'),
(24, 'Copallin , Bagua , Amazonas', 'Amazonas', 'Bagua', 'Copallin'),
(25, 'El Parco , Bagua , Amazonas', 'Amazonas', 'Bagua', 'El Parco'),
(26, 'Imaza , Bagua , Amazonas', 'Amazonas', 'Bagua', 'Imaza'),
(27, 'La Peca , Bagua , Amazonas', 'Amazonas', 'Bagua', 'La Peca'),
(28, 'Jumbilla , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Jumbilla'),
(29, 'Chisquilla , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Chisquilla'),
(30, 'Churuja , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Churuja'),
(31, 'Corosha , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Corosha'),
(32, 'Cuispes , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Cuispes'),
(33, 'Florida , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Florida'),
(34, 'Jazan , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Jazan'),
(35, 'Recta , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Recta'),
(36, 'San Carlos , Bongara , Amazonas', 'Amazonas', 'Bongara', 'San Carlos'),
(37, 'Shipasbamba , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Shipasbamba'),
(38, 'Valera , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Valera'),
(39, 'Yambrasbamba , Bongara , Amazonas', 'Amazonas', 'Bongara', 'Yambrasbamba'),
(40, 'Nieva , Condorcanqui , Amazonas', 'Amazonas', 'Condorcanqui', 'Nieva'),
(41, 'El Cenepa , Condorcanqui , Amazonas', 'Amazonas', 'Condorcanqui', 'El Cenepa'),
(42, 'Rio Santiago , Condorcanqui , Amazonas', 'Amazonas', 'Condorcanqui', 'Rio Santiago'),
(43, 'Lamud , Luya , Amazonas', 'Amazonas', 'Luya', 'Lamud'),
(44, 'Camporredondo , Luya , Amazonas', 'Amazonas', 'Luya', 'Camporredondo'),
(45, 'Cocabamba , Luya , Amazonas', 'Amazonas', 'Luya', 'Cocabamba'),
(46, 'Colcamar , Luya , Amazonas', 'Amazonas', 'Luya', 'Colcamar'),
(47, 'Conila , Luya , Amazonas', 'Amazonas', 'Luya', 'Conila'),
(48, 'Inguilpata , Luya , Amazonas', 'Amazonas', 'Luya', 'Inguilpata'),
(49, 'Longuita , Luya , Amazonas', 'Amazonas', 'Luya', 'Longuita'),
(50, 'Lonya Chico , Luya , Amazonas', 'Amazonas', 'Luya', 'Lonya Chico'),
(51, 'Luya , Luya , Amazonas', 'Amazonas', 'Luya', 'Luya'),
(52, 'Luya Viejo , Luya , Amazonas', 'Amazonas', 'Luya', 'Luya Viejo'),
(53, 'Maria , Luya , Amazonas', 'Amazonas', 'Luya', 'Maria'),
(54, 'Ocalli , Luya , Amazonas', 'Amazonas', 'Luya', 'Ocalli'),
(55, 'Ocumal , Luya , Amazonas', 'Amazonas', 'Luya', 'Ocumal'),
(56, 'Pisuquia , Luya , Amazonas', 'Amazonas', 'Luya', 'Pisuquia'),
(57, 'Providencia , Luya , Amazonas', 'Amazonas', 'Luya', 'Providencia'),
(58, 'San Cristobal , Luya , Amazonas', 'Amazonas', 'Luya', 'San Cristobal'),
(59, 'San Francisco del Yeso , Luya , Amazonas', 'Amazonas', 'Luya', 'San Francisco del Yeso'),
(60, 'San Jeronimo , Luya , Amazonas', 'Amazonas', 'Luya', 'San Jeronimo'),
(61, 'San Juan de Lopecancha , Luya , Amazonas', 'Amazonas', 'Luya', 'San Juan de Lopecancha'),
(62, 'Santa Catalina , Luya , Amazonas', 'Amazonas', 'Luya', 'Santa Catalina'),
(63, 'Santo Tomas , Luya , Amazonas', 'Amazonas', 'Luya', 'Santo Tomas'),
(64, 'Tingo , Luya , Amazonas', 'Amazonas', 'Luya', 'Tingo'),
(65, 'Trita , Luya , Amazonas', 'Amazonas', 'Luya', 'Trita'),
(66, 'San Nicolas , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'San Nicolas'),
(67, 'Chirimoto , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Chirimoto'),
(68, 'Cochamal , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Cochamal'),
(69, 'Huambo , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Huambo'),
(70, 'Limabamba , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Limabamba'),
(71, 'Longar , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Longar'),
(72, 'Mariscal Benavides , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Mariscal Benavides'),
(73, 'Milpuc , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Milpuc'),
(74, 'Omia , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Omia'),
(75, 'Santa Rosa , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Santa Rosa'),
(76, 'Totora , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Totora'),
(77, 'Vista Alegre , Rodriguez de Mendoza , Amazonas', 'Amazonas', 'Rodriguez de Mendoza', 'Vista Alegre'),
(78, 'Bagua Grande , Utcubamba , Amazonas', 'Amazonas', 'Utcubamba', 'Bagua Grande'),
(79, 'Cajaruro , Utcubamba , Amazonas', 'Amazonas', 'Utcubamba', 'Cajaruro'),
(80, 'Cumba , Utcubamba , Amazonas', 'Amazonas', 'Utcubamba', 'Cumba'),
(81, 'El Milagro , Utcubamba , Amazonas', 'Amazonas', 'Utcubamba', 'El Milagro'),
(82, 'Jamalca , Utcubamba , Amazonas', 'Amazonas', 'Utcubamba', 'Jamalca'),
(83, 'Lonya Grande , Utcubamba , Amazonas', 'Amazonas', 'Utcubamba', 'Lonya Grande'),
(84, 'Yamon , Utcubamba , Amazonas', 'Amazonas', 'Utcubamba', 'Yamon'),
(85, 'Huaraz , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Huaraz'),
(86, 'Cochabamba , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Cochabamba'),
(87, 'Colcabamba , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Colcabamba'),
(88, 'Huanchay , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Huanchay'),
(89, 'Independencia , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Independencia'),
(90, 'Jangas , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Jangas'),
(91, 'La Libertad , Huaraz , Ancash', 'Ancash', 'Huaraz', 'La Libertad'),
(92, 'Olleros , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Olleros'),
(93, 'Pampas , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Pampas'),
(94, 'Pariacoto , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Pariacoto'),
(95, 'Pira , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Pira'),
(96, 'Tarica , Huaraz , Ancash', 'Ancash', 'Huaraz', 'Tarica'),
(97, 'Aija , Aija , Ancash', 'Ancash', 'Aija', 'Aija'),
(98, 'Coris , Aija , Ancash', 'Ancash', 'Aija', 'Coris'),
(99, 'Huacllan , Aija , Ancash', 'Ancash', 'Aija', 'Huacllan'),
(100, 'La Merced , Aija , Ancash', 'Ancash', 'Aija', 'La Merced'),
(101, 'Succha , Aija , Ancash', 'Ancash', 'Aija', 'Succha'),
(102, 'Llamellin , Antonio Raymondi , Ancash', 'Ancash', 'Antonio Raymondi', 'Llamellin'),
(103, 'Aczo , Antonio Raymondi , Ancash', 'Ancash', 'Antonio Raymondi', 'Aczo'),
(104, 'Chaccho , Antonio Raymondi , Ancash', 'Ancash', 'Antonio Raymondi', 'Chaccho'),
(105, 'Chingas , Antonio Raymondi , Ancash', 'Ancash', 'Antonio Raymondi', 'Chingas'),
(106, 'Mirgas , Antonio Raymondi , Ancash', 'Ancash', 'Antonio Raymondi', 'Mirgas'),
(107, 'San Juan de Rontoy , Antonio Raymondi , Ancash', 'Ancash', 'Antonio Raymondi', 'San Juan de Rontoy'),
(108, 'Chacas , Asuncion , Ancash', 'Ancash', 'Asuncion', 'Chacas'),
(109, 'Acochaca , Asuncion , Ancash', 'Ancash', 'Asuncion', 'Acochaca'),
(110, 'Chiquian , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Chiquian'),
(111, 'Abelardo Pardo Lezameta , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Abelardo Pardo Lezameta'),
(112, 'Antonio Raymondi , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Antonio Raymondi'),
(113, 'Aquia , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Aquia'),
(114, 'Cajacay , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Cajacay'),
(115, 'Canis , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Canis'),
(116, 'Colquioc , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Colquioc'),
(117, 'Huallanca , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Huallanca'),
(118, 'Huasta , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Huasta'),
(119, 'Huayllacayan , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Huayllacayan'),
(120, 'La Primavera , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'La Primavera'),
(121, 'Mangas , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Mangas'),
(122, 'Pacllon , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Pacllon'),
(123, 'San Miguel de Corpanqui , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'San Miguel de Corpanqui'),
(124, 'Ticllos , Bolognesi , Ancash', 'Ancash', 'Bolognesi', 'Ticllos'),
(125, 'Carhuaz , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'Carhuaz'),
(126, 'Acopampa , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'Acopampa'),
(127, 'Amashca , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'Amashca'),
(128, 'Anta , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'Anta'),
(129, 'Ataquero , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'Ataquero'),
(130, 'Marcara , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'Marcara'),
(131, 'Pariahuanca , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'Pariahuanca'),
(132, 'San Miguel de Aco , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'San Miguel de Aco'),
(133, 'Shilla , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'Shilla'),
(134, 'Tinco , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'Tinco'),
(135, 'Yungar , Carhuaz , Ancash', 'Ancash', 'Carhuaz', 'Yungar'),
(136, 'San Luis , Carlos Fermin Fitzca , Ancash', 'Ancash', 'Carlos Fermin Fitzca', 'San Luis'),
(137, 'San Nicolas , Carlos Fermin Fitzca , Ancash', 'Ancash', 'Carlos Fermin Fitzca', 'San Nicolas'),
(138, 'Yauya , Carlos Fermin Fitzca , Ancash', 'Ancash', 'Carlos Fermin Fitzca', 'Yauya'),
(139, 'Casma , Casma , Ancash', 'Ancash', 'Casma', 'Casma'),
(140, 'Buena Vista Alta , Casma , Ancash', 'Ancash', 'Casma', 'Buena Vista Alta'),
(141, 'Comandante Noel , Casma , Ancash', 'Ancash', 'Casma', 'Comandante Noel'),
(142, 'Yautan , Casma , Ancash', 'Ancash', 'Casma', 'Yautan'),
(143, 'Corongo , Corongo , Ancash', 'Ancash', 'Corongo', 'Corongo'),
(144, 'Aco , Corongo , Ancash', 'Ancash', 'Corongo', 'Aco'),
(145, 'Bambas , Corongo , Ancash', 'Ancash', 'Corongo', 'Bambas'),
(146, 'Cusca , Corongo , Ancash', 'Ancash', 'Corongo', 'Cusca'),
(147, 'La Pampa , Corongo , Ancash', 'Ancash', 'Corongo', 'La Pampa'),
(148, 'Yanac , Corongo , Ancash', 'Ancash', 'Corongo', 'Yanac'),
(149, 'Yupan , Corongo , Ancash', 'Ancash', 'Corongo', 'Yupan'),
(150, 'Huari , Huari , Ancash', 'Ancash', 'Huari', 'Huari'),
(151, 'Anra , Huari , Ancash', 'Ancash', 'Huari', 'Anra'),
(152, 'Cajay , Huari , Ancash', 'Ancash', 'Huari', 'Cajay'),
(153, 'Chavin de Huantar , Huari , Ancash', 'Ancash', 'Huari', 'Chavin de Huantar'),
(154, 'Huacachi , Huari , Ancash', 'Ancash', 'Huari', 'Huacachi'),
(155, 'Huacchis , Huari , Ancash', 'Ancash', 'Huari', 'Huacchis'),
(156, 'Huachis , Huari , Ancash', 'Ancash', 'Huari', 'Huachis'),
(157, 'Huantar , Huari , Ancash', 'Ancash', 'Huari', 'Huantar'),
(158, 'Masin , Huari , Ancash', 'Ancash', 'Huari', 'Masin'),
(159, 'Paucas , Huari , Ancash', 'Ancash', 'Huari', 'Paucas'),
(160, 'Ponto , Huari , Ancash', 'Ancash', 'Huari', 'Ponto'),
(161, 'Rahuapampa , Huari , Ancash', 'Ancash', 'Huari', 'Rahuapampa'),
(162, 'Rapayan , Huari , Ancash', 'Ancash', 'Huari', 'Rapayan'),
(163, 'San Marcos , Huari , Ancash', 'Ancash', 'Huari', 'San Marcos'),
(164, 'San Pedro de Chana , Huari , Ancash', 'Ancash', 'Huari', 'San Pedro de Chana'),
(165, 'Uco , Huari , Ancash', 'Ancash', 'Huari', 'Uco'),
(166, 'Huarmey , Huarmey , Ancash', 'Ancash', 'Huarmey', 'Huarmey'),
(167, 'Cochapeti , Huarmey , Ancash', 'Ancash', 'Huarmey', 'Cochapeti'),
(168, 'Culebras , Huarmey , Ancash', 'Ancash', 'Huarmey', 'Culebras'),
(169, 'Huayan , Huarmey , Ancash', 'Ancash', 'Huarmey', 'Huayan'),
(170, 'Malvas , Huarmey , Ancash', 'Ancash', 'Huarmey', 'Malvas'),
(171, 'Caraz , Huaylas , Ancash', 'Ancash', 'Huaylas', 'Caraz'),
(172, 'Huallanca , Huaylas , Ancash', 'Ancash', 'Huaylas', 'Huallanca'),
(173, 'Huata , Huaylas , Ancash', 'Ancash', 'Huaylas', 'Huata'),
(174, 'Huaylas , Huaylas , Ancash', 'Ancash', 'Huaylas', 'Huaylas'),
(175, 'Mato , Huaylas , Ancash', 'Ancash', 'Huaylas', 'Mato'),
(176, 'Pamparomas , Huaylas , Ancash', 'Ancash', 'Huaylas', 'Pamparomas'),
(177, 'Pueblo Libre , Huaylas , Ancash', 'Ancash', 'Huaylas', 'Pueblo Libre'),
(178, 'Santa Cruz , Huaylas , Ancash', 'Ancash', 'Huaylas', 'Santa Cruz'),
(179, 'Santo Toribio , Huaylas , Ancash', 'Ancash', 'Huaylas', 'Santo Toribio'),
(180, 'Yuracmarca , Huaylas , Ancash', 'Ancash', 'Huaylas', 'Yuracmarca'),
(181, 'Piscobamba , Mariscal Luzuriaga , Ancash', 'Ancash', 'Mariscal Luzuriaga', 'Piscobamba'),
(182, 'Casca , Mariscal Luzuriaga , Ancash', 'Ancash', 'Mariscal Luzuriaga', 'Casca'),
(183, 'Eleazar Guzman Barron , Mariscal Luzuriaga , Ancash', 'Ancash', 'Mariscal Luzuriaga', 'Eleazar Guzman Barron'),
(184, 'Fidel Olivas Escudero , Mariscal Luzuriaga , Ancash', 'Ancash', 'Mariscal Luzuriaga', 'Fidel Olivas Escudero'),
(185, 'Llama , Mariscal Luzuriaga , Ancash', 'Ancash', 'Mariscal Luzuriaga', 'Llama'),
(186, 'Llumpa , Mariscal Luzuriaga , Ancash', 'Ancash', 'Mariscal Luzuriaga', 'Llumpa'),
(187, 'Lucma , Mariscal Luzuriaga , Ancash', 'Ancash', 'Mariscal Luzuriaga', 'Lucma'),
(188, 'Musga , Mariscal Luzuriaga , Ancash', 'Ancash', 'Mariscal Luzuriaga', 'Musga'),
(189, 'Ocros , Ocros , Ancash', 'Ancash', 'Ocros', 'Ocros'),
(190, 'Acas , Ocros , Ancash', 'Ancash', 'Ocros', 'Acas'),
(191, 'Cajamarquilla , Ocros , Ancash', 'Ancash', 'Ocros', 'Cajamarquilla'),
(192, 'Carhuapampa , Ocros , Ancash', 'Ancash', 'Ocros', 'Carhuapampa'),
(193, 'Cochas , Ocros , Ancash', 'Ancash', 'Ocros', 'Cochas'),
(194, 'Congas , Ocros , Ancash', 'Ancash', 'Ocros', 'Congas'),
(195, 'Llipa , Ocros , Ancash', 'Ancash', 'Ocros', 'Llipa'),
(196, 'San Cristobal de Rajan , Ocros , Ancash', 'Ancash', 'Ocros', 'San Cristobal de Rajan'),
(197, 'San Pedro , Ocros , Ancash', 'Ancash', 'Ocros', 'San Pedro'),
(198, 'Santiago de Chilcas , Ocros , Ancash', 'Ancash', 'Ocros', 'Santiago de Chilcas'),
(199, 'Cabana , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Cabana'),
(200, 'Bolognesi , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Bolognesi'),
(201, 'Conchucos , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Conchucos'),
(202, 'Huacaschuque , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Huacaschuque'),
(203, 'Huandoval , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Huandoval'),
(204, 'Lacabamba , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Lacabamba'),
(205, 'Llapo , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Llapo'),
(206, 'Pallasca , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Pallasca'),
(207, 'Pampas , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Pampas'),
(208, 'Santa Rosa , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Santa Rosa'),
(209, 'Tauca , Pallasca , Ancash', 'Ancash', 'Pallasca', 'Tauca'),
(210, 'Pomabamba , Pomabamba , Ancash', 'Ancash', 'Pomabamba', 'Pomabamba'),
(211, 'Huayllan , Pomabamba , Ancash', 'Ancash', 'Pomabamba', 'Huayllan'),
(212, 'Parobamba , Pomabamba , Ancash', 'Ancash', 'Pomabamba', 'Parobamba'),
(213, 'Quinuabamba , Pomabamba , Ancash', 'Ancash', 'Pomabamba', 'Quinuabamba'),
(214, 'Recuay , Recuay , Ancash', 'Ancash', 'Recuay', 'Recuay'),
(215, 'Catac , Recuay , Ancash', 'Ancash', 'Recuay', 'Catac'),
(216, 'Cotaparaco , Recuay , Ancash', 'Ancash', 'Recuay', 'Cotaparaco'),
(217, 'Huayllapampa , Recuay , Ancash', 'Ancash', 'Recuay', 'Huayllapampa'),
(218, 'Llacllin , Recuay , Ancash', 'Ancash', 'Recuay', 'Llacllin'),
(219, 'Marca , Recuay , Ancash', 'Ancash', 'Recuay', 'Marca'),
(220, 'Pampas Chico , Recuay , Ancash', 'Ancash', 'Recuay', 'Pampas Chico'),
(221, 'Pararin , Recuay , Ancash', 'Ancash', 'Recuay', 'Pararin'),
(222, 'Tapacocha , Recuay , Ancash', 'Ancash', 'Recuay', 'Tapacocha'),
(223, 'Ticapampa , Recuay , Ancash', 'Ancash', 'Recuay', 'Ticapampa'),
(224, 'Chimbote , Santa , Ancash', 'Ancash', 'Santa', 'Chimbote'),
(225, 'Caceres del Peru , Santa , Ancash', 'Ancash', 'Santa', 'Caceres del Peru'),
(226, 'Coishco , Santa , Ancash', 'Ancash', 'Santa', 'Coishco'),
(227, 'Macate , Santa , Ancash', 'Ancash', 'Santa', 'Macate'),
(228, 'Moro , Santa , Ancash', 'Ancash', 'Santa', 'Moro'),
(229, 'Nepeña , Santa , Ancash', 'Ancash', 'Santa', 'Nepeña'),
(230, 'Samanco , Santa , Ancash', 'Ancash', 'Santa', 'Samanco'),
(231, 'Santa , Santa , Ancash', 'Ancash', 'Santa', 'Santa'),
(232, 'Nuevo Chimbote , Santa , Ancash', 'Ancash', 'Santa', 'Nuevo Chimbote'),
(233, 'Sihuas , Sihuas , Ancash', 'Ancash', 'Sihuas', 'Sihuas'),
(234, 'Acobamba , Sihuas , Ancash', 'Ancash', 'Sihuas', 'Acobamba'),
(235, 'Alfonso Ugarte , Sihuas , Ancash', 'Ancash', 'Sihuas', 'Alfonso Ugarte'),
(236, 'Cashapampa , Sihuas , Ancash', 'Ancash', 'Sihuas', 'Cashapampa'),
(237, 'Chingalpo , Sihuas , Ancash', 'Ancash', 'Sihuas', 'Chingalpo'),
(238, 'Huayllabamba , Sihuas , Ancash', 'Ancash', 'Sihuas', 'Huayllabamba'),
(239, 'Quiches , Sihuas , Ancash', 'Ancash', 'Sihuas', 'Quiches'),
(240, 'Ragash , Sihuas , Ancash', 'Ancash', 'Sihuas', 'Ragash'),
(241, 'San Juan , Sihuas , Ancash', 'Ancash', 'Sihuas', 'San Juan'),
(242, 'Sicsibamba , Sihuas , Ancash', 'Ancash', 'Sihuas', 'Sicsibamba'),
(243, 'Yungay , Yungay , Ancash', 'Ancash', 'Yungay', 'Yungay'),
(244, 'Cascapara , Yungay , Ancash', 'Ancash', 'Yungay', 'Cascapara'),
(245, 'Mancos , Yungay , Ancash', 'Ancash', 'Yungay', 'Mancos'),
(246, 'Matacoto , Yungay , Ancash', 'Ancash', 'Yungay', 'Matacoto'),
(247, 'Quillo , Yungay , Ancash', 'Ancash', 'Yungay', 'Quillo'),
(248, 'Ranrahirca , Yungay , Ancash', 'Ancash', 'Yungay', 'Ranrahirca'),
(249, 'Shupluy , Yungay , Ancash', 'Ancash', 'Yungay', 'Shupluy'),
(250, 'Yanama , Yungay , Ancash', 'Ancash', 'Yungay', 'Yanama'),
(251, 'Abancay , Abancay , Apurimac', 'Apurimac', 'Abancay', 'Abancay'),
(252, 'Chacoche , Abancay , Apurimac', 'Apurimac', 'Abancay', 'Chacoche'),
(253, 'Circa , Abancay , Apurimac', 'Apurimac', 'Abancay', 'Circa'),
(254, 'Curahuasi , Abancay , Apurimac', 'Apurimac', 'Abancay', 'Curahuasi'),
(255, 'Huanipaca , Abancay , Apurimac', 'Apurimac', 'Abancay', 'Huanipaca'),
(256, 'Lambrama , Abancay , Apurimac', 'Apurimac', 'Abancay', 'Lambrama'),
(257, 'Pichirhua , Abancay , Apurimac', 'Apurimac', 'Abancay', 'Pichirhua'),
(258, 'San Pedro de Cachora , Abancay , Apurimac', 'Apurimac', 'Abancay', 'San Pedro de Cachora'),
(259, 'Tamburco , Abancay , Apurimac', 'Apurimac', 'Abancay', 'Tamburco'),
(260, 'Andahuaylas , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Andahuaylas'),
(261, 'Andarapa , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Andarapa'),
(262, 'Chiara , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Chiara'),
(263, 'Huancarama , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Huancarama'),
(264, 'Huancaray , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Huancaray'),
(265, 'Huayana , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Huayana'),
(266, 'Kishuara , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Kishuara'),
(267, 'Pacobamba , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Pacobamba'),
(268, 'Pacucha , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Pacucha'),
(269, 'Pampachiri , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Pampachiri'),
(270, 'Pomacocha , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Pomacocha'),
(271, 'San Antonio de Cachi , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'San Antonio de Cachi'),
(272, 'San Jeronimo , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'San Jeronimo'),
(273, 'San Miguel de Chaccrampa , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'San Miguel de Chaccrampa'),
(274, 'Santa Maria de Chicmo , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Santa Maria de Chicmo'),
(275, 'Talavera , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Talavera'),
(276, 'Tumay Huaraca , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Tumay Huaraca'),
(277, 'Turpo , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Turpo'),
(278, 'Kaquiabamba , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Kaquiabamba'),
(279, 'Jose Maria Arguedas , Andahuaylas , Apurimac', 'Apurimac', 'Andahuaylas', 'Jose Maria Arguedas'),
(280, 'Antabamba , Antabamba , Apurimac', 'Apurimac', 'Antabamba', 'Antabamba'),
(281, 'El Oro , Antabamba , Apurimac', 'Apurimac', 'Antabamba', 'El Oro'),
(282, 'Huaquirca , Antabamba , Apurimac', 'Apurimac', 'Antabamba', 'Huaquirca'),
(283, 'Juan Espinoza Medrano , Antabamba , Apurimac', 'Apurimac', 'Antabamba', 'Juan Espinoza Medrano'),
(284, 'Oropesa , Antabamba , Apurimac', 'Apurimac', 'Antabamba', 'Oropesa'),
(285, 'Pachaconas , Antabamba , Apurimac', 'Apurimac', 'Antabamba', 'Pachaconas'),
(286, 'Sabaino , Antabamba , Apurimac', 'Apurimac', 'Antabamba', 'Sabaino'),
(287, 'Chalhuanca , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Chalhuanca'),
(288, 'Capaya , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Capaya'),
(289, 'Caraybamba , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Caraybamba'),
(290, 'Chapimarca , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Chapimarca'),
(291, 'Colcabamba , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Colcabamba'),
(292, 'Cotaruse , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Cotaruse'),
(293, 'Huayllo , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Huayllo'),
(294, 'Justo Apu Sahuaraura , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Justo Apu Sahuaraura'),
(295, 'Lucre , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Lucre'),
(296, 'Pocohuanca , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Pocohuanca'),
(297, 'San Juan de Chacña , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'San Juan de Chacña'),
(298, 'Sañayca , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Sañayca'),
(299, 'Soraya , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Soraya'),
(300, 'Tapairihua , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Tapairihua'),
(301, 'Tintay , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Tintay'),
(302, 'Toraya , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Toraya'),
(303, 'Yanaca , Aymaraes , Apurimac', 'Apurimac', 'Aymaraes', 'Yanaca'),
(304, 'Tambobamba , Cotabambas , Apurimac', 'Apurimac', 'Cotabambas', 'Tambobamba'),
(305, 'Cotabambas , Cotabambas , Apurimac', 'Apurimac', 'Cotabambas', 'Cotabambas'),
(306, 'Coyllurqui , Cotabambas , Apurimac', 'Apurimac', 'Cotabambas', 'Coyllurqui'),
(307, 'Haquira , Cotabambas , Apurimac', 'Apurimac', 'Cotabambas', 'Haquira'),
(308, 'Mara , Cotabambas , Apurimac', 'Apurimac', 'Cotabambas', 'Mara'),
(309, 'Challhuahuacho , Cotabambas , Apurimac', 'Apurimac', 'Cotabambas', 'Challhuahuacho'),
(310, 'Chincheros , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'Chincheros'),
(311, 'Anco_Huallo , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'Anco_Huallo'),
(312, 'Cocharcas , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'Cocharcas'),
(313, 'Huaccana , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'Huaccana'),
(314, 'Ocobamba , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'Ocobamba'),
(315, 'Ongoy , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'Ongoy'),
(316, 'Uranmarca , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'Uranmarca'),
(317, 'Ranracancha , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'Ranracancha'),
(318, 'Rocchacc , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'Rocchacc'),
(319, 'El Porvenir , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'El Porvenir'),
(320, 'Los Chankas , Chincheros , Apurimac', 'Apurimac', 'Chincheros', 'Los Chankas'),
(321, 'Chuquibambilla , Grau , Apurimac', 'Apurimac', 'Grau', 'Chuquibambilla'),
(322, 'Curpahuasi , Grau , Apurimac', 'Apurimac', 'Grau', 'Curpahuasi'),
(323, 'Gamarra , Grau , Apurimac', 'Apurimac', 'Grau', 'Gamarra'),
(324, 'Huayllati , Grau , Apurimac', 'Apurimac', 'Grau', 'Huayllati'),
(325, 'Mamara , Grau , Apurimac', 'Apurimac', 'Grau', 'Mamara'),
(326, 'Micaela Bastidas , Grau , Apurimac', 'Apurimac', 'Grau', 'Micaela Bastidas'),
(327, 'Pataypampa , Grau , Apurimac', 'Apurimac', 'Grau', 'Pataypampa'),
(328, 'Progreso , Grau , Apurimac', 'Apurimac', 'Grau', 'Progreso'),
(329, 'San Antonio , Grau , Apurimac', 'Apurimac', 'Grau', 'San Antonio'),
(330, 'Santa Rosa , Grau , Apurimac', 'Apurimac', 'Grau', 'Santa Rosa'),
(331, 'Turpay , Grau , Apurimac', 'Apurimac', 'Grau', 'Turpay'),
(332, 'Vilcabamba , Grau , Apurimac', 'Apurimac', 'Grau', 'Vilcabamba'),
(333, 'Virundo , Grau , Apurimac', 'Apurimac', 'Grau', 'Virundo'),
(334, 'Curasco , Grau , Apurimac', 'Apurimac', 'Grau', 'Curasco'),
(335, 'Arequipa , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Arequipa'),
(336, 'Alto Selva Alegre , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Alto Selva Alegre'),
(337, 'Cayma , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Cayma'),
(338, 'Cerro Colorado , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Cerro Colorado'),
(339, 'Characato , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Characato'),
(340, 'Chiguata , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Chiguata'),
(341, 'Jacobo Hunter , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Jacobo Hunter'),
(342, 'La Joya , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'La Joya'),
(343, 'Mariano Melgar , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Mariano Melgar'),
(344, 'Miraflores , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Miraflores'),
(345, 'Mollebaya , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Mollebaya'),
(346, 'Paucarpata , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Paucarpata'),
(347, 'Pocsi , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Pocsi'),
(348, 'Polobaya , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Polobaya'),
(349, 'Quequeña , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Quequeña'),
(350, 'Sabandia , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Sabandia'),
(351, 'Sachaca , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Sachaca'),
(352, 'San Juan de Siguas , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'San Juan de Siguas'),
(353, 'San Juan de Tarucani , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'San Juan de Tarucani'),
(354, 'Santa Isabel de Siguas , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Santa Isabel de Siguas'),
(355, 'Santa Rita de Siguas , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Santa Rita de Siguas'),
(356, 'Socabaya , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Socabaya'),
(357, 'Tiabaya , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Tiabaya'),
(358, 'Uchumayo , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Uchumayo'),
(359, 'Vitor , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Vitor'),
(360, 'Yanahuara , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Yanahuara'),
(361, 'Yarabamba , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Yarabamba'),
(362, 'Yura , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Yura'),
(363, 'Jose Luis Bustamante y Rivero , Arequipa , Arequipa', 'Arequipa', 'Arequipa', 'Jose Luis Bustamante y Rivero'),
(364, 'Camana , Camana , Arequipa', 'Arequipa', 'Camana', 'Camana'),
(365, 'Jose Maria Quimper , Camana , Arequipa', 'Arequipa', 'Camana', 'Jose Maria Quimper'),
(366, 'Mariano Nicolas Valcarcel , Camana , Arequipa', 'Arequipa', 'Camana', 'Mariano Nicolas Valcarcel'),
(367, 'Mariscal Caceres , Camana , Arequipa', 'Arequipa', 'Camana', 'Mariscal Caceres'),
(368, 'Nicolas de Pierola , Camana , Arequipa', 'Arequipa', 'Camana', 'Nicolas de Pierola'),
(369, 'Ocoña , Camana , Arequipa', 'Arequipa', 'Camana', 'Ocoña'),
(370, 'Quilca , Camana , Arequipa', 'Arequipa', 'Camana', 'Quilca'),
(371, 'Samuel Pastor , Camana , Arequipa', 'Arequipa', 'Camana', 'Samuel Pastor'),
(372, 'Caraveli , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Caraveli'),
(373, 'Acari , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Acari'),
(374, 'Atico , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Atico'),
(375, 'Atiquipa , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Atiquipa'),
(376, 'Bella Union , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Bella Union'),
(377, 'Cahuacho , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Cahuacho'),
(378, 'Chala , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Chala'),
(379, 'Chaparra , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Chaparra'),
(380, 'Huanuhuanu , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Huanuhuanu'),
(381, 'Jaqui , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Jaqui'),
(382, 'Lomas , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Lomas'),
(383, 'Quicacha , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Quicacha'),
(384, 'Yauca , Caraveli , Arequipa', 'Arequipa', 'Caraveli', 'Yauca'),
(385, 'Aplao , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Aplao'),
(386, 'Andagua , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Andagua'),
(387, 'Ayo , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Ayo'),
(388, 'Chachas , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Chachas'),
(389, 'Chilcaymarca , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Chilcaymarca'),
(390, 'Choco , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Choco'),
(391, 'Huancarqui , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Huancarqui'),
(392, 'Machaguay , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Machaguay'),
(393, 'Orcopampa , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Orcopampa'),
(394, 'Pampacolca , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Pampacolca'),
(395, 'Tipan , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Tipan'),
(396, 'Uñon , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Uñon'),
(397, 'Uraca , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Uraca'),
(398, 'Viraco , Castilla , Arequipa', 'Arequipa', 'Castilla', 'Viraco'),
(399, 'Chivay , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Chivay'),
(400, 'Achoma , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Achoma'),
(401, 'Cabanaconde , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Cabanaconde'),
(402, 'Callalli , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Callalli'),
(403, 'Caylloma , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Caylloma'),
(404, 'Coporaque , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Coporaque'),
(405, 'Huambo , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Huambo'),
(406, 'Huanca , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Huanca'),
(407, 'Ichupampa , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Ichupampa'),
(408, 'Lari , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Lari'),
(409, 'Lluta , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Lluta'),
(410, 'Maca , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Maca'),
(411, 'Madrigal , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Madrigal'),
(412, 'San Antonio de Chuca , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'San Antonio de Chuca'),
(413, 'Sibayo , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Sibayo'),
(414, 'Tapay , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Tapay'),
(415, 'Tisco , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Tisco'),
(416, 'Tuti , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Tuti'),
(417, 'Yanque , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Yanque'),
(418, 'Majes , Caylloma , Arequipa', 'Arequipa', 'Caylloma', 'Majes'),
(419, 'Chuquibamba , Condesuyos , Arequipa', 'Arequipa', 'Condesuyos', 'Chuquibamba'),
(420, 'Andaray , Condesuyos , Arequipa', 'Arequipa', 'Condesuyos', 'Andaray'),
(421, 'Cayarani , Condesuyos , Arequipa', 'Arequipa', 'Condesuyos', 'Cayarani'),
(422, 'Chichas , Condesuyos , Arequipa', 'Arequipa', 'Condesuyos', 'Chichas'),
(423, 'Iray , Condesuyos , Arequipa', 'Arequipa', 'Condesuyos', 'Iray'),
(424, 'Rio Grande , Condesuyos , Arequipa', 'Arequipa', 'Condesuyos', 'Rio Grande'),
(425, 'Salamanca , Condesuyos , Arequipa', 'Arequipa', 'Condesuyos', 'Salamanca'),
(426, 'Yanaquihua , Condesuyos , Arequipa', 'Arequipa', 'Condesuyos', 'Yanaquihua'),
(427, 'Mollendo , Islay , Arequipa', 'Arequipa', 'Islay', 'Mollendo'),
(428, 'Cocachacra , Islay , Arequipa', 'Arequipa', 'Islay', 'Cocachacra'),
(429, 'Dean Valdivia , Islay , Arequipa', 'Arequipa', 'Islay', 'Dean Valdivia'),
(430, 'Islay , Islay , Arequipa', 'Arequipa', 'Islay', 'Islay'),
(431, 'Mejia , Islay , Arequipa', 'Arequipa', 'Islay', 'Mejia'),
(432, 'Punta de Bombon , Islay , Arequipa', 'Arequipa', 'Islay', 'Punta de Bombon'),
(433, 'Cotahuasi , La Union , Arequipa', 'Arequipa', 'La Union', 'Cotahuasi'),
(434, 'Alca , La Union , Arequipa', 'Arequipa', 'La Union', 'Alca'),
(435, 'Charcana , La Union , Arequipa', 'Arequipa', 'La Union', 'Charcana'),
(436, 'Huaynacotas , La Union , Arequipa', 'Arequipa', 'La Union', 'Huaynacotas'),
(437, 'Pampamarca , La Union , Arequipa', 'Arequipa', 'La Union', 'Pampamarca'),
(438, 'Puyca , La Union , Arequipa', 'Arequipa', 'La Union', 'Puyca'),
(439, 'Quechualla , La Union , Arequipa', 'Arequipa', 'La Union', 'Quechualla'),
(440, 'Sayla , La Union , Arequipa', 'Arequipa', 'La Union', 'Sayla'),
(441, 'Tauria , La Union , Arequipa', 'Arequipa', 'La Union', 'Tauria'),
(442, 'Tomepampa , La Union , Arequipa', 'Arequipa', 'La Union', 'Tomepampa'),
(443, 'Toro , La Union , Arequipa', 'Arequipa', 'La Union', 'Toro'),
(444, 'Ayacucho , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Ayacucho'),
(445, 'Acocro , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Acocro'),
(446, 'Acos Vinchos , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Acos Vinchos'),
(447, 'Carmen Alto , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Carmen Alto'),
(448, 'Chiara , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Chiara'),
(449, 'Ocros , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Ocros'),
(450, 'Pacaycasa , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Pacaycasa'),
(451, 'Quinua , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Quinua'),
(452, 'San Jose de Ticllas , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'San Jose de Ticllas'),
(453, 'San Juan Bautista , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'San Juan Bautista'),
(454, 'Santiago de Pischa , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Santiago de Pischa'),
(455, 'Socos , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Socos'),
(456, 'Tambillo , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Tambillo'),
(457, 'Vinchos , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Vinchos'),
(458, 'Jesus Nazareno , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Jesus Nazareno'),
(459, 'Andres Avelino Caceres Dorregaray , Huamanga , Ayacucho', 'Ayacucho', 'Huamanga', 'Andres Avelino Caceres Dorregaray'),
(460, 'Cangallo , Cangallo , Ayacucho', 'Ayacucho', 'Cangallo', 'Cangallo'),
(461, 'Chuschi , Cangallo , Ayacucho', 'Ayacucho', 'Cangallo', 'Chuschi'),
(462, 'Los Morochucos , Cangallo , Ayacucho', 'Ayacucho', 'Cangallo', 'Los Morochucos'),
(463, 'Maria Parado de Bellido , Cangallo , Ayacucho', 'Ayacucho', 'Cangallo', 'Maria Parado de Bellido'),
(464, 'Paras , Cangallo , Ayacucho', 'Ayacucho', 'Cangallo', 'Paras'),
(465, 'Totos , Cangallo , Ayacucho', 'Ayacucho', 'Cangallo', 'Totos'),
(466, 'Sancos , Huanca Sancos , Ayacucho', 'Ayacucho', 'Huanca Sancos', 'Sancos'),
(467, 'Carapo , Huanca Sancos , Ayacucho', 'Ayacucho', 'Huanca Sancos', 'Carapo'),
(468, 'Sacsamarca , Huanca Sancos , Ayacucho', 'Ayacucho', 'Huanca Sancos', 'Sacsamarca'),
(469, 'Santiago de Lucanamarca , Huanca Sancos , Ayacucho', 'Ayacucho', 'Huanca Sancos', 'Santiago de Lucanamarca'),
(470, 'Huanta , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Huanta'),
(471, 'Ayahuanco , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Ayahuanco'),
(472, 'Huamanguilla , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Huamanguilla'),
(473, 'Iguain , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Iguain'),
(474, 'Luricocha , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Luricocha'),
(475, 'Santillana , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Santillana'),
(476, 'Sivia , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Sivia'),
(477, 'Llochegua , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Llochegua'),
(478, 'Canayre , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Canayre'),
(479, 'Uchuraccay , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Uchuraccay'),
(480, 'Pucacolpa , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Pucacolpa'),
(481, 'Chaca , Huanta , Ayacucho', 'Ayacucho', 'Huanta', 'Chaca'),
(482, 'San Miguel , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'San Miguel'),
(483, 'Anco , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'Anco'),
(484, 'Ayna , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'Ayna'),
(485, 'Chilcas , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'Chilcas'),
(486, 'Chungui , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'Chungui'),
(487, 'Luis Carranza , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'Luis Carranza'),
(488, 'Santa Rosa , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'Santa Rosa'),
(489, 'Tambo , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'Tambo'),
(490, 'Samugari , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'Samugari'),
(491, 'Anchihuay , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'Anchihuay'),
(492, 'Oronccoy , La Mar , Ayacucho', 'Ayacucho', 'La Mar', 'Oronccoy'),
(493, 'Puquio , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Puquio'),
(494, 'Aucara , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Aucara'),
(495, 'Cabana , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Cabana'),
(496, 'Carmen Salcedo , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Carmen Salcedo'),
(497, 'Chaviña , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Chaviña'),
(498, 'Chipao , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Chipao'),
(499, 'Huac-Huas , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Huac-Huas'),
(500, 'Laramate , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Laramate'),
(501, 'Leoncio Prado , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Leoncio Prado'),
(502, 'Llauta , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Llauta'),
(503, 'Lucanas , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Lucanas'),
(504, 'Ocaña , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Ocaña'),
(505, 'Otoca , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Otoca'),
(506, 'Saisa , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Saisa'),
(507, 'San Cristobal , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'San Cristobal'),
(508, 'San Juan , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'San Juan'),
(509, 'San Pedro , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'San Pedro'),
(510, 'San Pedro de Palco , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'San Pedro de Palco'),
(511, 'Sancos , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Sancos'),
(512, 'Santa Ana de Huaycahuacho , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Santa Ana de Huaycahuacho'),
(513, 'Santa Lucia , Lucanas , Ayacucho', 'Ayacucho', 'Lucanas', 'Santa Lucia'),
(514, 'Coracora , Parinacochas , Ayacucho', 'Ayacucho', 'Parinacochas', 'Coracora'),
(515, 'Chumpi , Parinacochas , Ayacucho', 'Ayacucho', 'Parinacochas', 'Chumpi'),
(516, 'Coronel Castañeda , Parinacochas , Ayacucho', 'Ayacucho', 'Parinacochas', 'Coronel Castañeda'),
(517, 'Pacapausa , Parinacochas , Ayacucho', 'Ayacucho', 'Parinacochas', 'Pacapausa'),
(518, 'Pullo , Parinacochas , Ayacucho', 'Ayacucho', 'Parinacochas', 'Pullo'),
(519, 'Puyusca , Parinacochas , Ayacucho', 'Ayacucho', 'Parinacochas', 'Puyusca'),
(520, 'San Francisco de Ravacayco , Parinacochas , Ayacucho', 'Ayacucho', 'Parinacochas', 'San Francisco de Ravacayco'),
(521, 'Upahuacho , Parinacochas , Ayacucho', 'Ayacucho', 'Parinacochas', 'Upahuacho'),
(522, 'Pausa , Paucar del Sara Sara , Ayacucho', 'Ayacucho', 'Paucar del Sara Sara', 'Pausa'),
(523, 'Colta , Paucar del Sara Sara , Ayacucho', 'Ayacucho', 'Paucar del Sara Sara', 'Colta'),
(524, 'Corculla , Paucar del Sara Sara , Ayacucho', 'Ayacucho', 'Paucar del Sara Sara', 'Corculla'),
(525, 'Lampa , Paucar del Sara Sara , Ayacucho', 'Ayacucho', 'Paucar del Sara Sara', 'Lampa'),
(526, 'Marcabamba , Paucar del Sara Sara , Ayacucho', 'Ayacucho', 'Paucar del Sara Sara', 'Marcabamba'),
(527, 'Oyolo , Paucar del Sara Sara , Ayacucho', 'Ayacucho', 'Paucar del Sara Sara', 'Oyolo'),
(528, 'Pararca , Paucar del Sara Sara , Ayacucho', 'Ayacucho', 'Paucar del Sara Sara', 'Pararca'),
(529, 'San Javier de Alpabamba , Paucar del Sara Sara , Ayacucho', 'Ayacucho', 'Paucar del Sara Sara', 'San Javier de Alpabamba'),
(530, 'San Jose de Ushua , Paucar del Sara Sara , Ayacucho', 'Ayacucho', 'Paucar del Sara Sara', 'San Jose de Ushua'),
(531, 'Sara Sara , Paucar del Sara Sara , Ayacucho', 'Ayacucho', 'Paucar del Sara Sara', 'Sara Sara'),
(532, 'Querobamba , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'Querobamba'),
(533, 'Belen , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'Belen'),
(534, 'Chalcos , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'Chalcos'),
(535, 'Chilcayoc , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'Chilcayoc'),
(536, 'Huacaña , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'Huacaña'),
(537, 'Morcolla , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'Morcolla'),
(538, 'Paico , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'Paico'),
(539, 'San Pedro de Larcay , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'San Pedro de Larcay'),
(540, 'San Salvador de Quije , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'San Salvador de Quije'),
(541, 'Santiago de Paucaray , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'Santiago de Paucaray'),
(542, 'Soras , Sucre , Ayacucho', 'Ayacucho', 'Sucre', 'Soras'),
(543, 'Huancapi , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Huancapi'),
(544, 'Alcamenca , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Alcamenca'),
(545, 'Apongo , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Apongo'),
(546, 'Asquipata , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Asquipata'),
(547, 'Canaria , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Canaria'),
(548, 'Cayara , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Cayara'),
(549, 'Colca , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Colca'),
(550, 'Huamanquiquia , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Huamanquiquia'),
(551, 'Huancaraylla , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Huancaraylla'),
(552, 'Huaya , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Huaya'),
(553, 'Sarhua , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Sarhua'),
(554, 'Vilcanchos , Victor Fajardo , Ayacucho', 'Ayacucho', 'Victor Fajardo', 'Vilcanchos'),
(555, 'Vilcas Huaman , Vilcas Huaman , Ayacucho', 'Ayacucho', 'Vilcas Huaman', 'Vilcas Huaman'),
(556, 'Accomarca , Vilcas Huaman , Ayacucho', 'Ayacucho', 'Vilcas Huaman', 'Accomarca'),
(557, 'Carhuanca , Vilcas Huaman , Ayacucho', 'Ayacucho', 'Vilcas Huaman', 'Carhuanca'),
(558, 'Concepcion , Vilcas Huaman , Ayacucho', 'Ayacucho', 'Vilcas Huaman', 'Concepcion'),
(559, 'Huambalpa , Vilcas Huaman , Ayacucho', 'Ayacucho', 'Vilcas Huaman', 'Huambalpa'),
(560, 'Independencia , Vilcas Huaman , Ayacucho', 'Ayacucho', 'Vilcas Huaman', 'Independencia'),
(561, 'Saurama , Vilcas Huaman , Ayacucho', 'Ayacucho', 'Vilcas Huaman', 'Saurama'),
(562, 'Vischongo , Vilcas Huaman , Ayacucho', 'Ayacucho', 'Vilcas Huaman', 'Vischongo'),
(563, 'Cajamarca , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Cajamarca'),
(564, 'Asuncion , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Asuncion'),
(565, 'Chetilla , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Chetilla'),
(566, 'Cospan , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Cospan'),
(567, 'Encañada , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Encañada'),
(568, 'Jesus , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Jesus'),
(569, 'Llacanora , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Llacanora'),
(570, 'Los Baños del Inca , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Los Baños del Inca'),
(571, 'Magdalena , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Magdalena'),
(572, 'Matara , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Matara'),
(573, 'Namora , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'Namora'),
(574, 'San Juan , Cajamarca , Cajamarca', 'Cajamarca', 'Cajamarca', 'San Juan'),
(575, 'Cajabamba , Cajabamba , Cajamarca', 'Cajamarca', 'Cajabamba', 'Cajabamba'),
(576, 'Cachachi , Cajabamba , Cajamarca', 'Cajamarca', 'Cajabamba', 'Cachachi'),
(577, 'Condebamba , Cajabamba , Cajamarca', 'Cajamarca', 'Cajabamba', 'Condebamba'),
(578, 'Sitacocha , Cajabamba , Cajamarca', 'Cajamarca', 'Cajabamba', 'Sitacocha'),
(579, 'Celendin , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Celendin'),
(580, 'Chumuch , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Chumuch'),
(581, 'Cortegana , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Cortegana'),
(582, 'Huasmin , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Huasmin'),
(583, 'Jorge Chavez , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Jorge Chavez'),
(584, 'Jose Galvez , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Jose Galvez'),
(585, 'Miguel Iglesias , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Miguel Iglesias'),
(586, 'Oxamarca , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Oxamarca'),
(587, 'Sorochuco , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Sorochuco'),
(588, 'Sucre , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Sucre'),
(589, 'Utco , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'Utco'),
(590, 'La Libertad de Pallan , Celendin , Cajamarca', 'Cajamarca', 'Celendin', 'La Libertad de Pallan'),
(591, 'Chota , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Chota'),
(592, 'Anguia , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Anguia'),
(593, 'Chadin , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Chadin'),
(594, 'Chiguirip , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Chiguirip'),
(595, 'Chimban , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Chimban'),
(596, 'Choropampa , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Choropampa'),
(597, 'Cochabamba , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Cochabamba'),
(598, 'Conchan , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Conchan'),
(599, 'Huambos , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Huambos'),
(600, 'Lajas , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Lajas'),
(601, 'Llama , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Llama'),
(602, 'Miracosta , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Miracosta'),
(603, 'Paccha , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Paccha'),
(604, 'Pion , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Pion'),
(605, 'Querocoto , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Querocoto'),
(606, 'San Juan de Licupis , Chota , Cajamarca', 'Cajamarca', 'Chota', 'San Juan de Licupis'),
(607, 'Tacabamba , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Tacabamba'),
(608, 'Tocmoche , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Tocmoche'),
(609, 'Chalamarca , Chota , Cajamarca', 'Cajamarca', 'Chota', 'Chalamarca'),
(610, 'Contumaza , Contumaza , Cajamarca', 'Cajamarca', 'Contumaza', 'Contumaza'),
(611, 'Chilete , Contumaza , Cajamarca', 'Cajamarca', 'Contumaza', 'Chilete'),
(612, 'Cupisnique , Contumaza , Cajamarca', 'Cajamarca', 'Contumaza', 'Cupisnique'),
(613, 'Guzmango , Contumaza , Cajamarca', 'Cajamarca', 'Contumaza', 'Guzmango'),
(614, 'San Benito , Contumaza , Cajamarca', 'Cajamarca', 'Contumaza', 'San Benito'),
(615, 'Santa Cruz de Toled , Contumaza , Cajamarca', 'Cajamarca', 'Contumaza', 'Santa Cruz de Toled'),
(616, 'Tantarica , Contumaza , Cajamarca', 'Cajamarca', 'Contumaza', 'Tantarica'),
(617, 'Yonan , Contumaza , Cajamarca', 'Cajamarca', 'Contumaza', 'Yonan'),
(618, 'Cutervo , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Cutervo'),
(619, 'Callayuc , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Callayuc'),
(620, 'Choros , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Choros'),
(621, 'Cujillo , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Cujillo'),
(622, 'La Ramada , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'La Ramada'),
(623, 'Pimpingos , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Pimpingos'),
(624, 'Querocotillo , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Querocotillo'),
(625, 'San Andres de Cutervo , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'San Andres de Cutervo'),
(626, 'San Juan de Cutervo , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'San Juan de Cutervo'),
(627, 'San Luis de Lucma , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'San Luis de Lucma'),
(628, 'Santa Cruz , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Santa Cruz'),
(629, 'Santo Domingo de La Capilla , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Santo Domingo de La Capilla'),
(630, 'Santo Tomas , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Santo Tomas'),
(631, 'Socota , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Socota'),
(632, 'Toribio Casanova , Cutervo , Cajamarca', 'Cajamarca', 'Cutervo', 'Toribio Casanova'),
(633, 'Bambamarca , Hualgayoc , Cajamarca', 'Cajamarca', 'Hualgayoc', 'Bambamarca'),
(634, 'Chugur , Hualgayoc , Cajamarca', 'Cajamarca', 'Hualgayoc', 'Chugur'),
(635, 'Hualgayoc , Hualgayoc , Cajamarca', 'Cajamarca', 'Hualgayoc', 'Hualgayoc'),
(636, 'Jaen , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'Jaen'),
(637, 'Bellavista , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'Bellavista'),
(638, 'Chontali , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'Chontali'),
(639, 'Colasay , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'Colasay'),
(640, 'Huabal , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'Huabal'),
(641, 'Las Pirias , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'Las Pirias'),
(642, 'Pomahuaca , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'Pomahuaca'),
(643, 'Pucara , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'Pucara'),
(644, 'Sallique , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'Sallique'),
(645, 'San Felipe , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'San Felipe'),
(646, 'San Jose del Alto , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'San Jose del Alto'),
(647, 'Santa Rosa , Jaen , Cajamarca', 'Cajamarca', 'Jaen', 'Santa Rosa'),
(648, 'San Ignacio , San Ignacio , Cajamarca', 'Cajamarca', 'San Ignacio', 'San Ignacio'),
(649, 'Chirinos , San Ignacio , Cajamarca', 'Cajamarca', 'San Ignacio', 'Chirinos'),
(650, 'Huarango , San Ignacio , Cajamarca', 'Cajamarca', 'San Ignacio', 'Huarango');
INSERT INTO `conf_ubigeo` (`codUbigeo`, `desUbigeo`, `Departamento`, `Provincia`, `Distrito`) VALUES
(651, 'La Coipa , San Ignacio , Cajamarca', 'Cajamarca', 'San Ignacio', 'La Coipa'),
(652, 'Namballe , San Ignacio , Cajamarca', 'Cajamarca', 'San Ignacio', 'Namballe'),
(653, 'San Jose de Lourdes , San Ignacio , Cajamarca', 'Cajamarca', 'San Ignacio', 'San Jose de Lourdes'),
(654, 'Tabaconas , San Ignacio , Cajamarca', 'Cajamarca', 'San Ignacio', 'Tabaconas'),
(655, 'Pedro Galvez , San Marcos , Cajamarca', 'Cajamarca', 'San Marcos', 'Pedro Galvez'),
(656, 'Chancay , San Marcos , Cajamarca', 'Cajamarca', 'San Marcos', 'Chancay'),
(657, 'Eduardo Villanueva , San Marcos , Cajamarca', 'Cajamarca', 'San Marcos', 'Eduardo Villanueva'),
(658, 'Gregorio Pita , San Marcos , Cajamarca', 'Cajamarca', 'San Marcos', 'Gregorio Pita'),
(659, 'Ichocan , San Marcos , Cajamarca', 'Cajamarca', 'San Marcos', 'Ichocan'),
(660, 'Jose Manuel Quiroz , San Marcos , Cajamarca', 'Cajamarca', 'San Marcos', 'Jose Manuel Quiroz'),
(661, 'Jose Sabogal , San Marcos , Cajamarca', 'Cajamarca', 'San Marcos', 'Jose Sabogal'),
(662, 'San Miguel , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'San Miguel'),
(663, 'Bolivar , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'Bolivar'),
(664, 'Calquis , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'Calquis'),
(665, 'Catilluc , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'Catilluc'),
(666, 'El Prado , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'El Prado'),
(667, 'La Florida , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'La Florida'),
(668, 'Llapa , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'Llapa'),
(669, 'Nanchoc , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'Nanchoc'),
(670, 'Niepos , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'Niepos'),
(671, 'San Gregorio , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'San Gregorio'),
(672, 'San Silvestre de Cochan , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'San Silvestre de Cochan'),
(673, 'Tongod , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'Tongod'),
(674, 'Union Agua Blanca , San Miguel , Cajamarca', 'Cajamarca', 'San Miguel', 'Union Agua Blanca'),
(675, 'San Pablo , San Pablo , Cajamarca', 'Cajamarca', 'San Pablo', 'San Pablo'),
(676, 'San Bernardino , San Pablo , Cajamarca', 'Cajamarca', 'San Pablo', 'San Bernardino'),
(677, 'San Luis , San Pablo , Cajamarca', 'Cajamarca', 'San Pablo', 'San Luis'),
(678, 'Tumbaden , San Pablo , Cajamarca', 'Cajamarca', 'San Pablo', 'Tumbaden'),
(679, 'Santa Cruz , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'Santa Cruz'),
(680, 'Andabamba , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'Andabamba'),
(681, 'Catache , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'Catache'),
(682, 'Chancaybaños , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'Chancaybaños'),
(683, 'La Esperanza , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'La Esperanza'),
(684, 'Ninabamba , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'Ninabamba'),
(685, 'Pulan , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'Pulan'),
(686, 'Saucepampa , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'Saucepampa'),
(687, 'Sexi , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'Sexi'),
(688, 'Uticyacu , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'Uticyacu'),
(689, 'Yauyucan , Santa Cruz , Cajamarca', 'Cajamarca', 'Santa Cruz', 'Yauyucan'),
(690, 'Callao , Callao , Callao', 'Callao', 'Callao', 'Callao'),
(691, 'Bellavista , Callao , Callao', 'Callao', 'Callao', 'Bellavista'),
(692, 'Carmen de La Legua , Callao , Callao', 'Callao', 'Callao', 'Carmen de La Legua'),
(693, 'La Perla , Callao , Callao', 'Callao', 'Callao', 'La Perla'),
(694, 'La Punta , Callao , Callao', 'Callao', 'Callao', 'La Punta'),
(695, 'Ventanilla , Callao , Callao', 'Callao', 'Callao', 'Ventanilla'),
(696, 'Mi Peru , Callao , Callao', 'Callao', 'Callao', 'Mi Peru'),
(697, 'Cusco , Cusco , Cusco', 'Cusco', 'Cusco', 'Cusco'),
(698, 'Ccorca , Cusco , Cusco', 'Cusco', 'Cusco', 'Ccorca'),
(699, 'Poroy , Cusco , Cusco', 'Cusco', 'Cusco', 'Poroy'),
(700, 'San Jeronimo , Cusco , Cusco', 'Cusco', 'Cusco', 'San Jeronimo'),
(701, 'San Sebastian , Cusco , Cusco', 'Cusco', 'Cusco', 'San Sebastian'),
(702, 'Santiago , Cusco , Cusco', 'Cusco', 'Cusco', 'Santiago'),
(703, 'Saylla , Cusco , Cusco', 'Cusco', 'Cusco', 'Saylla'),
(704, 'Wanchaq , Cusco , Cusco', 'Cusco', 'Cusco', 'Wanchaq'),
(705, 'Acomayo , Acomayo , Cusco', 'Cusco', 'Acomayo', 'Acomayo'),
(706, 'Acopia , Acomayo , Cusco', 'Cusco', 'Acomayo', 'Acopia'),
(707, 'Acos , Acomayo , Cusco', 'Cusco', 'Acomayo', 'Acos'),
(708, 'Mosoc Llacta , Acomayo , Cusco', 'Cusco', 'Acomayo', 'Mosoc Llacta'),
(709, 'Pomacanchi , Acomayo , Cusco', 'Cusco', 'Acomayo', 'Pomacanchi'),
(710, 'Rondocan , Acomayo , Cusco', 'Cusco', 'Acomayo', 'Rondocan'),
(711, 'Sangarara , Acomayo , Cusco', 'Cusco', 'Acomayo', 'Sangarara'),
(712, 'Anta , Anta , Cusco', 'Cusco', 'Anta', 'Anta'),
(713, 'Ancahuasi , Anta , Cusco', 'Cusco', 'Anta', 'Ancahuasi'),
(714, 'Cachimayo , Anta , Cusco', 'Cusco', 'Anta', 'Cachimayo'),
(715, 'Chinchaypujio , Anta , Cusco', 'Cusco', 'Anta', 'Chinchaypujio'),
(716, 'Huarocondo , Anta , Cusco', 'Cusco', 'Anta', 'Huarocondo'),
(717, 'Limatambo , Anta , Cusco', 'Cusco', 'Anta', 'Limatambo'),
(718, 'Mollepata , Anta , Cusco', 'Cusco', 'Anta', 'Mollepata'),
(719, 'Pucyura , Anta , Cusco', 'Cusco', 'Anta', 'Pucyura'),
(720, 'Zurite , Anta , Cusco', 'Cusco', 'Anta', 'Zurite'),
(721, 'Calca , Calca , Cusco', 'Cusco', 'Calca', 'Calca'),
(722, 'Coya , Calca , Cusco', 'Cusco', 'Calca', 'Coya'),
(723, 'Lamay , Calca , Cusco', 'Cusco', 'Calca', 'Lamay'),
(724, 'Lares , Calca , Cusco', 'Cusco', 'Calca', 'Lares'),
(725, 'Pisac , Calca , Cusco', 'Cusco', 'Calca', 'Pisac'),
(726, 'San Salvador , Calca , Cusco', 'Cusco', 'Calca', 'San Salvador'),
(727, 'Taray , Calca , Cusco', 'Cusco', 'Calca', 'Taray'),
(728, 'Yanatile , Calca , Cusco', 'Cusco', 'Calca', 'Yanatile'),
(729, 'Yanaoca , Canas , Cusco', 'Cusco', 'Canas', 'Yanaoca'),
(730, 'Checca , Canas , Cusco', 'Cusco', 'Canas', 'Checca'),
(731, 'Kunturkanki , Canas , Cusco', 'Cusco', 'Canas', 'Kunturkanki'),
(732, 'Langui , Canas , Cusco', 'Cusco', 'Canas', 'Langui'),
(733, 'Layo , Canas , Cusco', 'Cusco', 'Canas', 'Layo'),
(734, 'Pampamarca , Canas , Cusco', 'Cusco', 'Canas', 'Pampamarca'),
(735, 'Quehue , Canas , Cusco', 'Cusco', 'Canas', 'Quehue'),
(736, 'Tupac Amaru , Canas , Cusco', 'Cusco', 'Canas', 'Tupac Amaru'),
(737, 'Sicuani , Canchis , Cusco', 'Cusco', 'Canchis', 'Sicuani'),
(738, 'Checacupe , Canchis , Cusco', 'Cusco', 'Canchis', 'Checacupe'),
(739, 'Combapata , Canchis , Cusco', 'Cusco', 'Canchis', 'Combapata'),
(740, 'Marangani , Canchis , Cusco', 'Cusco', 'Canchis', 'Marangani'),
(741, 'Pitumarca , Canchis , Cusco', 'Cusco', 'Canchis', 'Pitumarca'),
(742, 'San Pablo , Canchis , Cusco', 'Cusco', 'Canchis', 'San Pablo'),
(743, 'San Pedro , Canchis , Cusco', 'Cusco', 'Canchis', 'San Pedro'),
(744, 'Tinta , Canchis , Cusco', 'Cusco', 'Canchis', 'Tinta'),
(745, 'Santo Tomas , Chumbivilcas , Cusco', 'Cusco', 'Chumbivilcas', 'Santo Tomas'),
(746, 'Capacmarca , Chumbivilcas , Cusco', 'Cusco', 'Chumbivilcas', 'Capacmarca'),
(747, 'Chamaca , Chumbivilcas , Cusco', 'Cusco', 'Chumbivilcas', 'Chamaca'),
(748, 'Colquemarca , Chumbivilcas , Cusco', 'Cusco', 'Chumbivilcas', 'Colquemarca'),
(749, 'Livitaca , Chumbivilcas , Cusco', 'Cusco', 'Chumbivilcas', 'Livitaca'),
(750, 'Llusco , Chumbivilcas , Cusco', 'Cusco', 'Chumbivilcas', 'Llusco'),
(751, 'Quiñota , Chumbivilcas , Cusco', 'Cusco', 'Chumbivilcas', 'Quiñota'),
(752, 'Velille , Chumbivilcas , Cusco', 'Cusco', 'Chumbivilcas', 'Velille'),
(753, 'Espinar , Espinar , Cusco', 'Cusco', 'Espinar', 'Espinar'),
(754, 'Condoroma , Espinar , Cusco', 'Cusco', 'Espinar', 'Condoroma'),
(755, 'Coporaque , Espinar , Cusco', 'Cusco', 'Espinar', 'Coporaque'),
(756, 'Ocoruro , Espinar , Cusco', 'Cusco', 'Espinar', 'Ocoruro'),
(757, 'Pallpata , Espinar , Cusco', 'Cusco', 'Espinar', 'Pallpata'),
(758, 'Pichigua , Espinar , Cusco', 'Cusco', 'Espinar', 'Pichigua'),
(759, 'Suyckutambo , Espinar , Cusco', 'Cusco', 'Espinar', 'Suyckutambo'),
(760, 'Alto Pichigua , Espinar , Cusco', 'Cusco', 'Espinar', 'Alto Pichigua'),
(761, 'Santa Ana , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Santa Ana'),
(762, 'Echarate , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Echarate'),
(763, 'Huayopata , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Huayopata'),
(764, 'Maranura , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Maranura'),
(765, 'Ocobamba , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Ocobamba'),
(766, 'Quellouno , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Quellouno'),
(767, 'Kimbiri , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Kimbiri'),
(768, 'Santa Teresa , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Santa Teresa'),
(769, 'Vilcabamba , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Vilcabamba'),
(770, 'Pichari , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Pichari'),
(771, 'Inkawasi , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Inkawasi'),
(772, 'Villa Virgen , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Villa Virgen'),
(773, 'Villa Kintiarina , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Villa Kintiarina'),
(774, 'Megantoni , La Convencion , Cusco', 'Cusco', 'La Convencion', 'Megantoni'),
(775, 'Paruro , Paruro , Cusco', 'Cusco', 'Paruro', 'Paruro'),
(776, 'Accha , Paruro , Cusco', 'Cusco', 'Paruro', 'Accha'),
(777, 'Ccapi , Paruro , Cusco', 'Cusco', 'Paruro', 'Ccapi'),
(778, 'Colcha , Paruro , Cusco', 'Cusco', 'Paruro', 'Colcha'),
(779, 'Huanoquite , Paruro , Cusco', 'Cusco', 'Paruro', 'Huanoquite'),
(780, 'Omacha , Paruro , Cusco', 'Cusco', 'Paruro', 'Omacha'),
(781, 'Paccaritambo , Paruro , Cusco', 'Cusco', 'Paruro', 'Paccaritambo'),
(782, 'Pillpinto , Paruro , Cusco', 'Cusco', 'Paruro', 'Pillpinto'),
(783, 'Yaurisque , Paruro , Cusco', 'Cusco', 'Paruro', 'Yaurisque'),
(784, 'Paucartambo , Paucartambo , Cusco', 'Cusco', 'Paucartambo', 'Paucartambo'),
(785, 'Caicay , Paucartambo , Cusco', 'Cusco', 'Paucartambo', 'Caicay'),
(786, 'Challabamba , Paucartambo , Cusco', 'Cusco', 'Paucartambo', 'Challabamba'),
(787, 'Colquepata , Paucartambo , Cusco', 'Cusco', 'Paucartambo', 'Colquepata'),
(788, 'Huancarani , Paucartambo , Cusco', 'Cusco', 'Paucartambo', 'Huancarani'),
(789, 'Kosñipata , Paucartambo , Cusco', 'Cusco', 'Paucartambo', 'Kosñipata'),
(790, 'Urcos , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Urcos'),
(791, 'Andahuaylillas , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Andahuaylillas'),
(792, 'Camanti , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Camanti'),
(793, 'Ccarhuayo , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Ccarhuayo'),
(794, 'Ccatca , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Ccatca'),
(795, 'Cusipata , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Cusipata'),
(796, 'Huaro , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Huaro'),
(797, 'Lucre , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Lucre'),
(798, 'Marcapata , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Marcapata'),
(799, 'Ocongate , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Ocongate'),
(800, 'Oropesa , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Oropesa'),
(801, 'Quiquijana , Quispicanchi , Cusco', 'Cusco', 'Quispicanchi', 'Quiquijana'),
(802, 'Urubamba , Urubamba , Cusco', 'Cusco', 'Urubamba', 'Urubamba'),
(803, 'Chinchero , Urubamba , Cusco', 'Cusco', 'Urubamba', 'Chinchero'),
(804, 'Huayllabamba , Urubamba , Cusco', 'Cusco', 'Urubamba', 'Huayllabamba'),
(805, 'Machupicchu , Urubamba , Cusco', 'Cusco', 'Urubamba', 'Machupicchu'),
(806, 'Maras , Urubamba , Cusco', 'Cusco', 'Urubamba', 'Maras'),
(807, 'Ollantaytambo , Urubamba , Cusco', 'Cusco', 'Urubamba', 'Ollantaytambo'),
(808, 'Yucay , Urubamba , Cusco', 'Cusco', 'Urubamba', 'Yucay'),
(809, 'Huancavelica , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Huancavelica'),
(810, 'Acobambilla , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Acobambilla'),
(811, 'Acoria , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Acoria'),
(812, 'Conayca , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Conayca'),
(813, 'Cuenca , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Cuenca'),
(814, 'Huachocolpa , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Huachocolpa'),
(815, 'Huayllahuara , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Huayllahuara'),
(816, 'Izcuchaca , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Izcuchaca'),
(817, 'Laria , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Laria'),
(818, 'Manta , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Manta'),
(819, 'Mariscal Caceres , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Mariscal Caceres'),
(820, 'Moya , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Moya'),
(821, 'Nuevo Occoro , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Nuevo Occoro'),
(822, 'Palca , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Palca'),
(823, 'Pilchaca , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Pilchaca'),
(824, 'Vilca , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Vilca'),
(825, 'Yauli , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Yauli'),
(826, 'Ascension , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Ascension'),
(827, 'Huando , Huancavelica , Huancavelica', 'Huancavelica', 'Huancavelica', 'Huando'),
(828, 'Acobamba , Acobamba , Huancavelica', 'Huancavelica', 'Acobamba', 'Acobamba'),
(829, 'Andabamba , Acobamba , Huancavelica', 'Huancavelica', 'Acobamba', 'Andabamba'),
(830, 'Anta , Acobamba , Huancavelica', 'Huancavelica', 'Acobamba', 'Anta'),
(831, 'Caja , Acobamba , Huancavelica', 'Huancavelica', 'Acobamba', 'Caja'),
(832, 'Marcas , Acobamba , Huancavelica', 'Huancavelica', 'Acobamba', 'Marcas'),
(833, 'Paucara , Acobamba , Huancavelica', 'Huancavelica', 'Acobamba', 'Paucara'),
(834, 'Pomacocha , Acobamba , Huancavelica', 'Huancavelica', 'Acobamba', 'Pomacocha'),
(835, 'Rosario , Acobamba , Huancavelica', 'Huancavelica', 'Acobamba', 'Rosario'),
(836, 'Lircay , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Lircay'),
(837, 'Anchonga , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Anchonga'),
(838, 'Callanmarca , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Callanmarca'),
(839, 'Ccochaccasa , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Ccochaccasa'),
(840, 'Chincho , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Chincho'),
(841, 'Congalla , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Congalla'),
(842, 'Huanca-Huanca , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Huanca-Huanca'),
(843, 'Huayllay Grande , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Huayllay Grande'),
(844, 'Julcamarca , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Julcamarca'),
(845, 'San Antonio de Antaparco , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'San Antonio de Antaparco'),
(846, 'Santo Tomas de Pata , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Santo Tomas de Pata'),
(847, 'Secclla , Angaraes , Huancavelica', 'Huancavelica', 'Angaraes', 'Secclla'),
(848, 'Castrovirreyna , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Castrovirreyna'),
(849, 'Arma , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Arma'),
(850, 'Aurahua , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Aurahua'),
(851, 'Capillas , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Capillas'),
(852, 'Chupamarca , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Chupamarca'),
(853, 'Cocas , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Cocas'),
(854, 'Huachos , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Huachos'),
(855, 'Huamatambo , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Huamatambo'),
(856, 'Mollepampa , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Mollepampa'),
(857, 'San Juan , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'San Juan'),
(858, 'Santa Ana , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Santa Ana'),
(859, 'Tantara , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Tantara'),
(860, 'Ticrapo , Castrovirreyna , Huancavelica', 'Huancavelica', 'Castrovirreyna', 'Ticrapo'),
(861, 'Churcampa , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'Churcampa'),
(862, 'Anco , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'Anco'),
(863, 'Chinchihuasi , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'Chinchihuasi'),
(864, 'El Carmen , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'El Carmen'),
(865, 'La Merced , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'La Merced'),
(866, 'Locroja , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'Locroja'),
(867, 'Paucarbamba , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'Paucarbamba'),
(868, 'San Miguel de Mayocc , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'San Miguel de Mayocc'),
(869, 'San Pedro de Coris , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'San Pedro de Coris'),
(870, 'Pachamarca , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'Pachamarca'),
(871, 'Cosme , Churcampa , Huancavelica', 'Huancavelica', 'Churcampa', 'Cosme'),
(872, 'Huaytara , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Huaytara'),
(873, 'Ayavi , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Ayavi'),
(874, 'Cordova , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Cordova'),
(875, 'Huayacundo Arma , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Huayacundo Arma'),
(876, 'Laramarca , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Laramarca'),
(877, 'Ocoyo , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Ocoyo'),
(878, 'Pilpichaca , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Pilpichaca'),
(879, 'Querco , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Querco'),
(880, 'Quito-Arma , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Quito-Arma'),
(881, 'San Antonio de Cusicancha , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'San Antonio de Cusicancha'),
(882, 'San Francisco de Sangayaico , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'San Francisco de Sangayaico'),
(883, 'San Isidro , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'San Isidro'),
(884, 'Santiago de Chocorvos , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Santiago de Chocorvos'),
(885, 'Santiago de Quirahuara , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Santiago de Quirahuara'),
(886, 'Santo Domingo de Capillas , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Santo Domingo de Capillas'),
(887, 'Tambo , Huaytara , Huancavelica', 'Huancavelica', 'Huaytara', 'Tambo'),
(888, 'Pampas , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Pampas'),
(889, 'Acostambo , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Acostambo'),
(890, 'Acraquia , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Acraquia'),
(891, 'Ahuaycha , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Ahuaycha'),
(892, 'Colcabamba , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Colcabamba'),
(893, 'Daniel Hernandez , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Daniel Hernandez'),
(894, 'Huachocolpa , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Huachocolpa'),
(895, 'Huaribamba , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Huaribamba'),
(896, 'Ñahuimpuquio , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Ñahuimpuquio'),
(897, 'Pazos , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Pazos'),
(898, 'Quishuar , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Quishuar'),
(899, 'Salcabamba , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Salcabamba'),
(900, 'Salcahuasi , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Salcahuasi'),
(901, 'San Marcos de Rocchac , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'San Marcos de Rocchac'),
(902, 'Surcubamba , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Surcubamba'),
(903, 'Tintay Puncu , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Tintay Puncu'),
(904, 'Quichuas , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Quichuas'),
(905, 'Andaymarca , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Andaymarca'),
(906, 'Roble , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Roble'),
(907, 'Pichos , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Pichos'),
(908, 'Santiago de Tucuma , Tayacaja , Huancavelica', 'Huancavelica', 'Tayacaja', 'Santiago de Tucuma'),
(909, 'Huanuco , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'Huanuco'),
(910, 'Amarilis , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'Amarilis'),
(911, 'Chinchao , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'Chinchao'),
(912, 'Churubamba , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'Churubamba'),
(913, 'Margos , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'Margos'),
(914, 'Quisqui , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'Quisqui'),
(915, 'San Francisco de Cayran , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'San Francisco de Cayran'),
(916, 'San Pedro de Chaulan , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'San Pedro de Chaulan'),
(917, 'Santa Maria del Valle , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'Santa Maria del Valle'),
(918, 'Yarumayo , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'Yarumayo'),
(919, 'Pillco Marca , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'Pillco Marca'),
(920, 'Yacus , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'Yacus'),
(921, 'San Pablo de Pillao , Huanuco , Huanuco', 'Huanuco', 'Huanuco', 'San Pablo de Pillao'),
(922, 'Ambo , Ambo , Huanuco', 'Huanuco', 'Ambo', 'Ambo'),
(923, 'Cayna , Ambo , Huanuco', 'Huanuco', 'Ambo', 'Cayna'),
(924, 'Colpas , Ambo , Huanuco', 'Huanuco', 'Ambo', 'Colpas'),
(925, 'Conchamarca , Ambo , Huanuco', 'Huanuco', 'Ambo', 'Conchamarca'),
(926, 'Huacar , Ambo , Huanuco', 'Huanuco', 'Ambo', 'Huacar'),
(927, 'San Francisco , Ambo , Huanuco', 'Huanuco', 'Ambo', 'San Francisco'),
(928, 'San Rafael , Ambo , Huanuco', 'Huanuco', 'Ambo', 'San Rafael'),
(929, 'Tomay Kichwa , Ambo , Huanuco', 'Huanuco', 'Ambo', 'Tomay Kichwa'),
(930, 'La Union , Dos de Mayo , Huanuco', 'Huanuco', 'Dos de Mayo', 'La Union'),
(931, 'Chuquis , Dos de Mayo , Huanuco', 'Huanuco', 'Dos de Mayo', 'Chuquis'),
(932, 'Marias , Dos de Mayo , Huanuco', 'Huanuco', 'Dos de Mayo', 'Marias'),
(933, 'Pachas , Dos de Mayo , Huanuco', 'Huanuco', 'Dos de Mayo', 'Pachas'),
(934, 'Quivilla , Dos de Mayo , Huanuco', 'Huanuco', 'Dos de Mayo', 'Quivilla'),
(935, 'Ripan , Dos de Mayo , Huanuco', 'Huanuco', 'Dos de Mayo', 'Ripan'),
(936, 'Shunqui , Dos de Mayo , Huanuco', 'Huanuco', 'Dos de Mayo', 'Shunqui'),
(937, 'Sillapata , Dos de Mayo , Huanuco', 'Huanuco', 'Dos de Mayo', 'Sillapata'),
(938, 'Yanas , Dos de Mayo , Huanuco', 'Huanuco', 'Dos de Mayo', 'Yanas'),
(939, 'Huacaybamba , Huacaybamba , Huanuco', 'Huanuco', 'Huacaybamba', 'Huacaybamba'),
(940, 'Canchabamba , Huacaybamba , Huanuco', 'Huanuco', 'Huacaybamba', 'Canchabamba'),
(941, 'Cochabamba , Huacaybamba , Huanuco', 'Huanuco', 'Huacaybamba', 'Cochabamba'),
(942, 'Pinra , Huacaybamba , Huanuco', 'Huanuco', 'Huacaybamba', 'Pinra'),
(943, 'Llata , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Llata'),
(944, 'Arancay , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Arancay'),
(945, 'Chavin de Pariarca , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Chavin de Pariarca'),
(946, 'Jacas Grande , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Jacas Grande'),
(947, 'Jircan , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Jircan'),
(948, 'Miraflores , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Miraflores'),
(949, 'Monzon , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Monzon'),
(950, 'Punchao , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Punchao'),
(951, 'Puños , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Puños'),
(952, 'Singa , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Singa'),
(953, 'Tantamayo , Huamalies , Huanuco', 'Huanuco', 'Huamalies', 'Tantamayo'),
(954, 'Rupa-Rupa , Leoncio Prado , Huanuco', 'Huanuco', 'Leoncio Prado', 'Rupa-Rupa'),
(955, 'Daniel Alomias Robles , Leoncio Prado , Huanuco', 'Huanuco', 'Leoncio Prado', 'Daniel Alomias Robles'),
(956, 'Hermilio Valdizan , Leoncio Prado , Huanuco', 'Huanuco', 'Leoncio Prado', 'Hermilio Valdizan'),
(957, 'Jose Crespo y Castillo , Leoncio Prado , Huanuco', 'Huanuco', 'Leoncio Prado', 'Jose Crespo y Castillo'),
(958, 'Luyando , Leoncio Prado , Huanuco', 'Huanuco', 'Leoncio Prado', 'Luyando'),
(959, 'Mariano Damaso Beraun , Leoncio Prado , Huanuco', 'Huanuco', 'Leoncio Prado', 'Mariano Damaso Beraun'),
(960, 'Pucayacu , Leoncio Prado , Huanuco', 'Huanuco', 'Leoncio Prado', 'Pucayacu'),
(961, 'Castillo Grande , Leoncio Prado , Huanuco', 'Huanuco', 'Leoncio Prado', 'Castillo Grande'),
(962, 'Pueblo Nuevo , Leoncio Prado , Huanuco', 'Huanuco', 'Leoncio Prado', 'Pueblo Nuevo'),
(963, 'Santo Domingo de Anda , Leoncio Prado , Huanuco', 'Huanuco', 'Leoncio Prado', 'Santo Domingo de Anda'),
(964, 'Huacrachuco , Marañon , Huanuco', 'Huanuco', 'Marañon', 'Huacrachuco'),
(965, 'Cholon , Marañon , Huanuco', 'Huanuco', 'Marañon', 'Cholon'),
(966, 'San Buenaventura , Marañon , Huanuco', 'Huanuco', 'Marañon', 'San Buenaventura'),
(967, 'La Morada , Marañon , Huanuco', 'Huanuco', 'Marañon', 'La Morada'),
(968, 'Santa Rosa de Alto Yanajanca , Marañon , Huanuco', 'Huanuco', 'Marañon', 'Santa Rosa de Alto Yanajanca'),
(969, 'Panao , Pachitea , Huanuco', 'Huanuco', 'Pachitea', 'Panao'),
(970, 'Chaglla , Pachitea , Huanuco', 'Huanuco', 'Pachitea', 'Chaglla'),
(971, 'Molino , Pachitea , Huanuco', 'Huanuco', 'Pachitea', 'Molino'),
(972, 'Umari , Pachitea , Huanuco', 'Huanuco', 'Pachitea', 'Umari'),
(973, 'Puerto Inca , Puerto Inca , Huanuco', 'Huanuco', 'Puerto Inca', 'Puerto Inca'),
(974, 'Codo del Pozuzo , Puerto Inca , Huanuco', 'Huanuco', 'Puerto Inca', 'Codo del Pozuzo'),
(975, 'Honoria , Puerto Inca , Huanuco', 'Huanuco', 'Puerto Inca', 'Honoria'),
(976, 'Tournavista , Puerto Inca , Huanuco', 'Huanuco', 'Puerto Inca', 'Tournavista'),
(977, 'Yuyapichis , Puerto Inca , Huanuco', 'Huanuco', 'Puerto Inca', 'Yuyapichis'),
(978, 'Jesus , Lauricocha , Huanuco', 'Huanuco', 'Lauricocha', 'Jesus'),
(979, 'Baños , Lauricocha , Huanuco', 'Huanuco', 'Lauricocha', 'Baños'),
(980, 'Jivia , Lauricocha , Huanuco', 'Huanuco', 'Lauricocha', 'Jivia'),
(981, 'Queropalca , Lauricocha , Huanuco', 'Huanuco', 'Lauricocha', 'Queropalca'),
(982, 'Rondos , Lauricocha , Huanuco', 'Huanuco', 'Lauricocha', 'Rondos'),
(983, 'San Francisco de Asis , Lauricocha , Huanuco', 'Huanuco', 'Lauricocha', 'San Francisco de Asis'),
(984, 'San Miguel de Cauri , Lauricocha , Huanuco', 'Huanuco', 'Lauricocha', 'San Miguel de Cauri'),
(985, 'Chavinillo , Yarowilca , Huanuco', 'Huanuco', 'Yarowilca', 'Chavinillo'),
(986, 'Cahuac , Yarowilca , Huanuco', 'Huanuco', 'Yarowilca', 'Cahuac'),
(987, 'Chacabamba , Yarowilca , Huanuco', 'Huanuco', 'Yarowilca', 'Chacabamba'),
(988, 'Aparicio Pomares , Yarowilca , Huanuco', 'Huanuco', 'Yarowilca', 'Aparicio Pomares'),
(989, 'Jacas Chico , Yarowilca , Huanuco', 'Huanuco', 'Yarowilca', 'Jacas Chico'),
(990, 'Obas , Yarowilca , Huanuco', 'Huanuco', 'Yarowilca', 'Obas'),
(991, 'Pampamarca , Yarowilca , Huanuco', 'Huanuco', 'Yarowilca', 'Pampamarca'),
(992, 'Choras , Yarowilca , Huanuco', 'Huanuco', 'Yarowilca', 'Choras'),
(993, 'Ica , Ica , Ica', 'Ica', 'Ica', 'Ica'),
(994, 'La Tinguiña , Ica , Ica', 'Ica', 'Ica', 'La Tinguiña'),
(995, 'Los Aquijes , Ica , Ica', 'Ica', 'Ica', 'Los Aquijes'),
(996, 'Ocucaje , Ica , Ica', 'Ica', 'Ica', 'Ocucaje'),
(997, 'Pachacutec , Ica , Ica', 'Ica', 'Ica', 'Pachacutec'),
(998, 'Parcona , Ica , Ica', 'Ica', 'Ica', 'Parcona'),
(999, 'Pueblo Nuevo , Ica , Ica', 'Ica', 'Ica', 'Pueblo Nuevo'),
(1000, 'Salas , Ica , Ica', 'Ica', 'Ica', 'Salas'),
(1001, 'San Jose de los Molinos , Ica , Ica', 'Ica', 'Ica', 'San Jose de los Molinos'),
(1002, 'San Juan Bautista , Ica , Ica', 'Ica', 'Ica', 'San Juan Bautista'),
(1003, 'Santiago , Ica , Ica', 'Ica', 'Ica', 'Santiago'),
(1004, 'Subtanjalla , Ica , Ica', 'Ica', 'Ica', 'Subtanjalla'),
(1005, 'Tate , Ica , Ica', 'Ica', 'Ica', 'Tate'),
(1006, 'Yauca del Rosario , Ica , Ica', 'Ica', 'Ica', 'Yauca del Rosario'),
(1007, 'Chincha Alta , Chincha , Ica', 'Ica', 'Chincha', 'Chincha Alta'),
(1008, 'Alto Laran , Chincha , Ica', 'Ica', 'Chincha', 'Alto Laran'),
(1009, 'Chavin , Chincha , Ica', 'Ica', 'Chincha', 'Chavin'),
(1010, 'Chincha Baja , Chincha , Ica', 'Ica', 'Chincha', 'Chincha Baja'),
(1011, 'El Carmen , Chincha , Ica', 'Ica', 'Chincha', 'El Carmen'),
(1012, 'Grocio Prado , Chincha , Ica', 'Ica', 'Chincha', 'Grocio Prado'),
(1013, 'Pueblo Nuevo , Chincha , Ica', 'Ica', 'Chincha', 'Pueblo Nuevo'),
(1014, 'San Juan de Yanac , Chincha , Ica', 'Ica', 'Chincha', 'San Juan de Yanac'),
(1015, 'San Pedro de Huacarpana , Chincha , Ica', 'Ica', 'Chincha', 'San Pedro de Huacarpana'),
(1016, 'Sunampe , Chincha , Ica', 'Ica', 'Chincha', 'Sunampe'),
(1017, 'Tambo de Mora , Chincha , Ica', 'Ica', 'Chincha', 'Tambo de Mora'),
(1018, 'Nazca , Nazca , Ica', 'Ica', 'Nazca', 'Nazca'),
(1019, 'Changuillo , Nazca , Ica', 'Ica', 'Nazca', 'Changuillo'),
(1020, 'El Ingenio , Nazca , Ica', 'Ica', 'Nazca', 'El Ingenio'),
(1021, 'Marcona , Nazca , Ica', 'Ica', 'Nazca', 'Marcona'),
(1022, 'Vista Alegre , Nazca , Ica', 'Ica', 'Nazca', 'Vista Alegre'),
(1023, 'Palpa , Palpa , Ica', 'Ica', 'Palpa', 'Palpa'),
(1024, 'Llipata , Palpa , Ica', 'Ica', 'Palpa', 'Llipata'),
(1025, 'Rio Grande , Palpa , Ica', 'Ica', 'Palpa', 'Rio Grande'),
(1026, 'Santa Cruz , Palpa , Ica', 'Ica', 'Palpa', 'Santa Cruz'),
(1027, 'Tibillo , Palpa , Ica', 'Ica', 'Palpa', 'Tibillo'),
(1028, 'Pisco , Pisco , Ica', 'Ica', 'Pisco', 'Pisco'),
(1029, 'Huancano , Pisco , Ica', 'Ica', 'Pisco', 'Huancano'),
(1030, 'Humay , Pisco , Ica', 'Ica', 'Pisco', 'Humay'),
(1031, 'Independencia , Pisco , Ica', 'Ica', 'Pisco', 'Independencia'),
(1032, 'Paracas , Pisco , Ica', 'Ica', 'Pisco', 'Paracas'),
(1033, 'San Andres , Pisco , Ica', 'Ica', 'Pisco', 'San Andres'),
(1034, 'San Clemente , Pisco , Ica', 'Ica', 'Pisco', 'San Clemente'),
(1035, 'Tupac Amaru Inca , Pisco , Ica', 'Ica', 'Pisco', 'Tupac Amaru Inca'),
(1036, 'Huancayo , Huancayo , Junin', 'Junin', 'Huancayo', 'Huancayo'),
(1037, 'Carhuacallanga , Huancayo , Junin', 'Junin', 'Huancayo', 'Carhuacallanga'),
(1038, 'Chacapampa , Huancayo , Junin', 'Junin', 'Huancayo', 'Chacapampa'),
(1039, 'Chicche , Huancayo , Junin', 'Junin', 'Huancayo', 'Chicche'),
(1040, 'Chilca , Huancayo , Junin', 'Junin', 'Huancayo', 'Chilca'),
(1041, 'Chongos Alto , Huancayo , Junin', 'Junin', 'Huancayo', 'Chongos Alto'),
(1042, 'Chupuro , Huancayo , Junin', 'Junin', 'Huancayo', 'Chupuro'),
(1043, 'Colca , Huancayo , Junin', 'Junin', 'Huancayo', 'Colca'),
(1044, 'Cullhuas , Huancayo , Junin', 'Junin', 'Huancayo', 'Cullhuas'),
(1045, 'El Tambo , Huancayo , Junin', 'Junin', 'Huancayo', 'El Tambo'),
(1046, 'Huacrapuquio , Huancayo , Junin', 'Junin', 'Huancayo', 'Huacrapuquio'),
(1047, 'Hualhuas , Huancayo , Junin', 'Junin', 'Huancayo', 'Hualhuas'),
(1048, 'Huancan , Huancayo , Junin', 'Junin', 'Huancayo', 'Huancan'),
(1049, 'Huasicancha , Huancayo , Junin', 'Junin', 'Huancayo', 'Huasicancha'),
(1050, 'Huayucachi , Huancayo , Junin', 'Junin', 'Huancayo', 'Huayucachi'),
(1051, 'Ingenio , Huancayo , Junin', 'Junin', 'Huancayo', 'Ingenio'),
(1052, 'Pariahuanca , Huancayo , Junin', 'Junin', 'Huancayo', 'Pariahuanca'),
(1053, 'Pilcomayo , Huancayo , Junin', 'Junin', 'Huancayo', 'Pilcomayo'),
(1054, 'Pucara , Huancayo , Junin', 'Junin', 'Huancayo', 'Pucara'),
(1055, 'Quichuay , Huancayo , Junin', 'Junin', 'Huancayo', 'Quichuay'),
(1056, 'Quilcas , Huancayo , Junin', 'Junin', 'Huancayo', 'Quilcas'),
(1057, 'San Agustin , Huancayo , Junin', 'Junin', 'Huancayo', 'San Agustin'),
(1058, 'San Jeronimo de Tunan , Huancayo , Junin', 'Junin', 'Huancayo', 'San Jeronimo de Tunan'),
(1059, 'Saño , Huancayo , Junin', 'Junin', 'Huancayo', 'Saño'),
(1060, 'Sapallanga , Huancayo , Junin', 'Junin', 'Huancayo', 'Sapallanga'),
(1061, 'Sicaya , Huancayo , Junin', 'Junin', 'Huancayo', 'Sicaya'),
(1062, 'Santo Domingo de Acobamba , Huancayo , Junin', 'Junin', 'Huancayo', 'Santo Domingo de Acobamba'),
(1063, 'Viques , Huancayo , Junin', 'Junin', 'Huancayo', 'Viques'),
(1064, 'Concepcion , Concepcion , Junin', 'Junin', 'Concepcion', 'Concepcion'),
(1065, 'Aco , Concepcion , Junin', 'Junin', 'Concepcion', 'Aco'),
(1066, 'Andamarca , Concepcion , Junin', 'Junin', 'Concepcion', 'Andamarca'),
(1067, 'Chambara , Concepcion , Junin', 'Junin', 'Concepcion', 'Chambara'),
(1068, 'Cochas , Concepcion , Junin', 'Junin', 'Concepcion', 'Cochas'),
(1069, 'Comas , Concepcion , Junin', 'Junin', 'Concepcion', 'Comas'),
(1070, 'Heroinas Toledo , Concepcion , Junin', 'Junin', 'Concepcion', 'Heroinas Toledo'),
(1071, 'Manzanares , Concepcion , Junin', 'Junin', 'Concepcion', 'Manzanares'),
(1072, 'Mariscal Castilla , Concepcion , Junin', 'Junin', 'Concepcion', 'Mariscal Castilla'),
(1073, 'Matahuasi , Concepcion , Junin', 'Junin', 'Concepcion', 'Matahuasi'),
(1074, 'Mito , Concepcion , Junin', 'Junin', 'Concepcion', 'Mito'),
(1075, 'Nueve de Julio , Concepcion , Junin', 'Junin', 'Concepcion', 'Nueve de Julio'),
(1076, 'Orcotuna , Concepcion , Junin', 'Junin', 'Concepcion', 'Orcotuna'),
(1077, 'San Jose de Quero , Concepcion , Junin', 'Junin', 'Concepcion', 'San Jose de Quero'),
(1078, 'Santa Rosa de Ocopa , Concepcion , Junin', 'Junin', 'Concepcion', 'Santa Rosa de Ocopa'),
(1079, 'Chanchamayo , Chanchamayo , Junin', 'Junin', 'Chanchamayo', 'Chanchamayo'),
(1080, 'Perene , Chanchamayo , Junin', 'Junin', 'Chanchamayo', 'Perene'),
(1081, 'Pichanaqui , Chanchamayo , Junin', 'Junin', 'Chanchamayo', 'Pichanaqui'),
(1082, 'San Luis de Shuaro , Chanchamayo , Junin', 'Junin', 'Chanchamayo', 'San Luis de Shuaro'),
(1083, 'San Ramon , Chanchamayo , Junin', 'Junin', 'Chanchamayo', 'San Ramon'),
(1084, 'Vitoc , Chanchamayo , Junin', 'Junin', 'Chanchamayo', 'Vitoc'),
(1085, 'Jauja , Jauja , Junin', 'Junin', 'Jauja', 'Jauja'),
(1086, 'Acolla , Jauja , Junin', 'Junin', 'Jauja', 'Acolla'),
(1087, 'Apata , Jauja , Junin', 'Junin', 'Jauja', 'Apata'),
(1088, 'Ataura , Jauja , Junin', 'Junin', 'Jauja', 'Ataura'),
(1089, 'Canchayllo , Jauja , Junin', 'Junin', 'Jauja', 'Canchayllo'),
(1090, 'Curicaca , Jauja , Junin', 'Junin', 'Jauja', 'Curicaca'),
(1091, 'El Mantaro , Jauja , Junin', 'Junin', 'Jauja', 'El Mantaro'),
(1092, 'Huamali , Jauja , Junin', 'Junin', 'Jauja', 'Huamali'),
(1093, 'Huaripampa , Jauja , Junin', 'Junin', 'Jauja', 'Huaripampa'),
(1094, 'Huertas , Jauja , Junin', 'Junin', 'Jauja', 'Huertas'),
(1095, 'Janjaillo , Jauja , Junin', 'Junin', 'Jauja', 'Janjaillo'),
(1096, 'Julcan , Jauja , Junin', 'Junin', 'Jauja', 'Julcan'),
(1097, 'Leonor Ordoñez , Jauja , Junin', 'Junin', 'Jauja', 'Leonor Ordoñez'),
(1098, 'Llocllapampa , Jauja , Junin', 'Junin', 'Jauja', 'Llocllapampa'),
(1099, 'Marco , Jauja , Junin', 'Junin', 'Jauja', 'Marco'),
(1100, 'Masma , Jauja , Junin', 'Junin', 'Jauja', 'Masma'),
(1101, 'Masma Chicche , Jauja , Junin', 'Junin', 'Jauja', 'Masma Chicche'),
(1102, 'Molinos , Jauja , Junin', 'Junin', 'Jauja', 'Molinos'),
(1103, 'Monobamba , Jauja , Junin', 'Junin', 'Jauja', 'Monobamba'),
(1104, 'Muqui , Jauja , Junin', 'Junin', 'Jauja', 'Muqui'),
(1105, 'Muquiyauyo , Jauja , Junin', 'Junin', 'Jauja', 'Muquiyauyo'),
(1106, 'Paca , Jauja , Junin', 'Junin', 'Jauja', 'Paca'),
(1107, 'Paccha , Jauja , Junin', 'Junin', 'Jauja', 'Paccha'),
(1108, 'Pancan , Jauja , Junin', 'Junin', 'Jauja', 'Pancan'),
(1109, 'Parco , Jauja , Junin', 'Junin', 'Jauja', 'Parco'),
(1110, 'Pomacancha , Jauja , Junin', 'Junin', 'Jauja', 'Pomacancha'),
(1111, 'Ricran , Jauja , Junin', 'Junin', 'Jauja', 'Ricran'),
(1112, 'San Lorenzo , Jauja , Junin', 'Junin', 'Jauja', 'San Lorenzo'),
(1113, 'San Pedro de Chunan , Jauja , Junin', 'Junin', 'Jauja', 'San Pedro de Chunan'),
(1114, 'Sausa , Jauja , Junin', 'Junin', 'Jauja', 'Sausa'),
(1115, 'Sincos , Jauja , Junin', 'Junin', 'Jauja', 'Sincos'),
(1116, 'Tunan Marca , Jauja , Junin', 'Junin', 'Jauja', 'Tunan Marca'),
(1117, 'Yauli , Jauja , Junin', 'Junin', 'Jauja', 'Yauli'),
(1118, 'Yauyos , Jauja , Junin', 'Junin', 'Jauja', 'Yauyos'),
(1119, 'Junin , Junin , Junin', 'Junin', 'Junin', 'Junin'),
(1120, 'Carhuamayo , Junin , Junin', 'Junin', 'Junin', 'Carhuamayo'),
(1121, 'Ondores , Junin , Junin', 'Junin', 'Junin', 'Ondores'),
(1122, 'Ulcumayo , Junin , Junin', 'Junin', 'Junin', 'Ulcumayo'),
(1123, 'Satipo , Satipo , Junin', 'Junin', 'Satipo', 'Satipo'),
(1124, 'Coviriali , Satipo , Junin', 'Junin', 'Satipo', 'Coviriali'),
(1125, 'Llaylla , Satipo , Junin', 'Junin', 'Satipo', 'Llaylla'),
(1126, 'Mazamari , Satipo , Junin', 'Junin', 'Satipo', 'Mazamari'),
(1127, 'Pampa Hermosa , Satipo , Junin', 'Junin', 'Satipo', 'Pampa Hermosa'),
(1128, 'Pangoa , Satipo , Junin', 'Junin', 'Satipo', 'Pangoa'),
(1129, 'Rio Negro , Satipo , Junin', 'Junin', 'Satipo', 'Rio Negro'),
(1130, 'Rio Tambo , Satipo , Junin', 'Junin', 'Satipo', 'Rio Tambo'),
(1131, 'Vizcatan del Ene , Satipo , Junin', 'Junin', 'Satipo', 'Vizcatan del Ene'),
(1132, 'Tarma , Tarma , Junin', 'Junin', 'Tarma', 'Tarma'),
(1133, 'Acobamba , Tarma , Junin', 'Junin', 'Tarma', 'Acobamba'),
(1134, 'Huaricolca , Tarma , Junin', 'Junin', 'Tarma', 'Huaricolca'),
(1135, 'Huasahuasi , Tarma , Junin', 'Junin', 'Tarma', 'Huasahuasi'),
(1136, 'La Union , Tarma , Junin', 'Junin', 'Tarma', 'La Union'),
(1137, 'Palca , Tarma , Junin', 'Junin', 'Tarma', 'Palca'),
(1138, 'Palcamayo , Tarma , Junin', 'Junin', 'Tarma', 'Palcamayo'),
(1139, 'San Pedro de Cajas , Tarma , Junin', 'Junin', 'Tarma', 'San Pedro de Cajas'),
(1140, 'Tapo , Tarma , Junin', 'Junin', 'Tarma', 'Tapo'),
(1141, 'La Oroya , Yauli , Junin', 'Junin', 'Yauli', 'La Oroya'),
(1142, 'Chacapalpa , Yauli , Junin', 'Junin', 'Yauli', 'Chacapalpa'),
(1143, 'Huay-Huay , Yauli , Junin', 'Junin', 'Yauli', 'Huay-Huay'),
(1144, 'Marcapomacocha , Yauli , Junin', 'Junin', 'Yauli', 'Marcapomacocha'),
(1145, 'Morococha , Yauli , Junin', 'Junin', 'Yauli', 'Morococha'),
(1146, 'Paccha , Yauli , Junin', 'Junin', 'Yauli', 'Paccha'),
(1147, 'Santa Barbara de Carhuacayan , Yauli , Junin', 'Junin', 'Yauli', 'Santa Barbara de Carhuacayan'),
(1148, 'Santa Rosa de Sacco , Yauli , Junin', 'Junin', 'Yauli', 'Santa Rosa de Sacco'),
(1149, 'Suitucancha , Yauli , Junin', 'Junin', 'Yauli', 'Suitucancha'),
(1150, 'Yauli , Yauli , Junin', 'Junin', 'Yauli', 'Yauli'),
(1151, 'Chupaca , Chupaca , Junin', 'Junin', 'Chupaca', 'Chupaca'),
(1152, 'Ahuac , Chupaca , Junin', 'Junin', 'Chupaca', 'Ahuac'),
(1153, 'Chongos Bajo , Chupaca , Junin', 'Junin', 'Chupaca', 'Chongos Bajo'),
(1154, 'Huachac , Chupaca , Junin', 'Junin', 'Chupaca', 'Huachac'),
(1155, 'Huamancaca Chico , Chupaca , Junin', 'Junin', 'Chupaca', 'Huamancaca Chico'),
(1156, 'San Juan de Yscos , Chupaca , Junin', 'Junin', 'Chupaca', 'San Juan de Yscos'),
(1157, 'San Juan de Jarpa , Chupaca , Junin', 'Junin', 'Chupaca', 'San Juan de Jarpa'),
(1158, 'Tres de Diciembre , Chupaca , Junin', 'Junin', 'Chupaca', 'Tres de Diciembre'),
(1159, 'Yanacancha , Chupaca , Junin', 'Junin', 'Chupaca', 'Yanacancha'),
(1160, 'Trujillo , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'Trujillo'),
(1161, 'El Porvenir , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'El Porvenir'),
(1162, 'Florencia de Mora , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'Florencia de Mora'),
(1163, 'Huanchaco , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'Huanchaco'),
(1164, 'La Esperanza , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'La Esperanza'),
(1165, 'Laredo , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'Laredo'),
(1166, 'Moche , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'Moche'),
(1167, 'Poroto , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'Poroto'),
(1168, 'Salaverry , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'Salaverry'),
(1169, 'Simbal , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'Simbal'),
(1170, 'Victor Larco Herrera , Trujillo , La Libertad', 'La Libertad', 'Trujillo', 'Victor Larco Herrera'),
(1171, 'Ascope , Ascope , La Libertad', 'La Libertad', 'Ascope', 'Ascope'),
(1172, 'Chicama , Ascope , La Libertad', 'La Libertad', 'Ascope', 'Chicama'),
(1173, 'Chocope , Ascope , La Libertad', 'La Libertad', 'Ascope', 'Chocope'),
(1174, 'Magdalena de Cao , Ascope , La Libertad', 'La Libertad', 'Ascope', 'Magdalena de Cao'),
(1175, 'Paijan , Ascope , La Libertad', 'La Libertad', 'Ascope', 'Paijan'),
(1176, 'Razuri , Ascope , La Libertad', 'La Libertad', 'Ascope', 'Razuri'),
(1177, 'Santiago de Cao , Ascope , La Libertad', 'La Libertad', 'Ascope', 'Santiago de Cao'),
(1178, 'Casa Grande , Ascope , La Libertad', 'La Libertad', 'Ascope', 'Casa Grande'),
(1179, 'Bolivar , Bolivar , La Libertad', 'La Libertad', 'Bolivar', 'Bolivar'),
(1180, 'Bambamarca , Bolivar , La Libertad', 'La Libertad', 'Bolivar', 'Bambamarca'),
(1181, 'Condormarca , Bolivar , La Libertad', 'La Libertad', 'Bolivar', 'Condormarca'),
(1182, 'Longotea , Bolivar , La Libertad', 'La Libertad', 'Bolivar', 'Longotea'),
(1183, 'Uchumarca , Bolivar , La Libertad', 'La Libertad', 'Bolivar', 'Uchumarca'),
(1184, 'Ucuncha , Bolivar , La Libertad', 'La Libertad', 'Bolivar', 'Ucuncha'),
(1185, 'Chepen , Chepen , La Libertad', 'La Libertad', 'Chepen', 'Chepen'),
(1186, 'Pacanga , Chepen , La Libertad', 'La Libertad', 'Chepen', 'Pacanga'),
(1187, 'Pueblo Nuevo , Chepen , La Libertad', 'La Libertad', 'Chepen', 'Pueblo Nuevo'),
(1188, 'Julcan , Julcan , La Libertad', 'La Libertad', 'Julcan', 'Julcan'),
(1189, 'Calamarca , Julcan , La Libertad', 'La Libertad', 'Julcan', 'Calamarca'),
(1190, 'Carabamba , Julcan , La Libertad', 'La Libertad', 'Julcan', 'Carabamba'),
(1191, 'Huaso , Julcan , La Libertad', 'La Libertad', 'Julcan', 'Huaso'),
(1192, 'Otuzco , Otuzco , La Libertad', 'La Libertad', 'Otuzco', 'Otuzco'),
(1193, 'Agallpampa , Otuzco , La Libertad', 'La Libertad', 'Otuzco', 'Agallpampa'),
(1194, 'Charat , Otuzco , La Libertad', 'La Libertad', 'Otuzco', 'Charat'),
(1195, 'Huaranchal , Otuzco , La Libertad', 'La Libertad', 'Otuzco', 'Huaranchal'),
(1196, 'La Cuesta , Otuzco , La Libertad', 'La Libertad', 'Otuzco', 'La Cuesta'),
(1197, 'Mache , Otuzco , La Libertad', 'La Libertad', 'Otuzco', 'Mache'),
(1198, 'Paranday , Otuzco , La Libertad', 'La Libertad', 'Otuzco', 'Paranday'),
(1199, 'Salpo , Otuzco , La Libertad', 'La Libertad', 'Otuzco', 'Salpo'),
(1200, 'Sinsicap , Otuzco , La Libertad', 'La Libertad', 'Otuzco', 'Sinsicap'),
(1201, 'Usquil , Otuzco , La Libertad', 'La Libertad', 'Otuzco', 'Usquil'),
(1202, 'San Pedro de Lloc , Pacasmayo , La Libertad', 'La Libertad', 'Pacasmayo', 'San Pedro de Lloc'),
(1203, 'Guadalupe , Pacasmayo , La Libertad', 'La Libertad', 'Pacasmayo', 'Guadalupe'),
(1204, 'Jequetepeque , Pacasmayo , La Libertad', 'La Libertad', 'Pacasmayo', 'Jequetepeque'),
(1205, 'Pacasmayo , Pacasmayo , La Libertad', 'La Libertad', 'Pacasmayo', 'Pacasmayo'),
(1206, 'San Jose , Pacasmayo , La Libertad', 'La Libertad', 'Pacasmayo', 'San Jose'),
(1207, 'Tayabamba , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Tayabamba'),
(1208, 'Buldibuyo , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Buldibuyo'),
(1209, 'Chillia , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Chillia'),
(1210, 'Huancaspata , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Huancaspata'),
(1211, 'Huaylillas , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Huaylillas'),
(1212, 'Huayo , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Huayo'),
(1213, 'Ongon , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Ongon'),
(1214, 'Parcoy , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Parcoy'),
(1215, 'Pataz , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Pataz'),
(1216, 'Pias , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Pias'),
(1217, 'Santiago de Challas , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Santiago de Challas'),
(1218, 'Taurija , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Taurija'),
(1219, 'Urpay , Pataz , La Libertad', 'La Libertad', 'Pataz', 'Urpay'),
(1220, 'Huamachuco , Sanchez Carrion , La Libertad', 'La Libertad', 'Sanchez Carrion', 'Huamachuco'),
(1221, 'Chugay , Sanchez Carrion , La Libertad', 'La Libertad', 'Sanchez Carrion', 'Chugay'),
(1222, 'Cochorco , Sanchez Carrion , La Libertad', 'La Libertad', 'Sanchez Carrion', 'Cochorco'),
(1223, 'Curgos , Sanchez Carrion , La Libertad', 'La Libertad', 'Sanchez Carrion', 'Curgos'),
(1224, 'Marcabal , Sanchez Carrion , La Libertad', 'La Libertad', 'Sanchez Carrion', 'Marcabal'),
(1225, 'Sanagoran , Sanchez Carrion , La Libertad', 'La Libertad', 'Sanchez Carrion', 'Sanagoran'),
(1226, 'Sarin , Sanchez Carrion , La Libertad', 'La Libertad', 'Sanchez Carrion', 'Sarin'),
(1227, 'Sartimbamba , Sanchez Carrion , La Libertad', 'La Libertad', 'Sanchez Carrion', 'Sartimbamba'),
(1228, 'Santiago de Chuco , Santiago de Chuco , La Libertad', 'La Libertad', 'Santiago de Chuco', 'Santiago de Chuco'),
(1229, 'Angasmarca , Santiago de Chuco , La Libertad', 'La Libertad', 'Santiago de Chuco', 'Angasmarca'),
(1230, 'Cachicadan , Santiago de Chuco , La Libertad', 'La Libertad', 'Santiago de Chuco', 'Cachicadan'),
(1231, 'Mollebamba , Santiago de Chuco , La Libertad', 'La Libertad', 'Santiago de Chuco', 'Mollebamba'),
(1232, 'Mollepata , Santiago de Chuco , La Libertad', 'La Libertad', 'Santiago de Chuco', 'Mollepata'),
(1233, 'Quiruvilca , Santiago de Chuco , La Libertad', 'La Libertad', 'Santiago de Chuco', 'Quiruvilca'),
(1234, 'Santa Cruz de Chuca , Santiago de Chuco , La Libertad', 'La Libertad', 'Santiago de Chuco', 'Santa Cruz de Chuca'),
(1235, 'Sitabamba , Santiago de Chuco , La Libertad', 'La Libertad', 'Santiago de Chuco', 'Sitabamba'),
(1236, 'Cascas , Gran Chimu , La Libertad', 'La Libertad', 'Gran Chimu', 'Cascas'),
(1237, 'Lucma , Gran Chimu , La Libertad', 'La Libertad', 'Gran Chimu', 'Lucma'),
(1238, 'Marmot , Gran Chimu , La Libertad', 'La Libertad', 'Gran Chimu', 'Marmot'),
(1239, 'Sayapullo , Gran Chimu , La Libertad', 'La Libertad', 'Gran Chimu', 'Sayapullo'),
(1240, 'Viru , Viru , La Libertad', 'La Libertad', 'Viru', 'Viru'),
(1241, 'Chao , Viru , La Libertad', 'La Libertad', 'Viru', 'Chao'),
(1242, 'Guadalupito , Viru , La Libertad', 'La Libertad', 'Viru', 'Guadalupito'),
(1243, 'Chiclayo , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Chiclayo'),
(1244, 'Chongoyape , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Chongoyape'),
(1245, 'Eten , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Eten'),
(1246, 'Eten Puerto , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Eten Puerto'),
(1247, 'Jose Leonardo Ortiz , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Jose Leonardo Ortiz'),
(1248, 'La Victoria , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'La Victoria'),
(1249, 'Lagunas , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Lagunas'),
(1250, 'Monsefu , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Monsefu'),
(1251, 'Nueva Arica , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Nueva Arica'),
(1252, 'Oyotun , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Oyotun'),
(1253, 'Picsi , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Picsi'),
(1254, 'Pimentel , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Pimentel'),
(1255, 'Reque , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Reque'),
(1256, 'Santa Rosa , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Santa Rosa'),
(1257, 'Saña , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Saña'),
(1258, 'Cayalti , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Cayalti'),
(1259, 'Patapo , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Patapo'),
(1260, 'Pomalca , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Pomalca'),
(1261, 'Pucala , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Pucala'),
(1262, 'Tuman , Chiclayo , Lambayeque', 'Lambayeque', 'Chiclayo', 'Tuman'),
(1263, 'Ferreñafe , Ferreñafe , Lambayeque', 'Lambayeque', 'Ferreñafe', 'Ferreñafe'),
(1264, 'Cañaris , Ferreñafe , Lambayeque', 'Lambayeque', 'Ferreñafe', 'Cañaris'),
(1265, 'Incahuasi , Ferreñafe , Lambayeque', 'Lambayeque', 'Ferreñafe', 'Incahuasi'),
(1266, 'Manuel Antonio Mesones Muro , Ferreñafe , Lambayeque', 'Lambayeque', 'Ferreñafe', 'Manuel Antonio Mesones Muro'),
(1267, 'Pitipo , Ferreñafe , Lambayeque', 'Lambayeque', 'Ferreñafe', 'Pitipo'),
(1268, 'Pueblo Nuevo , Ferreñafe , Lambayeque', 'Lambayeque', 'Ferreñafe', 'Pueblo Nuevo'),
(1269, 'Lambayeque , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Lambayeque'),
(1270, 'Chochope , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Chochope'),
(1271, 'Illimo , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Illimo'),
(1272, 'Jayanca , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Jayanca'),
(1273, 'Mochumi , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Mochumi'),
(1274, 'Morrope , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Morrope'),
(1275, 'Motupe , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Motupe'),
(1276, 'Olmos , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Olmos'),
(1277, 'Pacora , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Pacora'),
(1278, 'Salas , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Salas'),
(1279, 'San Jose , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'San Jose'),
(1280, 'Tucume , Lambayeque , Lambayeque', 'Lambayeque', 'Lambayeque', 'Tucume'),
(1281, 'Lima , Lima , Lima', 'Lima', 'Lima', 'Lima'),
(1282, 'Ancon , Lima , Lima', 'Lima', 'Lima', 'Ancon'),
(1283, 'Ate , Lima , Lima', 'Lima', 'Lima', 'Ate'),
(1284, 'Barranco , Lima , Lima', 'Lima', 'Lima', 'Barranco'),
(1285, 'Breña , Lima , Lima', 'Lima', 'Lima', 'Breña'),
(1286, 'Carabayllo , Lima , Lima', 'Lima', 'Lima', 'Carabayllo'),
(1287, 'Chaclacayo , Lima , Lima', 'Lima', 'Lima', 'Chaclacayo'),
(1288, 'Chorrillos , Lima , Lima', 'Lima', 'Lima', 'Chorrillos'),
(1289, 'Cieneguilla , Lima , Lima', 'Lima', 'Lima', 'Cieneguilla'),
(1290, 'Comas , Lima , Lima', 'Lima', 'Lima', 'Comas'),
(1291, 'El Agustino , Lima , Lima', 'Lima', 'Lima', 'El Agustino'),
(1292, 'Independencia , Lima , Lima', 'Lima', 'Lima', 'Independencia'),
(1293, 'Jesus Maria , Lima , Lima', 'Lima', 'Lima', 'Jesus Maria'),
(1294, 'La Molina , Lima , Lima', 'Lima', 'Lima', 'La Molina'),
(1295, 'La Victoria , Lima , Lima', 'Lima', 'Lima', 'La Victoria'),
(1296, 'Lince , Lima , Lima', 'Lima', 'Lima', 'Lince'),
(1297, 'Los Olivos , Lima , Lima', 'Lima', 'Lima', 'Los Olivos');
INSERT INTO `conf_ubigeo` (`codUbigeo`, `desUbigeo`, `Departamento`, `Provincia`, `Distrito`) VALUES
(1298, 'Lurigancho , Lima , Lima', 'Lima', 'Lima', 'Lurigancho'),
(1299, 'Lurin , Lima , Lima', 'Lima', 'Lima', 'Lurin'),
(1300, 'Magdalena del Mar , Lima , Lima', 'Lima', 'Lima', 'Magdalena del Mar'),
(1301, 'Pueblo Libre , Lima , Lima', 'Lima', 'Lima', 'Pueblo Libre'),
(1302, 'Miraflores , Lima , Lima', 'Lima', 'Lima', 'Miraflores'),
(1303, 'Pachacamac , Lima , Lima', 'Lima', 'Lima', 'Pachacamac'),
(1304, 'Pucusana , Lima , Lima', 'Lima', 'Lima', 'Pucusana'),
(1305, 'Puente Piedra , Lima , Lima', 'Lima', 'Lima', 'Puente Piedra'),
(1306, 'Punta Hermosa , Lima , Lima', 'Lima', 'Lima', 'Punta Hermosa'),
(1307, 'Punta Negra , Lima , Lima', 'Lima', 'Lima', 'Punta Negra'),
(1308, 'Rimac , Lima , Lima', 'Lima', 'Lima', 'Rimac'),
(1309, 'San Bartolo , Lima , Lima', 'Lima', 'Lima', 'San Bartolo'),
(1310, 'San Borja , Lima , Lima', 'Lima', 'Lima', 'San Borja'),
(1311, 'San Isidro , Lima , Lima', 'Lima', 'Lima', 'San Isidro'),
(1312, 'San Juan de Lurigancho , Lima , Lima', 'Lima', 'Lima', 'San Juan de Lurigancho'),
(1313, 'San Juan de Miraflores , Lima , Lima', 'Lima', 'Lima', 'San Juan de Miraflores'),
(1314, 'San Luis , Lima , Lima', 'Lima', 'Lima', 'San Luis'),
(1315, 'San Martin de Porres , Lima , Lima', 'Lima', 'Lima', 'San Martin de Porres'),
(1316, 'San Miguel , Lima , Lima', 'Lima', 'Lima', 'San Miguel'),
(1317, 'Santa Anita , Lima , Lima', 'Lima', 'Lima', 'Santa Anita'),
(1318, 'Santa Maria del Mar , Lima , Lima', 'Lima', 'Lima', 'Santa Maria del Mar'),
(1319, 'Santa Rosa , Lima , Lima', 'Lima', 'Lima', 'Santa Rosa'),
(1320, 'Santiago de Surco , Lima , Lima', 'Lima', 'Lima', 'Santiago de Surco'),
(1321, 'Surquillo , Lima , Lima', 'Lima', 'Lima', 'Surquillo'),
(1322, 'Villa El Salvador , Lima , Lima', 'Lima', 'Lima', 'Villa El Salvador'),
(1323, 'Villa Maria del Triunfo , Lima , Lima', 'Lima', 'Lima', 'Villa Maria del Triunfo'),
(1324, 'Barranca , Barranca , Lima', 'Lima', 'Barranca', 'Barranca'),
(1325, 'Paramonga , Barranca , Lima', 'Lima', 'Barranca', 'Paramonga'),
(1326, 'Pativilca , Barranca , Lima', 'Lima', 'Barranca', 'Pativilca'),
(1327, 'Supe , Barranca , Lima', 'Lima', 'Barranca', 'Supe'),
(1328, 'Supe Puerto , Barranca , Lima', 'Lima', 'Barranca', 'Supe Puerto'),
(1329, 'Cajatambo , Cajatambo , Lima', 'Lima', 'Cajatambo', 'Cajatambo'),
(1330, 'Copa , Cajatambo , Lima', 'Lima', 'Cajatambo', 'Copa'),
(1331, 'Gorgor , Cajatambo , Lima', 'Lima', 'Cajatambo', 'Gorgor'),
(1332, 'Huancapon , Cajatambo , Lima', 'Lima', 'Cajatambo', 'Huancapon'),
(1333, 'Manas , Cajatambo , Lima', 'Lima', 'Cajatambo', 'Manas'),
(1334, 'Canta , Canta , Lima', 'Lima', 'Canta', 'Canta'),
(1335, 'Arahuay , Canta , Lima', 'Lima', 'Canta', 'Arahuay'),
(1336, 'Huamantanga , Canta , Lima', 'Lima', 'Canta', 'Huamantanga'),
(1337, 'Huaros , Canta , Lima', 'Lima', 'Canta', 'Huaros'),
(1338, 'Lachaqui , Canta , Lima', 'Lima', 'Canta', 'Lachaqui'),
(1339, 'San Buenaventura , Canta , Lima', 'Lima', 'Canta', 'San Buenaventura'),
(1340, 'Santa Rosa de Quives , Canta , Lima', 'Lima', 'Canta', 'Santa Rosa de Quives'),
(1341, 'San Vicente de Cañete , Cañete , Lima', 'Lima', 'Cañete', 'San Vicente de Cañete'),
(1342, 'Asia , Cañete , Lima', 'Lima', 'Cañete', 'Asia'),
(1343, 'Calango , Cañete , Lima', 'Lima', 'Cañete', 'Calango'),
(1344, 'Cerro Azul , Cañete , Lima', 'Lima', 'Cañete', 'Cerro Azul'),
(1345, 'Chilca , Cañete , Lima', 'Lima', 'Cañete', 'Chilca'),
(1346, 'Coayllo , Cañete , Lima', 'Lima', 'Cañete', 'Coayllo'),
(1347, 'Imperial , Cañete , Lima', 'Lima', 'Cañete', 'Imperial'),
(1348, 'Lunahuana , Cañete , Lima', 'Lima', 'Cañete', 'Lunahuana'),
(1349, 'Mala , Cañete , Lima', 'Lima', 'Cañete', 'Mala'),
(1350, 'Nuevo Imperial , Cañete , Lima', 'Lima', 'Cañete', 'Nuevo Imperial'),
(1351, 'Pacaran , Cañete , Lima', 'Lima', 'Cañete', 'Pacaran'),
(1352, 'Quilmana , Cañete , Lima', 'Lima', 'Cañete', 'Quilmana'),
(1353, 'San Antonio , Cañete , Lima', 'Lima', 'Cañete', 'San Antonio'),
(1354, 'San Luis , Cañete , Lima', 'Lima', 'Cañete', 'San Luis'),
(1355, 'Santa Cruz de Flores , Cañete , Lima', 'Lima', 'Cañete', 'Santa Cruz de Flores'),
(1356, 'Zuñiga , Cañete , Lima', 'Lima', 'Cañete', 'Zuñiga'),
(1357, 'Huaral , Huaral , Lima', 'Lima', 'Huaral', 'Huaral'),
(1358, 'Atavillos Alto , Huaral , Lima', 'Lima', 'Huaral', 'Atavillos Alto'),
(1359, 'Atavillos Bajo , Huaral , Lima', 'Lima', 'Huaral', 'Atavillos Bajo'),
(1360, 'Aucallama , Huaral , Lima', 'Lima', 'Huaral', 'Aucallama'),
(1361, 'Chancay , Huaral , Lima', 'Lima', 'Huaral', 'Chancay'),
(1362, 'Ihuari , Huaral , Lima', 'Lima', 'Huaral', 'Ihuari'),
(1363, 'Lampian , Huaral , Lima', 'Lima', 'Huaral', 'Lampian'),
(1364, 'Pacaraos , Huaral , Lima', 'Lima', 'Huaral', 'Pacaraos'),
(1365, 'San Miguel de Acos , Huaral , Lima', 'Lima', 'Huaral', 'San Miguel de Acos'),
(1366, 'Santa Cruz de Andamarca , Huaral , Lima', 'Lima', 'Huaral', 'Santa Cruz de Andamarca'),
(1367, 'Sumbilca , Huaral , Lima', 'Lima', 'Huaral', 'Sumbilca'),
(1368, 'Veintisiete de Noviembre , Huaral , Lima', 'Lima', 'Huaral', 'Veintisiete de Noviembre'),
(1369, 'Matucana , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Matucana'),
(1370, 'Antioquia , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Antioquia'),
(1371, 'Callahuanca , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Callahuanca'),
(1372, 'Carampoma , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Carampoma'),
(1373, 'Chicla , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Chicla'),
(1374, 'Cuenca , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Cuenca'),
(1375, 'Huachupampa , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Huachupampa'),
(1376, 'Huanza , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Huanza'),
(1377, 'Huarochiri , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Huarochiri'),
(1378, 'Lahuaytambo , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Lahuaytambo'),
(1379, 'Langa , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Langa'),
(1380, 'Laraos , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Laraos'),
(1381, 'Mariatana , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Mariatana'),
(1382, 'Ricardo Palma , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Ricardo Palma'),
(1383, 'San Andres de Tupicocha , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Andres de Tupicocha'),
(1384, 'San Antonio , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Antonio'),
(1385, 'San Bartolome , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Bartolome'),
(1386, 'San Damian , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Damian'),
(1387, 'San Juan de Iris , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Juan de Iris'),
(1388, 'San Juan de Tantaranche , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Juan de Tantaranche'),
(1389, 'San Lorenzo de Quinti , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Lorenzo de Quinti'),
(1390, 'San Mateo , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Mateo'),
(1391, 'San Mateo de Otao , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Mateo de Otao'),
(1392, 'San Pedro de Casta , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Pedro de Casta'),
(1393, 'San Pedro de Huancayre , Huarochiri , Lima', 'Lima', 'Huarochiri', 'San Pedro de Huancayre'),
(1394, 'Sangallaya , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Sangallaya'),
(1395, 'Santa Cruz de Cocachacra , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Santa Cruz de Cocachacra'),
(1396, 'Santa Eulalia , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Santa Eulalia'),
(1397, 'Santiago de Anchucaya , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Santiago de Anchucaya'),
(1398, 'Santiago de Tuna , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Santiago de Tuna'),
(1399, 'Santo Domingo de los Olleros , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Santo Domingo de los Olleros'),
(1400, 'Surco , Huarochiri , Lima', 'Lima', 'Huarochiri', 'Surco'),
(1401, 'Huacho , Huaura , Lima', 'Lima', 'Huaura', 'Huacho'),
(1402, 'Ambar , Huaura , Lima', 'Lima', 'Huaura', 'Ambar'),
(1403, 'Caleta de Carquin , Huaura , Lima', 'Lima', 'Huaura', 'Caleta de Carquin'),
(1404, 'Checras , Huaura , Lima', 'Lima', 'Huaura', 'Checras'),
(1405, 'Hualmay , Huaura , Lima', 'Lima', 'Huaura', 'Hualmay'),
(1406, 'Huaura , Huaura , Lima', 'Lima', 'Huaura', 'Huaura'),
(1407, 'Leoncio Prado , Huaura , Lima', 'Lima', 'Huaura', 'Leoncio Prado'),
(1408, 'Paccho , Huaura , Lima', 'Lima', 'Huaura', 'Paccho'),
(1409, 'Santa Leonor , Huaura , Lima', 'Lima', 'Huaura', 'Santa Leonor'),
(1410, 'Santa Maria , Huaura , Lima', 'Lima', 'Huaura', 'Santa Maria'),
(1411, 'Sayan , Huaura , Lima', 'Lima', 'Huaura', 'Sayan'),
(1412, 'Vegueta , Huaura , Lima', 'Lima', 'Huaura', 'Vegueta'),
(1413, 'Oyon , Oyon , Lima', 'Lima', 'Oyon', 'Oyon'),
(1414, 'Andajes , Oyon , Lima', 'Lima', 'Oyon', 'Andajes'),
(1415, 'Caujul , Oyon , Lima', 'Lima', 'Oyon', 'Caujul'),
(1416, 'Cochamarca , Oyon , Lima', 'Lima', 'Oyon', 'Cochamarca'),
(1417, 'Navan , Oyon , Lima', 'Lima', 'Oyon', 'Navan'),
(1418, 'Pachangara , Oyon , Lima', 'Lima', 'Oyon', 'Pachangara'),
(1419, 'Yauyos , Yauyos , Lima', 'Lima', 'Yauyos', 'Yauyos'),
(1420, 'Alis , Yauyos , Lima', 'Lima', 'Yauyos', 'Alis'),
(1421, 'Ayauca , Yauyos , Lima', 'Lima', 'Yauyos', 'Ayauca'),
(1422, 'Ayaviri , Yauyos , Lima', 'Lima', 'Yauyos', 'Ayaviri'),
(1423, 'Azangaro , Yauyos , Lima', 'Lima', 'Yauyos', 'Azangaro'),
(1424, 'Cacra , Yauyos , Lima', 'Lima', 'Yauyos', 'Cacra'),
(1425, 'Carania , Yauyos , Lima', 'Lima', 'Yauyos', 'Carania'),
(1426, 'Catahuasi , Yauyos , Lima', 'Lima', 'Yauyos', 'Catahuasi'),
(1427, 'Chocos , Yauyos , Lima', 'Lima', 'Yauyos', 'Chocos'),
(1428, 'Cochas , Yauyos , Lima', 'Lima', 'Yauyos', 'Cochas'),
(1429, 'Colonia , Yauyos , Lima', 'Lima', 'Yauyos', 'Colonia'),
(1430, 'Hongos , Yauyos , Lima', 'Lima', 'Yauyos', 'Hongos'),
(1431, 'Huampara , Yauyos , Lima', 'Lima', 'Yauyos', 'Huampara'),
(1432, 'Huancaya , Yauyos , Lima', 'Lima', 'Yauyos', 'Huancaya'),
(1433, 'Huangascar , Yauyos , Lima', 'Lima', 'Yauyos', 'Huangascar'),
(1434, 'Huantan , Yauyos , Lima', 'Lima', 'Yauyos', 'Huantan'),
(1435, 'Huañec , Yauyos , Lima', 'Lima', 'Yauyos', 'Huañec'),
(1436, 'Laraos , Yauyos , Lima', 'Lima', 'Yauyos', 'Laraos'),
(1437, 'Lincha , Yauyos , Lima', 'Lima', 'Yauyos', 'Lincha'),
(1438, 'Madean , Yauyos , Lima', 'Lima', 'Yauyos', 'Madean'),
(1439, 'Miraflores , Yauyos , Lima', 'Lima', 'Yauyos', 'Miraflores'),
(1440, 'Omas , Yauyos , Lima', 'Lima', 'Yauyos', 'Omas'),
(1441, 'Putinza , Yauyos , Lima', 'Lima', 'Yauyos', 'Putinza'),
(1442, 'Quinches , Yauyos , Lima', 'Lima', 'Yauyos', 'Quinches'),
(1443, 'Quinocay , Yauyos , Lima', 'Lima', 'Yauyos', 'Quinocay'),
(1444, 'San Joaquin , Yauyos , Lima', 'Lima', 'Yauyos', 'San Joaquin'),
(1445, 'San Pedro de Pilas , Yauyos , Lima', 'Lima', 'Yauyos', 'San Pedro de Pilas'),
(1446, 'Tanta , Yauyos , Lima', 'Lima', 'Yauyos', 'Tanta'),
(1447, 'Tauripampa , Yauyos , Lima', 'Lima', 'Yauyos', 'Tauripampa'),
(1448, 'Tomas , Yauyos , Lima', 'Lima', 'Yauyos', 'Tomas'),
(1449, 'Tupe , Yauyos , Lima', 'Lima', 'Yauyos', 'Tupe'),
(1450, 'Viñac , Yauyos , Lima', 'Lima', 'Yauyos', 'Viñac'),
(1451, 'Vitis , Yauyos , Lima', 'Lima', 'Yauyos', 'Vitis'),
(1452, 'Iquitos , Maynas , Loreto', 'Loreto', 'Maynas', 'Iquitos'),
(1453, 'Alto Nanay , Maynas , Loreto', 'Loreto', 'Maynas', 'Alto Nanay'),
(1454, 'Fernando Lores , Maynas , Loreto', 'Loreto', 'Maynas', 'Fernando Lores'),
(1455, 'Indiana , Maynas , Loreto', 'Loreto', 'Maynas', 'Indiana'),
(1456, 'Las Amazonas , Maynas , Loreto', 'Loreto', 'Maynas', 'Las Amazonas'),
(1457, 'Mazan , Maynas , Loreto', 'Loreto', 'Maynas', 'Mazan'),
(1458, 'Napo , Maynas , Loreto', 'Loreto', 'Maynas', 'Napo'),
(1459, 'Punchana , Maynas , Loreto', 'Loreto', 'Maynas', 'Punchana'),
(1460, 'Torres Causana , Maynas , Loreto', 'Loreto', 'Maynas', 'Torres Causana'),
(1461, 'Belen , Maynas , Loreto', 'Loreto', 'Maynas', 'Belen'),
(1462, 'San Juan Bautista , Maynas , Loreto', 'Loreto', 'Maynas', 'San Juan Bautista'),
(1463, 'Yurimaguas , Alto Amazonas , Loreto', 'Loreto', 'Alto Amazonas', 'Yurimaguas'),
(1464, 'Balsapuerto , Alto Amazonas , Loreto', 'Loreto', 'Alto Amazonas', 'Balsapuerto'),
(1465, 'Jeberos , Alto Amazonas , Loreto', 'Loreto', 'Alto Amazonas', 'Jeberos'),
(1466, 'Lagunas , Alto Amazonas , Loreto', 'Loreto', 'Alto Amazonas', 'Lagunas'),
(1467, 'Santa Cruz , Alto Amazonas , Loreto', 'Loreto', 'Alto Amazonas', 'Santa Cruz'),
(1468, 'Teniente Cesar Lopez Rojas , Alto Amazonas , Loreto', 'Loreto', 'Alto Amazonas', 'Teniente Cesar Lopez Rojas'),
(1469, 'Nauta , Loreto , Loreto', 'Loreto', 'Loreto', 'Nauta'),
(1470, 'Parinari , Loreto , Loreto', 'Loreto', 'Loreto', 'Parinari'),
(1471, 'Tigre , Loreto , Loreto', 'Loreto', 'Loreto', 'Tigre'),
(1472, 'Trompeteros , Loreto , Loreto', 'Loreto', 'Loreto', 'Trompeteros'),
(1473, 'Urarinas , Loreto , Loreto', 'Loreto', 'Loreto', 'Urarinas'),
(1474, 'Ramon Castilla , Mariscal Ramon Castilla , Loreto', 'Loreto', 'Mariscal Ramon Castilla', 'Ramon Castilla'),
(1475, 'Pebas , Mariscal Ramon Castilla , Loreto', 'Loreto', 'Mariscal Ramon Castilla', 'Pebas'),
(1476, 'Yavari , Mariscal Ramon Castilla , Loreto', 'Loreto', 'Mariscal Ramon Castilla', 'Yavari'),
(1477, 'San Pablo , Mariscal Ramon Castilla , Loreto', 'Loreto', 'Mariscal Ramon Castilla', 'San Pablo'),
(1478, 'Requena , Requena , Loreto', 'Loreto', 'Requena', 'Requena'),
(1479, 'Alto Tapiche , Requena , Loreto', 'Loreto', 'Requena', 'Alto Tapiche'),
(1480, 'Capelo , Requena , Loreto', 'Loreto', 'Requena', 'Capelo'),
(1481, 'Emilio San Martin , Requena , Loreto', 'Loreto', 'Requena', 'Emilio San Martin'),
(1482, 'Maquia , Requena , Loreto', 'Loreto', 'Requena', 'Maquia'),
(1483, 'Puinahua , Requena , Loreto', 'Loreto', 'Requena', 'Puinahua'),
(1484, 'Saquena , Requena , Loreto', 'Loreto', 'Requena', 'Saquena'),
(1485, 'Soplin , Requena , Loreto', 'Loreto', 'Requena', 'Soplin'),
(1486, 'Tapiche , Requena , Loreto', 'Loreto', 'Requena', 'Tapiche'),
(1487, 'Jenaro Herrera , Requena , Loreto', 'Loreto', 'Requena', 'Jenaro Herrera'),
(1488, 'Yaquerana , Requena , Loreto', 'Loreto', 'Requena', 'Yaquerana'),
(1489, 'Contamana , Ucayali , Loreto', 'Loreto', 'Ucayali', 'Contamana'),
(1490, 'Inahuaya , Ucayali , Loreto', 'Loreto', 'Ucayali', 'Inahuaya'),
(1491, 'Padre Marquez , Ucayali , Loreto', 'Loreto', 'Ucayali', 'Padre Marquez'),
(1492, 'Pampa Hermosa , Ucayali , Loreto', 'Loreto', 'Ucayali', 'Pampa Hermosa'),
(1493, 'Sarayacu , Ucayali , Loreto', 'Loreto', 'Ucayali', 'Sarayacu'),
(1494, 'Vargas Guerra , Ucayali , Loreto', 'Loreto', 'Ucayali', 'Vargas Guerra'),
(1495, 'Barranca , Datem del Marañon , Loreto', 'Loreto', 'Datem del Marañon', 'Barranca'),
(1496, 'Cahuapanas , Datem del Marañon , Loreto', 'Loreto', 'Datem del Marañon', 'Cahuapanas'),
(1497, 'Manseriche , Datem del Marañon , Loreto', 'Loreto', 'Datem del Marañon', 'Manseriche'),
(1498, 'Morona , Datem del Marañon , Loreto', 'Loreto', 'Datem del Marañon', 'Morona'),
(1499, 'Pastaza , Datem del Marañon , Loreto', 'Loreto', 'Datem del Marañon', 'Pastaza'),
(1500, 'Andoas , Datem del Marañon , Loreto', 'Loreto', 'Datem del Marañon', 'Andoas'),
(1501, 'Putumayo , Maynas , Loreto', 'Loreto', 'Maynas', 'Putumayo'),
(1502, 'Rosa Panduro , Maynas , Loreto', 'Loreto', 'Maynas', 'Rosa Panduro'),
(1503, 'Teniente Manuel Clavero , Maynas , Loreto', 'Loreto', 'Maynas', 'Teniente Manuel Clavero'),
(1504, 'Yaguas , Maynas , Loreto', 'Loreto', 'Maynas', 'Yaguas'),
(1505, 'Tambopata , Tambopata , Madre de Dios', 'Madre de Dios', 'Tambopata', 'Tambopata'),
(1506, 'Inambari , Tambopata , Madre de Dios', 'Madre de Dios', 'Tambopata', 'Inambari'),
(1507, 'Las Piedras , Tambopata , Madre de Dios', 'Madre de Dios', 'Tambopata', 'Las Piedras'),
(1508, 'Laberinto , Tambopata , Madre de Dios', 'Madre de Dios', 'Tambopata', 'Laberinto'),
(1509, 'Manu , Manu , Madre de Dios', 'Madre de Dios', 'Manu', 'Manu'),
(1510, 'Fitzcarrald , Manu , Madre de Dios', 'Madre de Dios', 'Manu', 'Fitzcarrald'),
(1511, 'Madre de Dios , Manu , Madre de Dios', 'Madre de Dios', 'Manu', 'Madre de Dios'),
(1512, 'Huepetuhe , Manu , Madre de Dios', 'Madre de Dios', 'Manu', 'Huepetuhe'),
(1513, 'Iñapari , Tahuamanu , Madre de Dios', 'Madre de Dios', 'Tahuamanu', 'Iñapari'),
(1514, 'Iberia , Tahuamanu , Madre de Dios', 'Madre de Dios', 'Tahuamanu', 'Iberia'),
(1515, 'Tahuamanu , Tahuamanu , Madre de Dios', 'Madre de Dios', 'Tahuamanu', 'Tahuamanu'),
(1516, 'Moquegua , Mariscal Nieto , Moquegua', 'Moquegua', 'Mariscal Nieto', 'Moquegua'),
(1517, 'Carumas , Mariscal Nieto , Moquegua', 'Moquegua', 'Mariscal Nieto', 'Carumas'),
(1518, 'Cuchumbaya , Mariscal Nieto , Moquegua', 'Moquegua', 'Mariscal Nieto', 'Cuchumbaya'),
(1519, 'Samegua , Mariscal Nieto , Moquegua', 'Moquegua', 'Mariscal Nieto', 'Samegua'),
(1520, 'San Cristobal , Mariscal Nieto , Moquegua', 'Moquegua', 'Mariscal Nieto', 'San Cristobal'),
(1521, 'Torata , Mariscal Nieto , Moquegua', 'Moquegua', 'Mariscal Nieto', 'Torata'),
(1522, 'Omate , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'Omate'),
(1523, 'Chojata , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'Chojata'),
(1524, 'Coalaque , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'Coalaque'),
(1525, 'Ichuña , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'Ichuña'),
(1526, 'La Capilla , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'La Capilla'),
(1527, 'Lloque , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'Lloque'),
(1528, 'Matalaque , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'Matalaque'),
(1529, 'Puquina , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'Puquina'),
(1530, 'Quinistaquillas , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'Quinistaquillas'),
(1531, 'Ubinas , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'Ubinas'),
(1532, 'Yunga , General Sanchez Cerro , Moquegua', 'Moquegua', 'General Sanchez Cerro', 'Yunga'),
(1533, 'Ilo , Ilo , Moquegua', 'Moquegua', 'Ilo', 'Ilo'),
(1534, 'El Algarrobal , Ilo , Moquegua', 'Moquegua', 'Ilo', 'El Algarrobal'),
(1535, 'Pacocha , Ilo , Moquegua', 'Moquegua', 'Ilo', 'Pacocha'),
(1536, 'Chaupimarca , Pasco , Pasco', 'Pasco', 'Pasco', 'Chaupimarca'),
(1537, 'Huachon , Pasco , Pasco', 'Pasco', 'Pasco', 'Huachon'),
(1538, 'Huariaca , Pasco , Pasco', 'Pasco', 'Pasco', 'Huariaca'),
(1539, 'Huayllay , Pasco , Pasco', 'Pasco', 'Pasco', 'Huayllay'),
(1540, 'Ninacaca , Pasco , Pasco', 'Pasco', 'Pasco', 'Ninacaca'),
(1541, 'Pallanchacra , Pasco , Pasco', 'Pasco', 'Pasco', 'Pallanchacra'),
(1542, 'Paucartambo , Pasco , Pasco', 'Pasco', 'Pasco', 'Paucartambo'),
(1543, 'San Francisco de Asis de Yarusyacan , Pasco , Pasco', 'Pasco', 'Pasco', 'San Francisco de Asis de Yarusyacan'),
(1544, 'Simon Bolivar , Pasco , Pasco', 'Pasco', 'Pasco', 'Simon Bolivar'),
(1545, 'Ticlacayan , Pasco , Pasco', 'Pasco', 'Pasco', 'Ticlacayan'),
(1546, 'Tinyahuarco , Pasco , Pasco', 'Pasco', 'Pasco', 'Tinyahuarco'),
(1547, 'Vicco , Pasco , Pasco', 'Pasco', 'Pasco', 'Vicco'),
(1548, 'Yanacancha , Pasco , Pasco', 'Pasco', 'Pasco', 'Yanacancha'),
(1549, 'Yanahuanca , Daniel Alcides Carrion , Pasco', 'Pasco', 'Daniel Alcides Carrion', 'Yanahuanca'),
(1550, 'Chacayan , Daniel Alcides Carrion , Pasco', 'Pasco', 'Daniel Alcides Carrion', 'Chacayan'),
(1551, 'Goyllarisquizga , Daniel Alcides Carrion , Pasco', 'Pasco', 'Daniel Alcides Carrion', 'Goyllarisquizga'),
(1552, 'Paucar , Daniel Alcides Carrion , Pasco', 'Pasco', 'Daniel Alcides Carrion', 'Paucar'),
(1553, 'San Pedro de Pillao , Daniel Alcides Carrion , Pasco', 'Pasco', 'Daniel Alcides Carrion', 'San Pedro de Pillao'),
(1554, 'Santa Ana de Tusi , Daniel Alcides Carrion , Pasco', 'Pasco', 'Daniel Alcides Carrion', 'Santa Ana de Tusi'),
(1555, 'Tapuc , Daniel Alcides Carrion , Pasco', 'Pasco', 'Daniel Alcides Carrion', 'Tapuc'),
(1556, 'Vilcabamba , Daniel Alcides Carrion , Pasco', 'Pasco', 'Daniel Alcides Carrion', 'Vilcabamba'),
(1557, 'Oxapampa , Oxapampa , Pasco', 'Pasco', 'Oxapampa', 'Oxapampa'),
(1558, 'Chontabamba , Oxapampa , Pasco', 'Pasco', 'Oxapampa', 'Chontabamba'),
(1559, 'Huancabamba , Oxapampa , Pasco', 'Pasco', 'Oxapampa', 'Huancabamba'),
(1560, 'Palcazu , Oxapampa , Pasco', 'Pasco', 'Oxapampa', 'Palcazu'),
(1561, 'Pozuzo , Oxapampa , Pasco', 'Pasco', 'Oxapampa', 'Pozuzo'),
(1562, 'Puerto Bermudez , Oxapampa , Pasco', 'Pasco', 'Oxapampa', 'Puerto Bermudez'),
(1563, 'Villa Rica , Oxapampa , Pasco', 'Pasco', 'Oxapampa', 'Villa Rica'),
(1564, 'Constitucion , Oxapampa , Pasco', 'Pasco', 'Oxapampa', 'Constitucion'),
(1565, 'Piura , Piura , Piura', 'Piura', 'Piura', 'Piura'),
(1566, 'Castilla , Piura , Piura', 'Piura', 'Piura', 'Castilla'),
(1567, 'Catacaos , Piura , Piura', 'Piura', 'Piura', 'Catacaos'),
(1568, 'Cura Mori , Piura , Piura', 'Piura', 'Piura', 'Cura Mori'),
(1569, 'El Tallan , Piura , Piura', 'Piura', 'Piura', 'El Tallan'),
(1570, 'La Arena , Piura , Piura', 'Piura', 'Piura', 'La Arena'),
(1571, 'La Union , Piura , Piura', 'Piura', 'Piura', 'La Union'),
(1572, 'Las Lomas , Piura , Piura', 'Piura', 'Piura', 'Las Lomas'),
(1573, 'Tambo Grande , Piura , Piura', 'Piura', 'Piura', 'Tambo Grande'),
(1574, '26 de Octubre , Piura , Piura', 'Piura', 'Piura', '26 de Octubre'),
(1575, 'Ayabaca , Ayabaca , Piura', 'Piura', 'Ayabaca', 'Ayabaca'),
(1576, 'Frias , Ayabaca , Piura', 'Piura', 'Ayabaca', 'Frias'),
(1577, 'Jilili , Ayabaca , Piura', 'Piura', 'Ayabaca', 'Jilili'),
(1578, 'Lagunas , Ayabaca , Piura', 'Piura', 'Ayabaca', 'Lagunas'),
(1579, 'Montero , Ayabaca , Piura', 'Piura', 'Ayabaca', 'Montero'),
(1580, 'Pacaipampa , Ayabaca , Piura', 'Piura', 'Ayabaca', 'Pacaipampa'),
(1581, 'Paimas , Ayabaca , Piura', 'Piura', 'Ayabaca', 'Paimas'),
(1582, 'Sapillica , Ayabaca , Piura', 'Piura', 'Ayabaca', 'Sapillica'),
(1583, 'Sicchez , Ayabaca , Piura', 'Piura', 'Ayabaca', 'Sicchez'),
(1584, 'Suyo , Ayabaca , Piura', 'Piura', 'Ayabaca', 'Suyo'),
(1585, 'Huancabamba , Huancabamba , Piura', 'Piura', 'Huancabamba', 'Huancabamba'),
(1586, 'Canchaque , Huancabamba , Piura', 'Piura', 'Huancabamba', 'Canchaque'),
(1587, 'El Carmen de La Frontera , Huancabamba , Piura', 'Piura', 'Huancabamba', 'El Carmen de La Frontera'),
(1588, 'Huarmaca , Huancabamba , Piura', 'Piura', 'Huancabamba', 'Huarmaca'),
(1589, 'Lalaquiz , Huancabamba , Piura', 'Piura', 'Huancabamba', 'Lalaquiz'),
(1590, 'San Miguel de El Faique , Huancabamba , Piura', 'Piura', 'Huancabamba', 'San Miguel de El Faique'),
(1591, 'Sondor , Huancabamba , Piura', 'Piura', 'Huancabamba', 'Sondor'),
(1592, 'Sondorillo , Huancabamba , Piura', 'Piura', 'Huancabamba', 'Sondorillo'),
(1593, 'Chulucanas , Morropon , Piura', 'Piura', 'Morropon', 'Chulucanas'),
(1594, 'Buenos Aires , Morropon , Piura', 'Piura', 'Morropon', 'Buenos Aires'),
(1595, 'Chalaco , Morropon , Piura', 'Piura', 'Morropon', 'Chalaco'),
(1596, 'La Matanza , Morropon , Piura', 'Piura', 'Morropon', 'La Matanza'),
(1597, 'Morropon , Morropon , Piura', 'Piura', 'Morropon', 'Morropon'),
(1598, 'Salitral , Morropon , Piura', 'Piura', 'Morropon', 'Salitral'),
(1599, 'San Juan de Bigote , Morropon , Piura', 'Piura', 'Morropon', 'San Juan de Bigote'),
(1600, 'Santa Catalina de Mossa , Morropon , Piura', 'Piura', 'Morropon', 'Santa Catalina de Mossa'),
(1601, 'Santo Domingo , Morropon , Piura', 'Piura', 'Morropon', 'Santo Domingo'),
(1602, 'Yamango , Morropon , Piura', 'Piura', 'Morropon', 'Yamango'),
(1603, 'Paita , Paita , Piura', 'Piura', 'Paita', 'Paita'),
(1604, 'Amotape , Paita , Piura', 'Piura', 'Paita', 'Amotape'),
(1605, 'Arenal , Paita , Piura', 'Piura', 'Paita', 'Arenal'),
(1606, 'Colan , Paita , Piura', 'Piura', 'Paita', 'Colan'),
(1607, 'La Huaca , Paita , Piura', 'Piura', 'Paita', 'La Huaca'),
(1608, 'Tamarindo , Paita , Piura', 'Piura', 'Paita', 'Tamarindo'),
(1609, 'Vichayal , Paita , Piura', 'Piura', 'Paita', 'Vichayal'),
(1610, 'Sullana , Sullana , Piura', 'Piura', 'Sullana', 'Sullana'),
(1611, 'Bellavista , Sullana , Piura', 'Piura', 'Sullana', 'Bellavista'),
(1612, 'Ignacio Escudero , Sullana , Piura', 'Piura', 'Sullana', 'Ignacio Escudero'),
(1613, 'Lancones , Sullana , Piura', 'Piura', 'Sullana', 'Lancones'),
(1614, 'Marcavelica , Sullana , Piura', 'Piura', 'Sullana', 'Marcavelica'),
(1615, 'Miguel Checa , Sullana , Piura', 'Piura', 'Sullana', 'Miguel Checa'),
(1616, 'Querecotillo , Sullana , Piura', 'Piura', 'Sullana', 'Querecotillo'),
(1617, 'Salitral , Sullana , Piura', 'Piura', 'Sullana', 'Salitral'),
(1618, 'Pariñas , Talara , Piura', 'Piura', 'Talara', 'Pariñas'),
(1619, 'El Alto , Talara , Piura', 'Piura', 'Talara', 'El Alto'),
(1620, 'La Brea , Talara , Piura', 'Piura', 'Talara', 'La Brea'),
(1621, 'Lobitos , Talara , Piura', 'Piura', 'Talara', 'Lobitos'),
(1622, 'Los Organos , Talara , Piura', 'Piura', 'Talara', 'Los Organos'),
(1623, 'Mancora , Talara , Piura', 'Piura', 'Talara', 'Mancora'),
(1624, 'Sechura , Sechura , Piura', 'Piura', 'Sechura', 'Sechura'),
(1625, 'Bellavista de La Union , Sechura , Piura', 'Piura', 'Sechura', 'Bellavista de La Union'),
(1626, 'Bernal , Sechura , Piura', 'Piura', 'Sechura', 'Bernal'),
(1627, 'Cristo Nos Valga , Sechura , Piura', 'Piura', 'Sechura', 'Cristo Nos Valga'),
(1628, 'Vice , Sechura , Piura', 'Piura', 'Sechura', 'Vice'),
(1629, 'Rinconada Llicuar , Sechura , Piura', 'Piura', 'Sechura', 'Rinconada Llicuar'),
(1630, 'Puno , Puno , Puno', 'Puno', 'Puno', 'Puno'),
(1631, 'Acora , Puno , Puno', 'Puno', 'Puno', 'Acora'),
(1632, 'Amantani , Puno , Puno', 'Puno', 'Puno', 'Amantani'),
(1633, 'Atuncolla , Puno , Puno', 'Puno', 'Puno', 'Atuncolla'),
(1634, 'Capachica , Puno , Puno', 'Puno', 'Puno', 'Capachica'),
(1635, 'Chucuito , Puno , Puno', 'Puno', 'Puno', 'Chucuito'),
(1636, 'Coata , Puno , Puno', 'Puno', 'Puno', 'Coata'),
(1637, 'Huata , Puno , Puno', 'Puno', 'Puno', 'Huata'),
(1638, 'Mañazo , Puno , Puno', 'Puno', 'Puno', 'Mañazo'),
(1639, 'Paucarcolla , Puno , Puno', 'Puno', 'Puno', 'Paucarcolla'),
(1640, 'Pichacani , Puno , Puno', 'Puno', 'Puno', 'Pichacani'),
(1641, 'Plateria , Puno , Puno', 'Puno', 'Puno', 'Plateria'),
(1642, 'San Antonio , Puno , Puno', 'Puno', 'Puno', 'San Antonio'),
(1643, 'Tiquillaca , Puno , Puno', 'Puno', 'Puno', 'Tiquillaca'),
(1644, 'Vilque , Puno , Puno', 'Puno', 'Puno', 'Vilque'),
(1645, 'Azangaro , Azangaro , Puno', 'Puno', 'Azangaro', 'Azangaro'),
(1646, 'Achaya , Azangaro , Puno', 'Puno', 'Azangaro', 'Achaya'),
(1647, 'Arapa , Azangaro , Puno', 'Puno', 'Azangaro', 'Arapa'),
(1648, 'Asillo , Azangaro , Puno', 'Puno', 'Azangaro', 'Asillo'),
(1649, 'Caminaca , Azangaro , Puno', 'Puno', 'Azangaro', 'Caminaca'),
(1650, 'Chupa , Azangaro , Puno', 'Puno', 'Azangaro', 'Chupa'),
(1651, 'Jose Domingo Choquehuanca , Azangaro , Puno', 'Puno', 'Azangaro', 'Jose Domingo Choquehuanca'),
(1652, 'Muñani , Azangaro , Puno', 'Puno', 'Azangaro', 'Muñani'),
(1653, 'Potoni , Azangaro , Puno', 'Puno', 'Azangaro', 'Potoni'),
(1654, 'Saman , Azangaro , Puno', 'Puno', 'Azangaro', 'Saman'),
(1655, 'San Anton , Azangaro , Puno', 'Puno', 'Azangaro', 'San Anton'),
(1656, 'San Jose , Azangaro , Puno', 'Puno', 'Azangaro', 'San Jose'),
(1657, 'San Juan de Salinas , Azangaro , Puno', 'Puno', 'Azangaro', 'San Juan de Salinas'),
(1658, 'Santiago de Pupuja , Azangaro , Puno', 'Puno', 'Azangaro', 'Santiago de Pupuja'),
(1659, 'Tirapata , Azangaro , Puno', 'Puno', 'Azangaro', 'Tirapata'),
(1660, 'Macusani , Carabaya , Puno', 'Puno', 'Carabaya', 'Macusani'),
(1661, 'Ajoyani , Carabaya , Puno', 'Puno', 'Carabaya', 'Ajoyani'),
(1662, 'Ayapata , Carabaya , Puno', 'Puno', 'Carabaya', 'Ayapata'),
(1663, 'Coasa , Carabaya , Puno', 'Puno', 'Carabaya', 'Coasa'),
(1664, 'Corani , Carabaya , Puno', 'Puno', 'Carabaya', 'Corani'),
(1665, 'Crucero , Carabaya , Puno', 'Puno', 'Carabaya', 'Crucero'),
(1666, 'Ituata , Carabaya , Puno', 'Puno', 'Carabaya', 'Ituata'),
(1667, 'Ollachea , Carabaya , Puno', 'Puno', 'Carabaya', 'Ollachea'),
(1668, 'San Gaban , Carabaya , Puno', 'Puno', 'Carabaya', 'San Gaban'),
(1669, 'Usicayos , Carabaya , Puno', 'Puno', 'Carabaya', 'Usicayos'),
(1670, 'Juli , Chucuito , Puno', 'Puno', 'Chucuito', 'Juli'),
(1671, 'Desaguadero , Chucuito , Puno', 'Puno', 'Chucuito', 'Desaguadero'),
(1672, 'Huacullani , Chucuito , Puno', 'Puno', 'Chucuito', 'Huacullani'),
(1673, 'Kelluyo , Chucuito , Puno', 'Puno', 'Chucuito', 'Kelluyo'),
(1674, 'Pisacoma , Chucuito , Puno', 'Puno', 'Chucuito', 'Pisacoma'),
(1675, 'Pomata , Chucuito , Puno', 'Puno', 'Chucuito', 'Pomata'),
(1676, 'Zepita , Chucuito , Puno', 'Puno', 'Chucuito', 'Zepita'),
(1677, 'Ilave , El Collao , Puno', 'Puno', 'El Collao', 'Ilave'),
(1678, 'Capazo , El Collao , Puno', 'Puno', 'El Collao', 'Capazo'),
(1679, 'Pilcuyo , El Collao , Puno', 'Puno', 'El Collao', 'Pilcuyo'),
(1680, 'Santa Rosa , El Collao , Puno', 'Puno', 'El Collao', 'Santa Rosa'),
(1681, 'Conduriri , El Collao , Puno', 'Puno', 'El Collao', 'Conduriri'),
(1682, 'Huancane , Huancane , Puno', 'Puno', 'Huancane', 'Huancane'),
(1683, 'Cojata , Huancane , Puno', 'Puno', 'Huancane', 'Cojata'),
(1684, 'Huatasani , Huancane , Puno', 'Puno', 'Huancane', 'Huatasani'),
(1685, 'Inchupalla , Huancane , Puno', 'Puno', 'Huancane', 'Inchupalla'),
(1686, 'Pusi , Huancane , Puno', 'Puno', 'Huancane', 'Pusi'),
(1687, 'Rosaspata , Huancane , Puno', 'Puno', 'Huancane', 'Rosaspata'),
(1688, 'Taraco , Huancane , Puno', 'Puno', 'Huancane', 'Taraco'),
(1689, 'Vilque Chico , Huancane , Puno', 'Puno', 'Huancane', 'Vilque Chico'),
(1690, 'Lampa , Lampa , Puno', 'Puno', 'Lampa', 'Lampa'),
(1691, 'Cabanilla , Lampa , Puno', 'Puno', 'Lampa', 'Cabanilla'),
(1692, 'Calapuja , Lampa , Puno', 'Puno', 'Lampa', 'Calapuja'),
(1693, 'Nicasio , Lampa , Puno', 'Puno', 'Lampa', 'Nicasio'),
(1694, 'Ocuviri , Lampa , Puno', 'Puno', 'Lampa', 'Ocuviri'),
(1695, 'Palca , Lampa , Puno', 'Puno', 'Lampa', 'Palca'),
(1696, 'Paratia , Lampa , Puno', 'Puno', 'Lampa', 'Paratia'),
(1697, 'Pucara , Lampa , Puno', 'Puno', 'Lampa', 'Pucara'),
(1698, 'Santa Lucia , Lampa , Puno', 'Puno', 'Lampa', 'Santa Lucia'),
(1699, 'Vilavila , Lampa , Puno', 'Puno', 'Lampa', 'Vilavila'),
(1700, 'Ayaviri , Melgar , Puno', 'Puno', 'Melgar', 'Ayaviri'),
(1701, 'Antauta , Melgar , Puno', 'Puno', 'Melgar', 'Antauta'),
(1702, 'Cupi , Melgar , Puno', 'Puno', 'Melgar', 'Cupi'),
(1703, 'Llalli , Melgar , Puno', 'Puno', 'Melgar', 'Llalli'),
(1704, 'Macari , Melgar , Puno', 'Puno', 'Melgar', 'Macari'),
(1705, 'Nuñoa , Melgar , Puno', 'Puno', 'Melgar', 'Nuñoa'),
(1706, 'Orurillo , Melgar , Puno', 'Puno', 'Melgar', 'Orurillo'),
(1707, 'Santa Rosa , Melgar , Puno', 'Puno', 'Melgar', 'Santa Rosa'),
(1708, 'Umachiri , Melgar , Puno', 'Puno', 'Melgar', 'Umachiri'),
(1709, 'Moho , Moho , Puno', 'Puno', 'Moho', 'Moho'),
(1710, 'Conima , Moho , Puno', 'Puno', 'Moho', 'Conima'),
(1711, 'Huayrapata , Moho , Puno', 'Puno', 'Moho', 'Huayrapata'),
(1712, 'Tilali , Moho , Puno', 'Puno', 'Moho', 'Tilali'),
(1713, 'Putina , San Antonio de Putina , Puno', 'Puno', 'San Antonio de Putina', 'Putina'),
(1714, 'Ananea , San Antonio de Putina , Puno', 'Puno', 'San Antonio de Putina', 'Ananea'),
(1715, 'Pedro Vilca Apaza , San Antonio de Putina , Puno', 'Puno', 'San Antonio de Putina', 'Pedro Vilca Apaza'),
(1716, 'Quilcapuncu , San Antonio de Putina , Puno', 'Puno', 'San Antonio de Putina', 'Quilcapuncu'),
(1717, 'Sina , San Antonio de Putina , Puno', 'Puno', 'San Antonio de Putina', 'Sina'),
(1718, 'Juliaca , San Roman , Puno', 'Puno', 'San Roman', 'Juliaca'),
(1719, 'Cabana , San Roman , Puno', 'Puno', 'San Roman', 'Cabana'),
(1720, 'Cabanillas , San Roman , Puno', 'Puno', 'San Roman', 'Cabanillas'),
(1721, 'Caracoto , San Roman , Puno', 'Puno', 'San Roman', 'Caracoto'),
(1722, 'San Miguel , San Roman , Puno', 'Puno', 'San Roman', 'San Miguel'),
(1723, 'Sandia , Sandia , Puno', 'Puno', 'Sandia', 'Sandia'),
(1724, 'Cuyocuyo , Sandia , Puno', 'Puno', 'Sandia', 'Cuyocuyo'),
(1725, 'Limbani , Sandia , Puno', 'Puno', 'Sandia', 'Limbani'),
(1726, 'Patambuco , Sandia , Puno', 'Puno', 'Sandia', 'Patambuco'),
(1727, 'Phara , Sandia , Puno', 'Puno', 'Sandia', 'Phara'),
(1728, 'Quiaca , Sandia , Puno', 'Puno', 'Sandia', 'Quiaca'),
(1729, 'San Juan del Oro , Sandia , Puno', 'Puno', 'Sandia', 'San Juan del Oro'),
(1730, 'Yanahuaya , Sandia , Puno', 'Puno', 'Sandia', 'Yanahuaya'),
(1731, 'Alto Inambari , Sandia , Puno', 'Puno', 'Sandia', 'Alto Inambari'),
(1732, 'San Pedro de Putina Punco , Sandia , Puno', 'Puno', 'Sandia', 'San Pedro de Putina Punco'),
(1733, 'Yunguyo , Yunguyo , Puno', 'Puno', 'Yunguyo', 'Yunguyo'),
(1734, 'Anapia , Yunguyo , Puno', 'Puno', 'Yunguyo', 'Anapia'),
(1735, 'Copani , Yunguyo , Puno', 'Puno', 'Yunguyo', 'Copani'),
(1736, 'Cuturapi , Yunguyo , Puno', 'Puno', 'Yunguyo', 'Cuturapi'),
(1737, 'Ollaraya , Yunguyo , Puno', 'Puno', 'Yunguyo', 'Ollaraya'),
(1738, 'Tinicachi , Yunguyo , Puno', 'Puno', 'Yunguyo', 'Tinicachi'),
(1739, 'Unicachi , Yunguyo , Puno', 'Puno', 'Yunguyo', 'Unicachi'),
(1740, 'Moyobamba , Moyobamba , San Martin', 'San Martin', 'Moyobamba', 'Moyobamba'),
(1741, 'Calzada , Moyobamba , San Martin', 'San Martin', 'Moyobamba', 'Calzada'),
(1742, 'Habana , Moyobamba , San Martin', 'San Martin', 'Moyobamba', 'Habana'),
(1743, 'Jepelacio , Moyobamba , San Martin', 'San Martin', 'Moyobamba', 'Jepelacio'),
(1744, 'Soritor , Moyobamba , San Martin', 'San Martin', 'Moyobamba', 'Soritor'),
(1745, 'Yantalo , Moyobamba , San Martin', 'San Martin', 'Moyobamba', 'Yantalo'),
(1746, 'Bellavista , Bellavista , San Martin', 'San Martin', 'Bellavista', 'Bellavista'),
(1747, 'Alto Biavo , Bellavista , San Martin', 'San Martin', 'Bellavista', 'Alto Biavo'),
(1748, 'Bajo Biavo , Bellavista , San Martin', 'San Martin', 'Bellavista', 'Bajo Biavo'),
(1749, 'Huallaga , Bellavista , San Martin', 'San Martin', 'Bellavista', 'Huallaga'),
(1750, 'San Pablo , Bellavista , San Martin', 'San Martin', 'Bellavista', 'San Pablo'),
(1751, 'San Rafael , Bellavista , San Martin', 'San Martin', 'Bellavista', 'San Rafael'),
(1752, 'San Jose de Sisa , El Dorado , San Martin', 'San Martin', 'El Dorado', 'San Jose de Sisa'),
(1753, 'Agua Blanca , El Dorado , San Martin', 'San Martin', 'El Dorado', 'Agua Blanca'),
(1754, 'San Martin , El Dorado , San Martin', 'San Martin', 'El Dorado', 'San Martin'),
(1755, 'Santa Rosa , El Dorado , San Martin', 'San Martin', 'El Dorado', 'Santa Rosa'),
(1756, 'Shatoja , El Dorado , San Martin', 'San Martin', 'El Dorado', 'Shatoja'),
(1757, 'Saposoa , Huallaga , San Martin', 'San Martin', 'Huallaga', 'Saposoa'),
(1758, 'Alto Saposoa , Huallaga , San Martin', 'San Martin', 'Huallaga', 'Alto Saposoa'),
(1759, 'El Eslabon , Huallaga , San Martin', 'San Martin', 'Huallaga', 'El Eslabon'),
(1760, 'Piscoyacu , Huallaga , San Martin', 'San Martin', 'Huallaga', 'Piscoyacu'),
(1761, 'Sacanche , Huallaga , San Martin', 'San Martin', 'Huallaga', 'Sacanche'),
(1762, 'Tingo de Saposoa , Huallaga , San Martin', 'San Martin', 'Huallaga', 'Tingo de Saposoa'),
(1763, 'Lamas , Lamas , San Martin', 'San Martin', 'Lamas', 'Lamas'),
(1764, 'Alonso de Alvarado , Lamas , San Martin', 'San Martin', 'Lamas', 'Alonso de Alvarado'),
(1765, 'Barranquita , Lamas , San Martin', 'San Martin', 'Lamas', 'Barranquita'),
(1766, 'Caynarachi , Lamas , San Martin', 'San Martin', 'Lamas', 'Caynarachi'),
(1767, 'Cuñumbuqui , Lamas , San Martin', 'San Martin', 'Lamas', 'Cuñumbuqui'),
(1768, 'Pinto Recodo , Lamas , San Martin', 'San Martin', 'Lamas', 'Pinto Recodo'),
(1769, 'Rumisapa , Lamas , San Martin', 'San Martin', 'Lamas', 'Rumisapa'),
(1770, 'San Roque de Cumbaza , Lamas , San Martin', 'San Martin', 'Lamas', 'San Roque de Cumbaza'),
(1771, 'Shanao , Lamas , San Martin', 'San Martin', 'Lamas', 'Shanao'),
(1772, 'Tabalosos , Lamas , San Martin', 'San Martin', 'Lamas', 'Tabalosos'),
(1773, 'Zapatero , Lamas , San Martin', 'San Martin', 'Lamas', 'Zapatero'),
(1774, 'Juanjui , Mariscal Caceres , San Martin', 'San Martin', 'Mariscal Caceres', 'Juanjui'),
(1775, 'Campanilla , Mariscal Caceres , San Martin', 'San Martin', 'Mariscal Caceres', 'Campanilla'),
(1776, 'Huicungo , Mariscal Caceres , San Martin', 'San Martin', 'Mariscal Caceres', 'Huicungo'),
(1777, 'Pachiza , Mariscal Caceres , San Martin', 'San Martin', 'Mariscal Caceres', 'Pachiza'),
(1778, 'Pajarillo , Mariscal Caceres , San Martin', 'San Martin', 'Mariscal Caceres', 'Pajarillo'),
(1779, 'Picota , Picota , San Martin', 'San Martin', 'Picota', 'Picota'),
(1780, 'Buenos Aires , Picota , San Martin', 'San Martin', 'Picota', 'Buenos Aires'),
(1781, 'Caspisapa , Picota , San Martin', 'San Martin', 'Picota', 'Caspisapa'),
(1782, 'Pilluana , Picota , San Martin', 'San Martin', 'Picota', 'Pilluana'),
(1783, 'Pucacaca , Picota , San Martin', 'San Martin', 'Picota', 'Pucacaca'),
(1784, 'San Cristobal , Picota , San Martin', 'San Martin', 'Picota', 'San Cristobal'),
(1785, 'San Hilarion , Picota , San Martin', 'San Martin', 'Picota', 'San Hilarion'),
(1786, 'Shamboyacu , Picota , San Martin', 'San Martin', 'Picota', 'Shamboyacu'),
(1787, 'Tingo de Ponasa , Picota , San Martin', 'San Martin', 'Picota', 'Tingo de Ponasa'),
(1788, 'Tres Unidos , Picota , San Martin', 'San Martin', 'Picota', 'Tres Unidos'),
(1789, 'Rioja , Rioja , San Martin', 'San Martin', 'Rioja', 'Rioja'),
(1790, 'Awajun , Rioja , San Martin', 'San Martin', 'Rioja', 'Awajun'),
(1791, 'Elias Soplin Vargas , Rioja , San Martin', 'San Martin', 'Rioja', 'Elias Soplin Vargas'),
(1792, 'Nueva Cajamarca , Rioja , San Martin', 'San Martin', 'Rioja', 'Nueva Cajamarca'),
(1793, 'Pardo Miguel , Rioja , San Martin', 'San Martin', 'Rioja', 'Pardo Miguel'),
(1794, 'Posic , Rioja , San Martin', 'San Martin', 'Rioja', 'Posic'),
(1795, 'San Fernando , Rioja , San Martin', 'San Martin', 'Rioja', 'San Fernando'),
(1796, 'Yorongos , Rioja , San Martin', 'San Martin', 'Rioja', 'Yorongos'),
(1797, 'Yuracyacu , Rioja , San Martin', 'San Martin', 'Rioja', 'Yuracyacu'),
(1798, 'Tarapoto , San Martin , San Martin', 'San Martin', 'San Martin', 'Tarapoto'),
(1799, 'Alberto Leveau , San Martin , San Martin', 'San Martin', 'San Martin', 'Alberto Leveau'),
(1800, 'Cacatachi , San Martin , San Martin', 'San Martin', 'San Martin', 'Cacatachi'),
(1801, 'Chazuta , San Martin , San Martin', 'San Martin', 'San Martin', 'Chazuta'),
(1802, 'Chipurana , San Martin , San Martin', 'San Martin', 'San Martin', 'Chipurana'),
(1803, 'El Porvenir , San Martin , San Martin', 'San Martin', 'San Martin', 'El Porvenir'),
(1804, 'Huimbayoc , San Martin , San Martin', 'San Martin', 'San Martin', 'Huimbayoc'),
(1805, 'Juan Guerra , San Martin , San Martin', 'San Martin', 'San Martin', 'Juan Guerra'),
(1806, 'La Banda de Shilcayo , San Martin , San Martin', 'San Martin', 'San Martin', 'La Banda de Shilcayo'),
(1807, 'Morales , San Martin , San Martin', 'San Martin', 'San Martin', 'Morales'),
(1808, 'Papaplaya , San Martin , San Martin', 'San Martin', 'San Martin', 'Papaplaya'),
(1809, 'San Antonio , San Martin , San Martin', 'San Martin', 'San Martin', 'San Antonio'),
(1810, 'Sauce , San Martin , San Martin', 'San Martin', 'San Martin', 'Sauce'),
(1811, 'Shapaja , San Martin , San Martin', 'San Martin', 'San Martin', 'Shapaja'),
(1812, 'Tocache , Tocache , San Martin', 'San Martin', 'Tocache', 'Tocache'),
(1813, 'Nuevo Progreso , Tocache , San Martin', 'San Martin', 'Tocache', 'Nuevo Progreso'),
(1814, 'Polvora , Tocache , San Martin', 'San Martin', 'Tocache', 'Polvora'),
(1815, 'Shunte , Tocache , San Martin', 'San Martin', 'Tocache', 'Shunte'),
(1816, 'Uchiza , Tocache , San Martin', 'San Martin', 'Tocache', 'Uchiza'),
(1817, 'Tacna , Tacna , Tacna', 'Tacna', 'Tacna', 'Tacna'),
(1818, 'Alto de La Alianza , Tacna , Tacna', 'Tacna', 'Tacna', 'Alto de La Alianza'),
(1819, 'Calana , Tacna , Tacna', 'Tacna', 'Tacna', 'Calana'),
(1820, 'Ciudad Nueva , Tacna , Tacna', 'Tacna', 'Tacna', 'Ciudad Nueva'),
(1821, 'Inclan , Tacna , Tacna', 'Tacna', 'Tacna', 'Inclan'),
(1822, 'Pachia , Tacna , Tacna', 'Tacna', 'Tacna', 'Pachia'),
(1823, 'Palca , Tacna , Tacna', 'Tacna', 'Tacna', 'Palca'),
(1824, 'Pocollay , Tacna , Tacna', 'Tacna', 'Tacna', 'Pocollay'),
(1825, 'Sama , Tacna , Tacna', 'Tacna', 'Tacna', 'Sama'),
(1826, 'Coronel Gregorio Albarracin Lanchipa , Tacna , Tacna', 'Tacna', 'Tacna', 'Coronel Gregorio Albarracin Lanchipa'),
(1827, 'La Yarada-Los Palos , Tacna , Tacna', 'Tacna', 'Tacna', 'La Yarada-Los Palos'),
(1828, 'Candarave , Candarave , Tacna', 'Tacna', 'Candarave', 'Candarave'),
(1829, 'Cairani , Candarave , Tacna', 'Tacna', 'Candarave', 'Cairani'),
(1830, 'Camilaca , Candarave , Tacna', 'Tacna', 'Candarave', 'Camilaca'),
(1831, 'Curibaya , Candarave , Tacna', 'Tacna', 'Candarave', 'Curibaya'),
(1832, 'Huanuara , Candarave , Tacna', 'Tacna', 'Candarave', 'Huanuara'),
(1833, 'Quilahuani , Candarave , Tacna', 'Tacna', 'Candarave', 'Quilahuani'),
(1834, 'Locumba , Jorge Basadre , Tacna', 'Tacna', 'Jorge Basadre', 'Locumba'),
(1835, 'Ilabaya , Jorge Basadre , Tacna', 'Tacna', 'Jorge Basadre', 'Ilabaya'),
(1836, 'Ite , Jorge Basadre , Tacna', 'Tacna', 'Jorge Basadre', 'Ite'),
(1837, 'Tarata , Tarata , Tacna', 'Tacna', 'Tarata', 'Tarata'),
(1838, 'Heroes Albarracin , Tarata , Tacna', 'Tacna', 'Tarata', 'Heroes Albarracin'),
(1839, 'Estique , Tarata , Tacna', 'Tacna', 'Tarata', 'Estique'),
(1840, 'Estique-Pampa , Tarata , Tacna', 'Tacna', 'Tarata', 'Estique-Pampa'),
(1841, 'Sitajara , Tarata , Tacna', 'Tacna', 'Tarata', 'Sitajara'),
(1842, 'Susapaya , Tarata , Tacna', 'Tacna', 'Tarata', 'Susapaya'),
(1843, 'Tarucachi , Tarata , Tacna', 'Tacna', 'Tarata', 'Tarucachi'),
(1844, 'Ticaco , Tarata , Tacna', 'Tacna', 'Tarata', 'Ticaco'),
(1845, 'Tumbes , Tumbes , Tumbes', 'Tumbes', 'Tumbes', 'Tumbes'),
(1846, 'Corrales , Tumbes , Tumbes', 'Tumbes', 'Tumbes', 'Corrales'),
(1847, 'La Cruz , Tumbes , Tumbes', 'Tumbes', 'Tumbes', 'La Cruz'),
(1848, 'Pampas de Hospital , Tumbes , Tumbes', 'Tumbes', 'Tumbes', 'Pampas de Hospital'),
(1849, 'San Jacinto , Tumbes , Tumbes', 'Tumbes', 'Tumbes', 'San Jacinto'),
(1850, 'San Juan de La Virgen , Tumbes , Tumbes', 'Tumbes', 'Tumbes', 'San Juan de La Virgen'),
(1851, 'Zorritos , Contralmirante Villar , Tumbes', 'Tumbes', 'Contralmirante Villar', 'Zorritos'),
(1852, 'Casitas , Contralmirante Villar , Tumbes', 'Tumbes', 'Contralmirante Villar', 'Casitas'),
(1853, 'Canoas de Punta Sal , Contralmirante Villar , Tumbes', 'Tumbes', 'Contralmirante Villar', 'Canoas de Punta Sal'),
(1854, 'Zarumilla , Zarumilla , Tumbes', 'Tumbes', 'Zarumilla', 'Zarumilla'),
(1855, 'Aguas Verdes , Zarumilla , Tumbes', 'Tumbes', 'Zarumilla', 'Aguas Verdes'),
(1856, 'Matapalo , Zarumilla , Tumbes', 'Tumbes', 'Zarumilla', 'Matapalo'),
(1857, 'Papayal , Zarumilla , Tumbes', 'Tumbes', 'Zarumilla', 'Papayal'),
(1858, 'Calleria , Coronel Portillo , Ucayali', 'Ucayali', 'Coronel Portillo', 'Calleria'),
(1859, 'Campoverde , Coronel Portillo , Ucayali', 'Ucayali', 'Coronel Portillo', 'Campoverde'),
(1860, 'Iparia , Coronel Portillo , Ucayali', 'Ucayali', 'Coronel Portillo', 'Iparia'),
(1861, 'Masisea , Coronel Portillo , Ucayali', 'Ucayali', 'Coronel Portillo', 'Masisea'),
(1862, 'Yarinacocha , Coronel Portillo , Ucayali', 'Ucayali', 'Coronel Portillo', 'Yarinacocha'),
(1863, 'Nueva Requena , Coronel Portillo , Ucayali', 'Ucayali', 'Coronel Portillo', 'Nueva Requena'),
(1864, 'Manantay , Coronel Portillo , Ucayali', 'Ucayali', 'Coronel Portillo', 'Manantay'),
(1865, 'Raymondi , Atalaya , Ucayali', 'Ucayali', 'Atalaya', 'Raymondi'),
(1866, 'Sepahua , Atalaya , Ucayali', 'Ucayali', 'Atalaya', 'Sepahua'),
(1867, 'Tahuania , Atalaya , Ucayali', 'Ucayali', 'Atalaya', 'Tahuania'),
(1868, 'Yurua , Atalaya , Ucayali', 'Ucayali', 'Atalaya', 'Yurua'),
(1869, 'Padre Abad , Padre Abad , Ucayali', 'Ucayali', 'Padre Abad', 'Padre Abad'),
(1870, 'Irazola , Padre Abad , Ucayali', 'Ucayali', 'Padre Abad', 'Irazola'),
(1871, 'Curimana , Padre Abad , Ucayali', 'Ucayali', 'Padre Abad', 'Curimana'),
(1872, 'Neshuya , Padre Abad , Ucayali', 'Ucayali', 'Padre Abad', 'Neshuya'),
(1873, 'Alexander von Humboldt , Padre Abad , Ucayali', 'Ucayali', 'Padre Abad', 'Alexander von Humboldt'),
(1874, 'Purus , Purus , Ucayali', 'Ucayali', 'Purus', 'Purus');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `other_notificaciones`
--

CREATE TABLE `other_notificaciones` (
  `codNotificacion` int(11) NOT NULL,
  `desNombre` varchar(255) DEFAULT NULL,
  `desDescripción` varchar(255) DEFAULT NULL,
  `desPersonalizar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `other_notificaciones`
--

INSERT INTO `other_notificaciones` (`codNotificacion`, `desNombre`, `desDescripción`, `desPersonalizar`) VALUES
(1, 'CreacionProyecto', 'CreacionProyecto', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `other_notificaciones_usuario`
--

CREATE TABLE `other_notificaciones_usuario` (
  `id` bigint(20) NOT NULL,
  `codNotificacion` int(11) NOT NULL,
  `codEstado` int(11) DEFAULT NULL,
  `dayFechaCreacion` datetime DEFAULT NULL,
  `desUsuarioCreación` varchar(255) DEFAULT NULL,
  `codNotificacionUsuario` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `other_notificaciones_usuario`
--

INSERT INTO `other_notificaciones_usuario` (`id`, `codNotificacion`, `codEstado`, `dayFechaCreacion`, `desUsuarioCreación`, `codNotificacionUsuario`) VALUES
(9, 1, 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `other_notificaciones_usuario2`
--

CREATE TABLE `other_notificaciones_usuario2` (
  `codNotificacionUsuario` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `codNotificacion` int(11) NOT NULL,
  `codEstado` int(11) DEFAULT NULL,
  `dayFechaCreacion` datetime DEFAULT NULL,
  `desUsuarioCreación` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `other_notificaciones_usuario2`
--

INSERT INTO `other_notificaciones_usuario2` (`codNotificacionUsuario`, `id`, `codNotificacion`, `codEstado`, `dayFechaCreacion`, `desUsuarioCreación`) VALUES
(1, 9, 1, 1, NULL, NULL),
(2, 9, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `other_notificaciones_usuario4`
--

CREATE TABLE `other_notificaciones_usuario4` (
  `codNotificacionUsuario` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `codNotificacion` int(11) NOT NULL,
  `codEstado` int(11) DEFAULT NULL,
  `dayFechaCreacion` datetime DEFAULT NULL,
  `desUsuarioCreación` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `other_notificaciones_usuario4`
--

INSERT INTO `other_notificaciones_usuario4` (`codNotificacionUsuario`, `id`, `codNotificacion`, `codEstado`, `dayFechaCreacion`, `desUsuarioCreación`) VALUES
(1, 9, 1, 1, NULL, NULL),
(3, 9, 1, 1, NULL, NULL),
(4, 9, 1, 1, NULL, NULL),
(5, 9, 1, 0, '2023-02-23 13:02:58', 'diego@gmail.com'),
(6, 9, 1, 0, '2023-02-23 15:10:36', 'diego@gmail.com'),
(7, 9, 1, 0, '2023-02-23 20:19:05', 'diego@gmail.com'),
(8, 9, 1, 0, '2023-02-24 03:56:02', 'diego@gmail.com'),
(9, 9, 1, 0, '2023-02-24 03:59:01', 'diego@gmail.com'),
(10, 9, 1, 0, '2023-02-24 04:23:39', 'diego@gmail.com'),
(11, 5, 1, 1, '2023-02-28 11:08:20', 'peter@p.com'),
(12, 5, 1, 0, '2023-02-28 17:38:09', 'peter@p.com'),
(13, 5, 1, 0, '2023-03-01 10:57:00', 'peter@p.com'),
(14, 5, 1, 0, '2023-03-01 11:51:31', 'peter@p.com'),
(15, 5, 1, 0, '2023-03-01 11:54:29', 'peter@p.com'),
(16, 5, 1, 1, '2023-03-01 13:10:01', 'peter@p.com'),
(17, 5, 1, 0, '2023-03-01 13:11:26', 'peter@p.com'),
(18, 5, 1, 0, '2023-03-01 13:13:24', 'peter@p.com'),
(19, 5, 1, 0, '2023-03-01 13:17:16', 'peter@p.com'),
(20, 5, 1, 1, '2023-03-01 13:19:30', 'peter@p.com'),
(21, 5, 1, 1, '2023-03-01 13:20:13', 'peter@p.com');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 4, 'main', 'fad423794c19b2fcafa97ea7b3df90432ae38f84feb04d7876ae77e8c43749fd', '[\"*\"]', NULL, '2022-11-08 11:00:02', '2022-11-08 11:00:02'),
(3, 'App\\Models\\User', 4, 'main', '8b23b8515d0c16fa55307ada01558e8daa544f2cb148764486e7252fbcf40502', '[\"*\"]', NULL, '2022-11-08 11:00:25', '2022-11-08 11:00:25'),
(4, 'App\\Models\\User', 4, 'main', 'c7bf9c90bb85f93b443baf3ee8ead0f3da3de473fe798a3786ec450988c45b76', '[\"*\"]', NULL, '2022-11-08 21:38:39', '2022-11-08 21:38:39'),
(5, 'App\\Models\\User', 5, 'main', '0aa1e989c6969e6d10c6646cf74b3ab944df69d6152044c171a4d936288972a6', '[\"*\"]', NULL, '2022-11-11 00:18:15', '2022-11-11 00:18:15'),
(6, 'App\\Models\\User', 5, 'main', 'da842488d492df963f2820a0e4897de5a30e3d05b27d84150e4e1f83928e9133', '[\"*\"]', NULL, '2022-11-11 00:18:50', '2022-11-11 00:18:50'),
(7, 'App\\Models\\User', 5, 'main', '8e92ab3a7a4ad4da42c52fd6f1400095c016bfd9ec3bb302b18d363fda7bc889', '[\"*\"]', NULL, '2022-11-11 04:49:37', '2022-11-11 04:49:37'),
(8, 'App\\Models\\User', 5, 'main', '2a7a97c651cd5fb2fcf4d9c1dfd1d8d944a95193103303c141aac0982812dd91', '[\"*\"]', NULL, '2022-11-11 10:06:35', '2022-11-11 10:06:35'),
(9, 'App\\Models\\User', 5, 'main', 'c7d95e0a2148e561747b204d7154d1f40c44b17549aae17a8da6512c1903bdd9', '[\"*\"]', NULL, '2022-11-11 10:07:51', '2022-11-11 10:07:51'),
(10, 'App\\Models\\User', 5, 'main', '37d04b5f734555c1ac0da48ab605c44ed3a49aa5ec59c2cb18cf0087ec0dc768', '[\"*\"]', NULL, '2022-11-11 10:10:00', '2022-11-11 10:10:00'),
(11, 'App\\Models\\User', 5, 'main', '2f11262c47a6795de590094b52168449bf37ca353d13c68c5b3dbd70d2d8a671', '[\"*\"]', NULL, '2022-11-11 10:33:09', '2022-11-11 10:33:09'),
(12, 'App\\Models\\User', 5, 'main', '33f056e3e511f56ef8530326a2799d10b530b4273eaab0d593ea1a9e66bec7f4', '[\"*\"]', NULL, '2022-11-11 10:34:46', '2022-11-11 10:34:46'),
(13, 'App\\Models\\User', 5, 'main', '1d3e0128edeed25fe49c1b7f32234649909b225b54554749eb47e4c562bd5a9b', '[\"*\"]', NULL, '2022-11-11 10:39:32', '2022-11-11 10:39:32'),
(14, 'App\\Models\\User', 5, 'main', '4cab016e278c88a1e141cf1ad363d619f851475f4c1f2511c987bebc43970d41', '[\"*\"]', NULL, '2022-11-11 10:44:52', '2022-11-11 10:44:52'),
(15, 'App\\Models\\User', 5, 'main', 'a085b1189ee5434876835bc0e356830e26b446c54a442fec5b4f096b26f7756c', '[\"*\"]', NULL, '2022-11-11 18:20:13', '2022-11-11 18:20:13'),
(16, 'App\\Models\\User', 5, 'main', 'ec3da1d0dbbdfc1685ac78de7417e56226ba7f13df5cdd07b1de011d4f91fd58', '[\"*\"]', NULL, '2022-11-13 16:34:48', '2022-11-13 16:34:48'),
(17, 'App\\Models\\User', 6, 'main', 'c35d81587d6679cad0d462941e8b3d24f6057f4e7a1a539a0a2c664301d5a971', '[\"*\"]', NULL, '2022-11-15 09:22:22', '2022-11-15 09:22:22'),
(18, 'App\\Models\\User', 6, 'main', 'ce117f6577de5997021a35e2d05a8e9669bab2f744c97f435cec16968503bb04', '[\"*\"]', NULL, '2022-11-15 09:22:34', '2022-11-15 09:22:34'),
(19, 'App\\Models\\User', 7, 'main', '002d96e3164c3ace78cca5670d336dde247293a7771cd6c00c74256dcc84372e', '[\"*\"]', NULL, '2022-11-15 18:38:01', '2022-11-15 18:38:01'),
(20, 'App\\Models\\User', 7, 'main', 'c633a7156756adc12e54def5ddffdd27828e529de86e94b9b1806f575d386453', '[\"*\"]', NULL, '2022-11-15 18:38:16', '2022-11-15 18:38:16'),
(21, 'App\\Models\\User', 5, 'main', '066711ee3b2bc6ac0f388e03b56d3c8ce5e09ae6a81179bbce6afd86df179071', '[\"*\"]', NULL, '2022-11-17 05:03:26', '2022-11-17 05:03:26'),
(22, 'App\\Models\\User', 5, 'main', 'dbd3138ad438933d85d12b92d4afc21e95f30f04c2f97cfaba31e1f020b939e9', '[\"*\"]', NULL, '2022-11-17 21:40:30', '2022-11-17 21:40:30'),
(23, 'App\\Models\\User', 5, 'main', 'dc9f6f75376cdc7a6e887698f15c21ba08c5db28a52e327766b1e1273cc291c5', '[\"*\"]', NULL, '2022-11-18 06:49:24', '2022-11-18 06:49:24'),
(24, 'App\\Models\\User', 5, 'main', '4823fb622e5f1d691bac582faa0faf3043dd0a0554f4339d3010c18159a8deb6', '[\"*\"]', NULL, '2022-11-18 10:47:11', '2022-11-18 10:47:11'),
(25, 'App\\Models\\User', 6, 'main', 'f32a736b9f58fc341538407297f67141cf36bad581fcf9e19f45cef6676ec6bf', '[\"*\"]', NULL, '2022-11-18 10:47:49', '2022-11-18 10:47:49'),
(26, 'App\\Models\\User', 6, 'main', '5941cfbfc163e40db4a6b3f753aabad233ade3feaced5b2327bb6259c4773156', '[\"*\"]', NULL, '2022-11-18 10:49:06', '2022-11-18 10:49:06'),
(27, 'App\\Models\\User', 5, 'main', '355bcb5ced91a3e77b83b325968688a12fd7205dc70ddf62f969830417c0752a', '[\"*\"]', NULL, '2022-11-20 14:45:09', '2022-11-20 14:45:09'),
(28, 'App\\Models\\User', 6, 'main', '8193094a022a19d00c06774ec8ae0f089d5c0a57a2b5bd95fa62cc72764d5c36', '[\"*\"]', NULL, '2022-11-20 18:44:49', '2022-11-20 18:44:49'),
(29, 'App\\Models\\User', 6, 'main', 'def93eb74e74d92ea16f10fcaf0ebcc1496f753963fc17cdcd7442fee9323386', '[\"*\"]', NULL, '2022-11-21 20:25:03', '2022-11-21 20:25:03'),
(30, 'App\\Models\\User', 6, 'main', '93c913260bd3a10edefdd0d2cc3e1a8ba95f7bbccd8e868672013c4a8f12ccae', '[\"*\"]', NULL, '2022-11-22 14:16:17', '2022-11-22 14:16:17'),
(31, 'App\\Models\\User', 7, 'main', '1262a10de8a9ba54ff00c207791834275f013b4d05b5d9a1c46a789d87d142a3', '[\"*\"]', NULL, '2022-11-22 19:38:09', '2022-11-22 19:38:09'),
(32, 'App\\Models\\User', 5, 'main', '7b21d51c7031b2bcb03f59665900fc2b1c35f0b1a2103d152f684bf7bed4449c', '[\"*\"]', NULL, '2022-11-22 21:14:02', '2022-11-22 21:14:02'),
(33, 'App\\Models\\User', 6, 'main', '7c20ac3ce0b178133ac2666a10eacaa6a7bf0e35ea592e942abab05709eff183', '[\"*\"]', NULL, '2022-11-22 21:16:44', '2022-11-22 21:16:44'),
(34, 'App\\Models\\User', 6, 'main', '360f4e14c5fb61c24f3c017f8fd41ad4a2d460627b42feaf44fae3e9c470b5cc', '[\"*\"]', NULL, '2022-11-23 18:38:56', '2022-11-23 18:38:56'),
(35, 'App\\Models\\User', 8, 'main', 'b18722012bec8d32da5a01ed7599fec0c7bc2e63bd55e23d75c51c52b09a1d4f', '[\"*\"]', NULL, '2022-11-23 21:33:01', '2022-11-23 21:33:01'),
(36, 'App\\Models\\User', 8, 'main', 'b8deacf012d2afbea9729c6f42873d1af2e052e68172aa167a31a32314a22060', '[\"*\"]', NULL, '2022-11-23 21:33:19', '2022-11-23 21:33:19'),
(37, 'App\\Models\\User', 8, 'main', '17843f3bb8358b7cc59edf54484ed4cbe5236612885268e38961a326b4ca31bd', '[\"*\"]', '2022-11-24 01:27:21', '2022-11-24 01:23:23', '2022-11-24 01:27:21'),
(38, 'App\\Models\\User', 8, 'main', 'fbf99bf0f64788cc17d79c697feb4ed0d5f085a44ed05c7b2e2b2cf777d974f4', '[\"*\"]', NULL, '2022-11-24 01:45:02', '2022-11-24 01:45:02'),
(39, 'App\\Models\\User', 8, 'main', '50945625730f6994b69d25f168a94d3477107eb117587ab4d8820fb76772597e', '[\"*\"]', NULL, '2022-11-24 01:50:18', '2022-11-24 01:50:18'),
(40, 'App\\Models\\User', 8, 'main', '3565443e7ea98126f57ff7d5b76dc1c6e348af1173a0ba90c4124683d59d1511', '[\"*\"]', NULL, '2022-11-24 01:51:38', '2022-11-24 01:51:38'),
(41, 'App\\Models\\User', 8, 'main', 'e2c2dd0e587f95aa9d55c62a04e746345aed67ed34e3b6fef4cee0774e5d9e1f', '[\"*\"]', NULL, '2022-11-24 01:54:49', '2022-11-24 01:54:49'),
(42, 'App\\Models\\User', 8, 'main', '475b88901b90a2b31e61ef7b8bd8e5be2d5326912c7c6b396fc60a4c74142c62', '[\"*\"]', NULL, '2022-11-24 01:55:31', '2022-11-24 01:55:31'),
(43, 'App\\Models\\User', 8, 'main', '911c89bfdf0d83dab85e5f2e24584e77a7213334259be8291faa3047865d2f11', '[\"*\"]', NULL, '2022-11-24 01:55:58', '2022-11-24 01:55:58'),
(44, 'App\\Models\\User', 8, 'main', '79910f6bbdc548d92cbe2371bb6868f24ef5ed980adb3e66f3ddad06422d5a61', '[\"*\"]', NULL, '2022-11-24 01:56:53', '2022-11-24 01:56:53'),
(45, 'App\\Models\\User', 8, 'main', 'ef74dba917d7f74fee9587931fd2e9a1c249c6a4a54f6c4d05e336e66024b1ea', '[\"*\"]', NULL, '2022-11-24 02:05:40', '2022-11-24 02:05:40'),
(46, 'App\\Models\\User', 8, 'main', '858ee43fb1e289be220f0b7575c044ef125f6b6cb553176a9a1971c6f5f6ef76', '[\"*\"]', NULL, '2022-11-24 02:08:03', '2022-11-24 02:08:03'),
(47, 'App\\Models\\User', 8, 'main', 'b9e5ada0950bcb76c1ded852c0df0a8a9879463b207a95be589915f250a39402', '[\"*\"]', NULL, '2022-11-24 02:08:51', '2022-11-24 02:08:51'),
(48, 'App\\Models\\User', 8, 'main', '86103f8733fec3ea7506c2ee8850297d6c83a7b674566dc0a402f88e8b6838cf', '[\"*\"]', NULL, '2022-11-24 02:09:33', '2022-11-24 02:09:33'),
(49, 'App\\Models\\User', 8, 'main', '4fed75e11efeeee26ce2193beb991c38d56968d481368314752d8dd9921a0953', '[\"*\"]', NULL, '2022-11-24 02:09:49', '2022-11-24 02:09:49'),
(50, 'App\\Models\\User', 8, 'main', 'c9c0e0d4daa5f627e26c900067ef107bcaf51bf830303a6913316ede35e5b54c', '[\"*\"]', NULL, '2022-11-24 02:09:52', '2022-11-24 02:09:52'),
(51, 'App\\Models\\User', 8, 'main', 'd3b3dc80bccaaf768e131562ebb14b7dfcf9bcfbd1a1f9758775bcc8ec1a3284', '[\"*\"]', NULL, '2022-11-24 02:10:12', '2022-11-24 02:10:12'),
(52, 'App\\Models\\User', 8, 'main', 'f36a237cac578f7ae6ca36b3b5ad0cd50f7ece8ae982ff9e94981a53086a8e5a', '[\"*\"]', NULL, '2022-11-24 02:19:52', '2022-11-24 02:19:52'),
(53, 'App\\Models\\User', 8, 'main', 'b7ad94643e881a08d365ac3354f1bbaead37fe0809e9cbd3f924efba8294c16d', '[\"*\"]', NULL, '2022-11-24 02:21:06', '2022-11-24 02:21:06'),
(54, 'App\\Models\\User', 8, 'main', 'd1d33b481079b2367adcd077f0ea9cebc46047bf71b632231b8487cf73f1d417', '[\"*\"]', NULL, '2022-11-24 02:36:47', '2022-11-24 02:36:47'),
(55, 'App\\Models\\User', 8, 'main', 'f0ae1002035411f563a739b2f44a65472567d0b3b8390efb812bcab66a5914a8', '[\"*\"]', NULL, '2022-11-24 09:37:24', '2022-11-24 09:37:24'),
(56, 'App\\Models\\User', 8, 'main', 'c4731f02b9370fcda95b2f00eb15530316d46540768a4bfc04f1eb0ea24d904b', '[\"*\"]', NULL, '2022-11-24 18:23:36', '2022-11-24 18:23:36'),
(57, 'App\\Models\\User', 8, 'main', 'a465a694e4c6447798353b2a6de54dfc9d96a9b05417beeaf4bdf32c72deeb28', '[\"*\"]', NULL, '2022-11-24 21:15:46', '2022-11-24 21:15:46'),
(58, 'App\\Models\\User', 8, 'main', 'f65f0311e2e2872f9bee90c601e57881c870bc7bc5ef52efa59b6a7a22cd835a', '[\"*\"]', NULL, '2022-11-25 00:33:42', '2022-11-25 00:33:42'),
(59, 'App\\Models\\User', 8, 'main', '691f32db8d5961f94b70ed3982037c0e5353bcdb333eaf05d6ab55f2b1a44289', '[\"*\"]', NULL, '2022-11-28 21:35:31', '2022-11-28 21:35:31'),
(60, 'App\\Models\\User', 8, 'main', 'f5272698a019d122e2a8e1978e2f806f40611bdedd9b76fe828ff0649fe7d1d3', '[\"*\"]', NULL, '2022-11-29 18:12:18', '2022-11-29 18:12:18'),
(61, 'App\\Models\\User', 8, 'main', '2e03998469315e6fe17dcf9f584c20349bf002d2d7632e101c6ca7be3796f686', '[\"*\"]', NULL, '2022-11-29 18:15:21', '2022-11-29 18:15:21'),
(62, 'App\\Models\\User', 8, 'main', '7484c83a92b479cd0f05edfdbb698a412d3783a4466529edb7258e83375b87f1', '[\"*\"]', NULL, '2022-11-29 18:16:27', '2022-11-29 18:16:27'),
(63, 'App\\Models\\User', 8, 'main', '4d1b2d8fae9a5a0e553319582b372b547de32a2ead615e65760f40759c8ae16f', '[\"*\"]', NULL, '2022-11-29 18:18:52', '2022-11-29 18:18:52'),
(64, 'App\\Models\\User', 8, 'main', '82e3f2f5ba3f8bc4e433bb36e775826feb1a02e913ef3c230a3ba2b645640339', '[\"*\"]', NULL, '2022-11-29 18:26:11', '2022-11-29 18:26:11'),
(65, 'App\\Models\\User', 8, 'main', '01457f4f4d05dc104ed3c581615822a192e83fbe500cc5868651c58892c3aaa6', '[\"*\"]', NULL, '2022-11-29 18:27:14', '2022-11-29 18:27:14'),
(66, 'App\\Models\\User', 8, 'main', '4e4bf5e09363b4ad9d88d1e54abc2d32c4cde6441df350f4a6547ff78ae46934', '[\"*\"]', NULL, '2022-11-29 18:28:29', '2022-11-29 18:28:29'),
(67, 'App\\Models\\User', 8, 'main', 'ffc7ed1f829c1e1845cab8499d6fad0189a933dd84f932441e131eb64dfb3ff7', '[\"*\"]', NULL, '2022-11-29 18:28:33', '2022-11-29 18:28:33'),
(68, 'App\\Models\\User', 8, 'main', '31120f2219d960882283db6f8cce6ca758dbed4fcc66872f053cbac2afb14993', '[\"*\"]', NULL, '2022-11-29 18:29:07', '2022-11-29 18:29:07'),
(69, 'App\\Models\\User', 8, 'main', 'aa3c83f058fad39b4220c6617c1d67427bc75029c7dba5d6e1cc08b3730d3804', '[\"*\"]', NULL, '2022-11-29 18:32:59', '2022-11-29 18:32:59'),
(70, 'App\\Models\\User', 8, 'main', '65ccede432c55f784758d356aca64ffaadc5497a76e8cb754f0ddc3ea3f37325', '[\"*\"]', NULL, '2022-11-29 18:33:51', '2022-11-29 18:33:51'),
(71, 'App\\Models\\User', 8, 'main', '43d5275e8bbcb5b36cc05c6bc65e59cbe574c23b27de94e5cbef2efc0d6f13c9', '[\"*\"]', NULL, '2022-11-29 18:36:46', '2022-11-29 18:36:46'),
(72, 'App\\Models\\User', 9, 'main', 'a55ec71c207b847b9b1c50e266b866aadf59e689f69009f509136d909b47f7a2', '[\"*\"]', NULL, '2022-12-01 07:16:59', '2022-12-01 07:16:59'),
(73, 'App\\Models\\User', 9, 'main', '395fb6e7763604c303fc2f1085fbfee2a85eeecd524dbd2e1e14e6bf70b52fd4', '[\"*\"]', NULL, '2022-12-01 07:17:14', '2022-12-01 07:17:14'),
(74, 'App\\Models\\User', 9, 'main', '91ba39beb3e11a58b543f215a3f43a7e698367e1c402fbfbaaf5e2bbd448b5e7', '[\"*\"]', '2022-12-14 16:37:59', '2022-12-14 16:11:31', '2022-12-14 16:37:59'),
(75, 'App\\Models\\User', 10, 'main', 'a9f944386716a20f3bc7056b4c7f667486caf60e42f4c0c1d7f2197f464ed8f5', '[\"*\"]', NULL, '2022-12-14 17:22:35', '2022-12-14 17:22:35'),
(76, 'App\\Models\\User', 11, 'main', 'aa1f88e0f62fbd72b8f58bbf51176e8b8dc3a93034a9d0bbf8e14c00a846c56a', '[\"*\"]', NULL, '2022-12-14 17:25:15', '2022-12-14 17:25:15'),
(77, 'App\\Models\\User', 11, 'main', '4eedda9bf43726c6d32ad0ade9911eadb0feec6dc8b57ddaf1865d1cbe24a13f', '[\"*\"]', NULL, '2022-12-14 17:26:01', '2022-12-14 17:26:01'),
(78, 'App\\Models\\User', 12, 'main', '4332155ee88d50e07427c860f207c957a4f4fbfbad9918eca48230fc28ae979a', '[\"*\"]', NULL, '2022-12-19 16:24:06', '2022-12-19 16:24:06'),
(79, 'App\\Models\\User', 12, 'main', 'e54cebba854a2a418c1156c70ac6aaa5231f371aaa8b4590aa4b21d29c3e39ea', '[\"*\"]', NULL, '2022-12-19 16:24:16', '2022-12-19 16:24:16'),
(80, 'App\\Models\\User', 9, 'main', 'defddba4ad3948c8d24f8fe38529df66bb09a01a3c39c996a301e749cd935f91', '[\"*\"]', NULL, '2022-12-19 16:28:59', '2022-12-19 16:28:59'),
(81, 'App\\Models\\User', 9, 'main', '981adf2becf5e96440cf409ad5c5c284fc7acb4ab89b248ed98ffb5182eab5f3', '[\"*\"]', NULL, '2022-12-20 01:20:59', '2022-12-20 01:20:59'),
(82, 'App\\Models\\User', 9, 'main', '2ae20387645f9c36d746629cc407169ad20ed85b0999e515853c7f5f568bcaaf', '[\"*\"]', NULL, '2022-12-21 19:34:10', '2022-12-21 19:34:10'),
(83, 'App\\Models\\User', 9, 'main', 'bac54a702e79943ab8abd22d4b817c9cf17531922256169154357f8d08032ac5', '[\"*\"]', NULL, '2022-12-22 18:08:38', '2022-12-22 18:08:38'),
(84, 'App\\Models\\User', 9, 'main', '77c6d95e6094b913e60ffc09e31dba15391488c61ede91dde8dea50c50397cab', '[\"*\"]', NULL, '2022-12-22 20:54:41', '2022-12-22 20:54:41'),
(85, 'App\\Models\\User', 9, 'main', '4507e28401e174c87c8127ca62b04bce83cc73f8c368aaf333b9e8435ab6ed4b', '[\"*\"]', NULL, '2022-12-23 17:53:06', '2022-12-23 17:53:06'),
(86, 'App\\Models\\User', 9, 'main', '7093b250c55906d5c7c7a310dde05b436d6b030b8306156308bacdad6442c40a', '[\"*\"]', NULL, '2022-12-24 23:09:30', '2022-12-24 23:09:30'),
(87, 'App\\Models\\User', 9, 'main', 'f1591977681a2faa884ae4db2184ff9c3e52e5c9fdae4f81ab201b5ae3c6ce21', '[\"*\"]', NULL, '2023-01-03 07:44:54', '2023-01-03 07:44:54'),
(88, 'App\\Models\\User', 9, 'main', 'b4199554cc1ae477959f324597d986175c30c58eaa833d99274e67da601a5c14', '[\"*\"]', NULL, '2023-01-04 17:13:19', '2023-01-04 17:13:19'),
(89, 'App\\Models\\User', 9, 'main', 'dccf652251f36731de8c8ea75150d4ecc27daa3749092a9ddeb927d9ba0972be', '[\"*\"]', NULL, '2023-01-05 00:22:17', '2023-01-05 00:22:17'),
(90, 'App\\Models\\User', 9, 'main', 'c14625b2c3ddb8f3c37d9e97b4db26a19a2271e5a21ea5b378dbcb442a1a2f80', '[\"*\"]', NULL, '2023-01-05 10:28:54', '2023-01-05 10:28:54'),
(91, 'App\\Models\\User', 9, 'main', '7930bce781b8cfd6342c01a2d85fe83603677f94315b89c3c56381f8b01ba1de', '[\"*\"]', NULL, '2023-01-06 18:43:07', '2023-01-06 18:43:07'),
(92, 'App\\Models\\User', 9, 'main', '3320ab35b8d7ce3fbe706d94500c63975e47f31c32b39cbb135f4e2c6d35cf0d', '[\"*\"]', NULL, '2023-01-07 02:43:06', '2023-01-07 02:43:06'),
(93, 'App\\Models\\User', 9, 'main', 'b6872aa05017cc2dbeb8f0a043e520603917a14b772bc71d74bf6cc391016dd3', '[\"*\"]', NULL, '2023-01-10 04:17:25', '2023-01-10 04:17:25'),
(94, 'App\\Models\\User', 9, 'main', '35088947d82124d3e8055e10164daa8e4c9f78803f7e7c5674b9b4c96f9e2fa9', '[\"*\"]', NULL, '2023-01-10 05:17:18', '2023-01-10 05:17:18'),
(95, 'App\\Models\\User', 9, 'main', '8b180674e2deeaed4f313b0c569c057a1430b5feca08c13a43f104cea31deace', '[\"*\"]', NULL, '2023-01-10 05:20:58', '2023-01-10 05:20:58'),
(96, 'App\\Models\\User', 9, 'main', '7bf8cc4cda9ecd76221de52cfeb1829f682d6c820df695b88f112672cea4050a', '[\"*\"]', NULL, '2023-01-10 23:21:49', '2023-01-10 23:21:49'),
(97, 'App\\Models\\User', 9, 'main', '1ac43728a15a568899887103ab36b37ff21b2a58e2f44e3681d4ad3335a92638', '[\"*\"]', NULL, '2023-01-11 10:11:03', '2023-01-11 10:11:03'),
(98, 'App\\Models\\User', 9, 'main', '954499a3fa296b1527d3ff8dc5f51b9f597f6c91b2aa862b816bd8706b019c36', '[\"*\"]', NULL, '2023-01-13 07:04:16', '2023-01-13 07:04:16'),
(99, 'App\\Models\\User', 9, 'main', '92f01892155952cfa2488af4c3e40bf07107a0379a7565536508276147f6a9c2', '[\"*\"]', NULL, '2023-01-16 03:03:43', '2023-01-16 03:03:43'),
(100, 'App\\Models\\User', 9, 'main', 'a4aa7208004a315072c2b28eefeee3e3e17deb4e9fbb753312f8ecfaa908d043', '[\"*\"]', NULL, '2023-01-22 03:08:29', '2023-01-22 03:08:29'),
(101, 'App\\Models\\User', 9, 'main', '53f7bcb2a04f9b5449a43a86f88137632a204f8faafe4519a7fba5b82c9c2399', '[\"*\"]', NULL, '2023-01-22 03:22:17', '2023-01-22 03:22:17'),
(102, 'App\\Models\\User', 9, 'main', '9c5b1b3cc50d0c1a8dc73a444a9decc673d4a6c63c62dd2448cf70ad307d8dc1', '[\"*\"]', NULL, '2023-01-22 03:22:47', '2023-01-22 03:22:47'),
(103, 'App\\Models\\User', 9, 'main', '064c4192dcdde2a307cab28efb3b1f9e126be16cd187e20a5f12f8633c7f8925', '[\"*\"]', NULL, '2023-01-22 03:27:31', '2023-01-22 03:27:31'),
(104, 'App\\Models\\User', 9, 'main', '59ac0c227a565408e0982ee47237cf1a52e3ef84f5b33a91b282d075b1239f0e', '[\"*\"]', '2023-01-28 00:37:13', '2023-01-22 03:31:16', '2023-01-28 00:37:13'),
(105, 'App\\Models\\User', 9, 'main', 'febe771efe910b93c374b489c1b7b6275885fbd516945f1184d4a4788e09f6e5', '[\"*\"]', '2023-01-28 02:21:53', '2023-01-28 00:38:19', '2023-01-28 02:21:53'),
(106, 'App\\Models\\User', 9, 'main', 'e1133b803e6d4581861106a493339afb0aa38725a50d5690096581eea3e9689c', '[\"*\"]', '2023-01-29 08:33:40', '2023-01-29 05:04:26', '2023-01-29 08:33:40'),
(107, 'App\\Models\\User', 9, 'main', 'dae8f7365eaaf2dc2f4980c843ea6c1e269f61ad0716865f8ca5f4bdc91685ab', '[\"*\"]', '2023-01-29 17:42:27', '2023-01-29 17:42:08', '2023-01-29 17:42:27'),
(108, 'App\\Models\\User', 9, 'main', 'a84d818179792a1b24208a773da1739f8b03ad0dbb3d1e4875ffd0ffe2835c46', '[\"*\"]', '2023-01-29 23:33:43', '2023-01-29 23:08:16', '2023-01-29 23:33:43'),
(109, 'App\\Models\\User', 9, 'main', '9e16b4657b2eedffa377d168282b72f112903496c44f167b94721b95cb38a7cf', '[\"*\"]', '2023-01-29 23:37:34', '2023-01-29 23:37:29', '2023-01-29 23:37:34'),
(110, 'App\\Models\\User', 9, 'main', '413c236a1d33f4c7a8375f0263576d1e7753ac05dd6ef2d5c01d5da1c7ffe76b', '[\"*\"]', '2023-01-30 19:24:24', '2023-01-30 19:24:12', '2023-01-30 19:24:24'),
(111, 'App\\Models\\User', 9, 'main', '0b9fafd19dcce7e5d626dafa4bae4047c05171d85a2459c2afd9e6e47430dcb9', '[\"*\"]', '2023-01-30 21:25:29', '2023-01-30 19:25:45', '2023-01-30 21:25:29'),
(112, 'App\\Models\\User', 9, 'main', 'bdbb6f713397436f5cc8c31e2d167297bf0c3596ac7f17d443e75ebe8fcafcd3', '[\"*\"]', '2023-01-31 19:04:37', '2023-01-31 04:53:30', '2023-01-31 19:04:37'),
(113, 'App\\Models\\User', 9, 'main', '430819be074171c8aed2da03d23b45dfae5b28b52b63aaefdf0c083e7c13bd70', '[\"*\"]', '2023-01-31 21:46:14', '2023-01-31 10:18:55', '2023-01-31 21:46:14'),
(114, 'App\\Models\\User', 13, 'main', '17c0234daefb9010b2f1f3d58d9e73e7b2ea1a8c159aeb1bea1a2548687f2ddf', '[\"*\"]', NULL, '2023-01-31 21:47:47', '2023-01-31 21:47:47'),
(115, 'App\\Models\\User', 13, 'main', 'd4861363d01ceb534100897f1963ce89b3672b8832559a17ca1b0cd4e4e60412', '[\"*\"]', '2023-01-31 21:51:25', '2023-01-31 21:47:58', '2023-01-31 21:51:25'),
(116, 'App\\Models\\User', 14, 'main', '68a3ac07c4def03b758a6280c3d1b743abb48b1551d6d5ea5acbd85cd051b100', '[\"*\"]', NULL, '2023-01-31 21:51:52', '2023-01-31 21:51:52'),
(117, 'App\\Models\\User', 14, 'main', 'cbce0e62d41517b44b9c9fab1bfeaffd55c88f8938188a7fcd3aa8900e213745', '[\"*\"]', '2023-01-31 21:52:11', '2023-01-31 21:52:02', '2023-01-31 21:52:11'),
(118, 'App\\Models\\User', 9, 'main', 'fac18343ff92ac9ed767165365f1a027c57669380ae5d33d301e4165a3e9bd69', '[\"*\"]', '2023-02-04 09:52:34', '2023-02-01 06:02:07', '2023-02-04 09:52:34'),
(119, 'App\\Models\\User', 9, 'main', 'b4b03d8e6fbc5e29c81269f73814eec13d02994075d08f3a951d74d763514bdb', '[\"*\"]', NULL, '2023-02-01 06:06:06', '2023-02-01 06:06:06'),
(120, 'App\\Models\\User', 9, 'main', '1315b00ee91f98d54cf91205b1c1030ca57b9e1038795802e0de3a1a9b9b48f8', '[\"*\"]', NULL, '2023-02-01 07:43:45', '2023-02-01 07:43:45'),
(121, 'App\\Models\\User', 9, 'main', '93708d85cc064485f8158d36a2f4ca2f600abba5239d0b553631dd2cf89bafb9', '[\"*\"]', '2023-02-01 08:27:12', '2023-02-01 08:26:57', '2023-02-01 08:27:12'),
(122, 'App\\Models\\User', 9, 'main', 'e290ed5c1898f7ed9e2d5666bde8c190e3a8a2b8049b0edec3e8467511369a52', '[\"*\"]', NULL, '2023-02-01 08:29:16', '2023-02-01 08:29:16'),
(123, 'App\\Models\\User', 9, 'main', '6280844b6b7f4055d58f9ce4ef2bf5d50fa6813a65a57e2478f0b68a9bf266ff', '[\"*\"]', '2023-02-01 08:30:38', '2023-02-01 08:30:01', '2023-02-01 08:30:38'),
(124, 'App\\Models\\User', 9, 'main', '85d2c0808c78582ec8df1a53b9ed806ecdb94e8b2a5a1a04d6068b4ac75b4a62', '[\"*\"]', '2023-02-01 19:04:40', '2023-02-01 10:58:19', '2023-02-01 19:04:40'),
(125, 'App\\Models\\User', 9, 'main', '79163b8bc84a2aaf9544ad6aabc357bb1bcc93110dec9f185a75d60f2e1c40a7', '[\"*\"]', '2023-02-03 19:31:24', '2023-02-02 00:47:45', '2023-02-03 19:31:24'),
(126, 'App\\Models\\User', 9, 'main', '0c7c3a960398079da28921db0a3759a79a548b6eb45ecbbbbe218792a32b8860', '[\"*\"]', NULL, '2023-02-02 16:45:04', '2023-02-02 16:45:04'),
(127, 'App\\Models\\User', 9, 'main', 'a9316a241625e2400172bf1af287dcb7bf2528ab79fe08df06133ee658c6ea33', '[\"*\"]', NULL, '2023-02-02 16:45:15', '2023-02-02 16:45:15'),
(128, 'App\\Models\\User', 9, 'main', 'a0a5cfa12a3099733110c39a569e6a7f3bc6e3b9ee24301cb341f49dccd51453', '[\"*\"]', NULL, '2023-02-02 16:45:17', '2023-02-02 16:45:17'),
(129, 'App\\Models\\User', 9, 'main', 'a340e68c2ab6974e1ba39361d360f16fad60a7a12f304ee437b77931728525b5', '[\"*\"]', NULL, '2023-02-02 16:45:41', '2023-02-02 16:45:41'),
(130, 'App\\Models\\User', 9, 'main', 'b6218e7a4d1beef3e171492e3c786e03ac15c37368727aa6269985d8820af724', '[\"*\"]', '2023-02-02 17:55:24', '2023-02-02 16:45:58', '2023-02-02 17:55:24'),
(131, 'App\\Models\\User', 9, 'main', '2e8ecb7a98786e7fe7119c0d57fa4ab1f799acff0dd482abe974efb1041159ad', '[\"*\"]', NULL, '2023-02-04 14:28:36', '2023-02-04 14:28:36'),
(132, 'App\\Models\\User', 9, 'main', '00a2191906cbbad3adb73870eded10927f4bd555d8e6607e8b87bf9b02365b48', '[\"*\"]', NULL, '2023-02-04 14:28:45', '2023-02-04 14:28:45'),
(133, 'App\\Models\\User', 9, 'main', '4260c2b43bb17b7f7de3b86c08a7ec876b32c2b87875ea02ddb5e07a011e6ee9', '[\"*\"]', '2023-02-04 16:42:21', '2023-02-04 14:29:17', '2023-02-04 16:42:21'),
(134, 'App\\Models\\User', 9, 'main', '3900e35d01e4e28b1d8f3ae1973442023982024051084a389676a4df05bf04ed', '[\"*\"]', NULL, '2023-02-04 22:00:11', '2023-02-04 22:00:11'),
(135, 'App\\Models\\User', 9, 'main', '8e5790a6f15ecf71446ea6a43c6e55417d8ea4cb4c80faeb57d9831d7225a228', '[\"*\"]', NULL, '2023-02-04 22:00:18', '2023-02-04 22:00:18'),
(136, 'App\\Models\\User', 9, 'main', 'b690bb8dac30997bdadb7d2805809aeed58993344065044176087bb6ec673fb0', '[\"*\"]', NULL, '2023-02-04 22:00:31', '2023-02-04 22:00:31'),
(137, 'App\\Models\\User', 9, 'main', '5c72356d96db40cb74eb6df82b0455309c6a52f50be527f51311b4c763290a3d', '[\"*\"]', NULL, '2023-02-04 22:01:05', '2023-02-04 22:01:05'),
(138, 'App\\Models\\User', 9, 'main', 'b106a87dc2d83fbca74bfa3464b25d7cf166931bf8c17760bf56d294a1595a24', '[\"*\"]', NULL, '2023-02-04 22:01:13', '2023-02-04 22:01:13'),
(139, 'App\\Models\\User', 9, 'main', 'bde8e98c20568221db9c8a63c416e8a712c76cfeecd2905ec0fde68aa6430a3d', '[\"*\"]', NULL, '2023-02-04 22:01:21', '2023-02-04 22:01:21'),
(140, 'App\\Models\\User', 9, 'main', 'e0ede40a3bff5f303bf396990ea0ce78b1699a8e779f946408dcc103cb342fbd', '[\"*\"]', NULL, '2023-02-04 22:01:36', '2023-02-04 22:01:36'),
(141, 'App\\Models\\User', 9, 'main', '775a4733cb19daa9c53790860bca3a81bab23b11db81d8cf24b74a7523b79d7a', '[\"*\"]', NULL, '2023-02-04 22:01:37', '2023-02-04 22:01:37'),
(142, 'App\\Models\\User', 9, 'main', '8697b26a9c78030d09dc607e781e9ccf885f3eb669393b1fc0a48365bcb101ce', '[\"*\"]', '2023-02-07 08:21:43', '2023-02-04 22:01:52', '2023-02-07 08:21:43'),
(143, 'App\\Models\\User', 9, 'main', 'ed6ff59a4cc781ebc18a5a8db2b449c5d5fff4d5c66d8a3265a66c75b2519245', '[\"*\"]', '2023-02-09 17:38:33', '2023-02-07 09:22:16', '2023-02-09 17:38:33'),
(144, 'App\\Models\\User', 9, 'main', '86c4ff13614dcf2589422e418f13544988fe717576a31d3d463314a482aebda9', '[\"*\"]', NULL, '2023-02-10 22:36:21', '2023-02-10 22:36:21'),
(145, 'App\\Models\\User', 9, 'main', 'ae32c6927e4986a4783e154e9426695ed0941dae4ca912b3e8bd83752f591147', '[\"*\"]', NULL, '2023-02-10 23:03:54', '2023-02-10 23:03:54'),
(146, 'App\\Models\\User', 9, 'main', '5c3e14fc2b22470c2f7393431d2cdc93fbbb09b2bffc347d0a424473693df8c4', '[\"*\"]', '2023-02-10 23:52:58', '2023-02-10 23:04:04', '2023-02-10 23:52:58'),
(147, 'App\\Models\\User', 9, 'main', '8d8717ab5d684d527d312045a72363af511899d43980ec23968dc77885b69047', '[\"*\"]', '2023-02-11 06:35:48', '2023-02-11 03:22:08', '2023-02-11 06:35:48'),
(148, 'App\\Models\\User', 9, 'main', '69dea6f13e3ee035c9af79497a7fcc62ff1466d5293ac7f281c8c2bb3fa045c5', '[\"*\"]', '2023-02-12 19:48:33', '2023-02-11 06:44:42', '2023-02-12 19:48:33'),
(149, 'App\\Models\\User', 9, 'main', 'cef910810576668ef03c69e5721138bb58ce19448681931577584d0841057054', '[\"*\"]', '2023-02-13 14:30:30', '2023-02-11 19:41:36', '2023-02-13 14:30:30'),
(150, 'App\\Models\\User', 9, 'main', '270646fb56cb93b36247594d383698f6a8a7f3ed2c8002dfbb42d2b7a129510d', '[\"*\"]', '2023-02-13 18:53:46', '2023-02-12 19:49:00', '2023-02-13 18:53:46'),
(151, 'App\\Models\\User', 9, 'main', '266a717731d0adf7eb827468b31790c135b1552bee591f8441cdb60ed545dd71', '[\"*\"]', NULL, '2023-02-16 07:57:17', '2023-02-16 07:57:17'),
(152, 'App\\Models\\User', 9, 'main', '648e599f5d47ac6a803de917bafb56297ad5a6949db8ca51e9b2db042cbd6dab', '[\"*\"]', NULL, '2023-02-16 07:57:40', '2023-02-16 07:57:40'),
(153, 'App\\Models\\User', 9, 'main', '0227ec1ba9c3834f85b2489df95117a39fbd4b5a3f78c3a76968fd557272732c', '[\"*\"]', NULL, '2023-02-16 07:58:34', '2023-02-16 07:58:34'),
(154, 'App\\Models\\User', 9, 'main', 'f2941a2bb2dbb5efee3c7b174957d6282455f84000a47e1b5535ad357a12925c', '[\"*\"]', NULL, '2023-02-16 08:21:07', '2023-02-16 08:21:07'),
(155, 'App\\Models\\User', 9, 'main', '65a6458e125a87add082146d47ff2262218586af9e574ffc4b1fdff7ddf4a6b7', '[\"*\"]', NULL, '2023-02-16 08:21:09', '2023-02-16 08:21:09'),
(156, 'App\\Models\\User', 9, 'main', '809a711cf24a865bd27b9cca935fe5f0122c1a24c68c93eb1c8b950f9b8a1d71', '[\"*\"]', NULL, '2023-02-16 08:21:15', '2023-02-16 08:21:15'),
(157, 'App\\Models\\User', 9, 'main', '827732bec01739c2cf1b4e57745416058837d886ad50b3e870c00244edaa2de6', '[\"*\"]', NULL, '2023-02-16 08:21:24', '2023-02-16 08:21:24'),
(158, 'App\\Models\\User', 9, 'main', 'e9e85a92eadbc0f6defe4eaed059be54d3f1f5296dbbb439c9082bd0aef6df4a', '[\"*\"]', NULL, '2023-02-16 08:21:41', '2023-02-16 08:21:41'),
(159, 'App\\Models\\User', 9, 'main', '3760e8b5f2a59be902564d4a61e1364b8f953dc127a979def7c8f95c02a4a734', '[\"*\"]', '2023-02-16 23:08:14', '2023-02-16 22:50:46', '2023-02-16 23:08:14'),
(160, 'App\\Models\\User', 9, 'main', '84bfb33494f67e2038653f94562a9d9984c9fa6ac8913d6673d1687334ee34a6', '[\"*\"]', NULL, '2023-02-16 23:10:21', '2023-02-16 23:10:21'),
(161, 'App\\Models\\User', 9, 'main', '7e55fcb9799e03834775a5c75174c49b1b8f10dcdb219a2b9ef63b023cc7850b', '[\"*\"]', NULL, '2023-02-16 23:10:38', '2023-02-16 23:10:38'),
(162, 'App\\Models\\User', 9, 'main', '0639b4ec608d1e890468ae6984d88c9adf8ce89258f1c460ee27605c1f3d390c', '[\"*\"]', '2023-02-18 08:44:21', '2023-02-16 23:15:10', '2023-02-18 08:44:21'),
(163, 'App\\Models\\User', 9, 'main', 'decee302e657c95a718e55488d7c9b1d1194e713205513cd07cbe07583c70746', '[\"*\"]', NULL, '2023-02-16 23:35:35', '2023-02-16 23:35:35'),
(164, 'App\\Models\\User', 9, 'main', 'ff9bc1d386e507da8205c2c4f3ef6d5d0aba1b253f18552434d35ccb141bb08a', '[\"*\"]', NULL, '2023-02-16 23:35:36', '2023-02-16 23:35:36'),
(165, 'App\\Models\\User', 9, 'main', 'cb601b104e2ce8ac14941d3ea1a8891a705a16fe6bf4cd39a8317869121be160', '[\"*\"]', NULL, '2023-02-16 23:35:48', '2023-02-16 23:35:48'),
(166, 'App\\Models\\User', 9, 'main', '4cf176f8494dfd4698bc5362a21aba64e92bce7a15413003841967f517dc0812', '[\"*\"]', '2023-02-18 21:46:47', '2023-02-18 12:37:45', '2023-02-18 21:46:47'),
(167, 'App\\Models\\User', 9, 'main', 'c6dc6c819174bed638aa2f50367dcdcf213b9297512a0ce3aa0d4d608a856871', '[\"*\"]', NULL, '2023-02-18 21:48:06', '2023-02-18 21:48:06'),
(168, 'App\\Models\\User', 9, 'main', '7bd40040b76ecd06b2d6d3fcee5e9bea6982480f67733440eea77a25046be6dd', '[\"*\"]', NULL, '2023-02-18 21:49:22', '2023-02-18 21:49:22'),
(169, 'App\\Models\\User', 9, 'main', '39fce2d4a9461b91020ad71ed8a06daa38a1786a51d51c87dd84f569c63e34ef', '[\"*\"]', NULL, '2023-02-18 21:49:25', '2023-02-18 21:49:25'),
(170, 'App\\Models\\User', 9, 'main', '50ceacb980d25cc2520723e0dc008c367504f599c3c055ef7be4d7f5388cd4a5', '[\"*\"]', NULL, '2023-02-18 21:49:35', '2023-02-18 21:49:35'),
(171, 'App\\Models\\User', 9, 'main', 'df7cc3235d7f981a8565850fe37fce39978981793101c2eea6fa4db94f8fc5f6', '[\"*\"]', '2023-02-20 23:00:03', '2023-02-18 21:58:34', '2023-02-20 23:00:03'),
(172, 'App\\Models\\User', 9, 'main', 'abff6114defae93bd8adc07d03880d8c2aa69c4a8f9cbc6e3b0c5b4d1c649f80', '[\"*\"]', NULL, '2023-02-21 06:57:46', '2023-02-21 06:57:46'),
(173, 'App\\Models\\User', 9, 'main', '22da1e6e861a2ad65298b42f07e1258da6d2b0b7f045cd2edf4f695a1b678ec3', '[\"*\"]', NULL, '2023-02-21 06:57:49', '2023-02-21 06:57:49'),
(174, 'App\\Models\\User', 9, 'main', '853468f77f61446472e53aed3e93a14fbf7dd03ff8578e92d551ee993d5ba9fe', '[\"*\"]', '2023-02-21 16:47:58', '2023-02-21 06:58:10', '2023-02-21 16:47:58'),
(175, 'App\\Models\\User', 9, 'main', '1210edf003a0d51c849f3155378d507075a90eb20d67cd53a5f2ce37e08c02f8', '[\"*\"]', '2023-02-22 22:41:30', '2023-02-21 23:43:42', '2023-02-22 22:41:30'),
(176, 'App\\Models\\User', 9, 'main', '395c3bbf700a1b58c27a4468a6d7dddf3c5d48fc173e51f8795cebaca1a0c2c2', '[\"*\"]', NULL, '2023-02-22 22:42:07', '2023-02-22 22:42:07'),
(177, 'App\\Models\\User', 9, 'main', '4156be3acf7f50e932f4bb9713c66d218c362641da39f8d63fe055e53ad8c247', '[\"*\"]', '2023-02-23 16:43:14', '2023-02-22 22:42:26', '2023-02-23 16:43:14'),
(178, 'App\\Models\\User', 9, 'main', '7ed49afc0630167038d0357bbd4f98df5eaf234d9ebd3e78580ea1fd253dae1f', '[\"*\"]', '2023-02-24 00:14:39', '2023-02-23 17:34:19', '2023-02-24 00:14:39'),
(179, 'App\\Models\\User', 9, 'main', 'ce914ab1a28c16a0d43f24705658129182a9d7b0d291fca637c3455140f178af', '[\"*\"]', '2023-02-24 03:24:40', '2023-02-24 00:14:58', '2023-02-24 03:24:40'),
(180, 'App\\Models\\User', 9, 'main', 'a8075fd48223e5aa238db42f68e80d179bcd6683e99b65c4f2f5801384b75323', '[\"*\"]', '2023-02-24 06:33:12', '2023-02-24 06:13:30', '2023-02-24 06:33:12'),
(181, 'App\\Models\\User', 9, 'main', 'd42d86de0c028fe3df6f8b7a28ebab0a238e4d90b01c48726411d6ecef56f9e0', '[\"*\"]', NULL, '2023-02-24 09:35:35', '2023-02-24 09:35:35'),
(182, 'App\\Models\\User', 9, 'main', 'f2bbe915e034064fd6ba1ae0de5cf61d9c3099019843431dfee57db34f9f79ce', '[\"*\"]', '2023-02-26 20:20:28', '2023-02-24 09:35:48', '2023-02-26 20:20:28'),
(183, 'App\\Models\\User', 9, 'main', 'f2776c3519e56444dfadde15b21ce4ba4413e3179cddc7e0ad9dda8e5e9ccd78', '[\"*\"]', NULL, '2023-02-25 23:27:07', '2023-02-25 23:27:07'),
(184, 'App\\Models\\User', 9, 'main', '1dc430e6a73cb5364433d19b77fc9c47e15c0a62b3fc59dadd08f934bc7900b4', '[\"*\"]', NULL, '2023-02-25 23:27:10', '2023-02-25 23:27:10'),
(185, 'App\\Models\\User', 9, 'main', '72fa54a57dbb4f395ab61d439634dee2fdd21f52571e5aa05fee0cf8554e58cb', '[\"*\"]', NULL, '2023-02-25 23:27:34', '2023-02-25 23:27:34'),
(186, 'App\\Models\\User', 9, 'main', 'efab33f9d48b218f498445a365806ab52e1c6b47a0b3e711f5c74138d3a441b1', '[\"*\"]', NULL, '2023-02-26 01:52:02', '2023-02-26 01:52:02'),
(187, 'App\\Models\\User', 9, 'main', '1a81c6fca587d86a13d24fda71b5767d49d2e20869b5e858dbb055197a80747e', '[\"*\"]', NULL, '2023-02-26 01:52:52', '2023-02-26 01:52:52'),
(188, 'App\\Models\\User', 9, 'main', 'f88f6b39b8de596626be4ac7706cf010e27a6c67ecfac7d538a9403a46cb7768', '[\"*\"]', '2023-02-26 20:42:31', '2023-02-26 20:21:19', '2023-02-26 20:42:31'),
(189, 'App\\Models\\User', 4, 'main', 'c6ae2f4f8b5be740d9f5289b2233b18bab8867b52f0d6a269c47f74ce5f2cf65', '[\"*\"]', NULL, '2023-02-28 01:00:10', '2023-02-28 01:00:10'),
(190, 'App\\Models\\User', 4, 'main', '342f00d5cd7225f8f6c0f8f45e1b4dc95dde8bbb1ca1dd295d59212aad7b4e45', '[\"*\"]', '2023-02-28 01:03:17', '2023-02-28 01:00:43', '2023-02-28 01:03:17'),
(191, 'App\\Models\\User', 4, 'main', 'cc7ec274d765941bb5774a97329c7b9aa5a8c904a7c3a106795596c99d987973', '[\"*\"]', NULL, '2023-02-28 01:03:23', '2023-02-28 01:03:23'),
(192, 'App\\Models\\User', 5, 'main', 'ab1911075c03acb9ffff6748e640127932f53145be803f8a851efd25a6fbe929', '[\"*\"]', '2023-02-28 01:05:15', '2023-02-28 01:04:40', '2023-02-28 01:05:15'),
(193, 'App\\Models\\User', 5, 'main', 'c3ea65aafa741d3a978f80f914857e2da6f85637fc01bd818867c48125c42359', '[\"*\"]', '2023-03-01 04:36:47', '2023-02-28 01:05:21', '2023-03-01 04:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `proy_areaintegrante`
--

CREATE TABLE `proy_areaintegrante` (
  `codArea` bigint(20) NOT NULL,
  `desArea` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proy_areaintegrante`
--

INSERT INTO `proy_areaintegrante` (`codArea`, `desArea`) VALUES
(1, 'Residencia'),
(2, 'Of. Tecnica '),
(3, 'Jefe de Campo'),
(4, 'Jefe de SSOMA'),
(5, 'Administración'),
(6, 'Jefe de Calidad');

-- --------------------------------------------------------

--
-- Table structure for table `proy_integrantes`
--

CREATE TABLE `proy_integrantes` (
  `codProyIntegrante` bigint(20) NOT NULL,
  `codProyecto` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `codEstadoInvitacion` varchar(255) DEFAULT NULL,
  `codArea` int(11) DEFAULT NULL,
  `dayFechaInvitacion` datetime DEFAULT NULL,
  `dayFechaInvitacionConfirmacion` datetime DEFAULT NULL,
  `codRolIntegrante` int(11) DEFAULT NULL,
  `desCorreo` varchar(255) DEFAULT NULL,
  `idIntegrante` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `proy_integrantes`
--

INSERT INTO `proy_integrantes` (`codProyIntegrante`, `codProyecto`, `id`, `codEstadoInvitacion`, `codArea`, `dayFechaInvitacion`, `dayFechaInvitacionConfirmacion`, `codRolIntegrante`, `desCorreo`, `idIntegrante`) VALUES
(5, 1, 9, '1', 3, '2023-02-11 13:08:28', NULL, 2, 'juan@gmail.com', NULL),
(6, 1, 9, '1', 6, '2023-02-11 13:08:28', NULL, 1, 'pedro@gmail.com', NULL),
(7, 2, 9, '1', 1, '2023-02-23 13:02:58', NULL, 1, 'karina@gmail.com', NULL),
(8, 2, 9, '1', 4, '2023-02-23 13:02:58', NULL, 2, 'jorge@gmail.com', NULL),
(9, 3, 9, '1', 3, '2023-02-23 15:10:36', NULL, 1, 'crsirina@gmail.com', NULL),
(10, 4, 9, '1', 2, '2023-02-23 20:19:05', NULL, 2, 'alex@gmail.com', NULL),
(13, 6, 9, '1', 2, '2023-02-24 04:18:02', NULL, 1, 'cristina@gmail.com', NULL),
(14, 6, 9, '1', 3, '2023-02-24 04:18:02', NULL, 2, 'jasmin@gmail.com', NULL),
(17, 7, 9, '1', 5, '2023-02-24 04:24:05', NULL, 2, 'cristina@gmail.com', 11),
(18, 7, 9, '1', 4, '2023-02-24 04:24:05', NULL, 1, 'pedro@gmail.com', -999),
(20, 9, 5, '1', 2, '2023-02-28 17:41:05', NULL, 1, 'peter@p.com', 5),
(21, 9, 5, '1', 4, '2023-02-28 17:41:05', NULL, 1, 'cristina@gmail.com', 11),
(22, 12, 5, '1', 4, '2023-03-01 11:54:29', NULL, 1, 'peter@p.com', 5);

-- --------------------------------------------------------

--
-- Table structure for table `proy_proyecto`
--

CREATE TABLE `proy_proyecto` (
  `codProyecto` bigint(20) NOT NULL,
  `desNombreProyecto` varchar(250) DEFAULT NULL,
  `codEstado` int(11) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `desEmpresa` varchar(100) DEFAULT NULL,
  `numPlazo` int(11) DEFAULT NULL,
  `numAreaTechado` decimal(25,2) DEFAULT NULL,
  `codTipoProyecto` bigint(20) NOT NULL,
  `codUbigeo` int(11) DEFAULT NULL,
  `dayFechaInicio` datetime DEFAULT NULL,
  `numMontoReferencial` decimal(25,2) DEFAULT NULL,
  `numAreaTechada` decimal(25,2) DEFAULT NULL,
  `numAreaConstruida` decimal(25,2) DEFAULT NULL,
  `desPais` varchar(255) DEFAULT NULL,
  `desDireccion` varchar(255) DEFAULT NULL,
  `dayFechaCreacion` datetime DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) DEFAULT NULL,
  `codMoneda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `proy_proyecto`
--

INSERT INTO `proy_proyecto` (`codProyecto`, `desNombreProyecto`, `codEstado`, `id`, `desEmpresa`, `numPlazo`, `numAreaTechado`, `codTipoProyecto`, `codUbigeo`, `dayFechaInicio`, `numMontoReferencial`, `numAreaTechada`, `numAreaConstruida`, `desPais`, `desDireccion`, `dayFechaCreacion`, `desUsuarioCreacion`, `codMoneda`) VALUES
(1, 'proyecto1', 1, 9, '1', 12, '142.00', 6, 1699, '2023-02-09 00:00:00', '15000.00', '0.00', '1500.00', 'Perú', 'lima', '2023-02-11 13:08:28', 'juan@gmail.com, karin@gmail.com,', 1),
(2, 'nuevo pro', 1, 9, '1', 12, '12.00', 2, 934, '2023-02-03 00:00:00', '5000.00', '0.00', '5000.00', 'Perú', 'vila', '2023-02-23 13:02:58', 'karina@gmail.com, jorge@gmail.com, ,', 1),
(3, 'empresa nada', 1, 9, '10', 12, '12.00', 4, 1313, '2023-02-09 00:00:00', '150.00', '0.00', '21.00', 'Perú', 'ssds', '2023-02-23 15:10:36', 'crsirina@gmail.com,', 2),
(4, 'preitensd', 1, 9, '1', 12, '0.00', 2, 1322, '2023-02-04 00:00:00', '121.00', '0.00', '15.00', 'Perú', 'sd', '2023-02-23 20:19:05', 'alex@gmail.com,', 2),
(5, 'proyecto noche', 1, 9, '1', 12, '15.00', 2, 1851, '2023-02-02 00:00:00', '1500.00', '0.00', '1400.00', 'Perú', 'villa', '2023-02-24 03:56:02', 'diego@gmail.com, jasmin@gmail.com,', 2),
(6, 'prueba de noche 2', 1, 9, '1', 12, '21.00', 2, 1699, '2023-02-01 00:00:00', '12.00', '0.00', '12.00', 'Perú', 'sas', '2023-02-24 04:18:02', 'cristina@gmail.com, jasmin@gmail.com,', 0),
(7, 'prueba noche 3', 1, 9, '5', 12, '12.00', 2, 107, '2023-02-15 00:00:00', '1500.00', '0.00', '12.00', 'Perú', 'sd', '2023-02-24 04:24:05', 'cristina@gmail.com, pierina@gmail.com,', 0),
(8, 'Test', 1, 5, '2', 122, '14.00', 2, 4, '2023-02-01 00:00:00', '10.00', '0.00', '12.00', 'Perú', 'test address', '2023-02-28 11:08:20', NULL, 0),
(9, 'test', 1, 5, '2', 20, '20.00', 2, 4, '2023-01-31 00:00:00', '20.00', '0.00', '20.00', 'Peru', 'test', '2023-02-28 17:41:05', 'peter@p.com, cristina@gmail.com,', 0),
(10, 'tst', 1, 5, '9', 20, '20.00', 4, 11, '2023-03-02 00:00:00', '20.00', '0.00', '20.00', 'Perú', 'tst', '2023-03-01 10:57:00', NULL, 0),
(11, 'tttt', 1, 5, '8', 20, '20.00', 3, 15, '2023-03-02 00:00:00', '20.00', '0.00', '20.00', 'Perú', 'tes', '2023-03-01 11:51:31', NULL, 0),
(12, 't', 1, 5, '8', 20, '2.00', 7, 0, '2023-03-04 00:00:00', '0.00', '0.00', '20.00', 'Perú', '20', '2023-03-01 11:54:29', 'peter@p.com,', 0),
(13, 't', 1, 5, '2', 20, '20.00', 6, 4, '2023-03-09 00:00:00', '20.00', '0.00', '20.00', 'Perú', 't', '2023-03-01 13:10:01', NULL, 0),
(14, 'ts', 1, 5, '8', 20, '20.00', 4, 15, '2023-03-09 00:00:00', '20.00', '0.00', '20.00', 'Perú', 't', '2023-03-01 13:11:26', NULL, 0),
(15, 't', 1, 5, '2', 20, '20.00', 3, 13, '2023-03-09 00:00:00', '20.00', '0.00', '20.00', 'Perú', 't', '2023-03-01 13:13:24', NULL, 0),
(16, 't', 1, 5, '8', 20, '20.00', 2, 11, '2023-03-02 00:00:00', '20.00', '0.00', '20.00', 'Perú', 't', '2023-03-01 13:17:16', NULL, 2),
(17, 't', 1, 5, '9', 20, '20.00', 3, 4, '2023-03-02 00:00:00', '20.00', '0.00', '20.00', 'Perú', '20', '2023-03-01 13:19:30', NULL, 0),
(18, 't', 1, 5, '9', 20, '20.00', 3, 11, '2023-03-09 00:00:00', '20.00', '0.00', '20.00', 'Perú', 't', '2023-03-01 13:20:13', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proy_proyectoconf`
--

CREATE TABLE `proy_proyectoconf` (
  `codProyectoconf` bigint(20) NOT NULL,
  `codProyecto` bigint(20) NOT NULL,
  `codTipoDiaProgramacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proy_proyectoconf`
--

INSERT INTO `proy_proyectoconf` (`codProyectoconf`, `codProyecto`, `codTipoDiaProgramacion`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 1),
(5, 6, 1),
(6, 7, 1),
(7, 8, 1),
(8, 9, 0),
(9, 10, 0),
(10, 11, 0),
(11, 12, 2),
(12, 13, 0),
(13, 14, 0),
(14, 15, 0),
(15, 16, 0),
(16, 17, 0),
(17, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proy_proyectoreportes`
--

CREATE TABLE `proy_proyectoreportes` (
  `codUtilReportes` int(11) NOT NULL,
  `codProyecto` bigint(20) NOT NULL,
  `flagReporteMasivo` int(11) DEFAULT NULL,
  `codTipoFrecuencia` char(2) DEFAULT NULL,
  `dayFechaCreacion` datetime DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) DEFAULT NULL,
  `desCorreoEnvios` varchar(255) DEFAULT NULL,
  `codfrecuenciaenvioreporte` int(11) DEFAULT NULL,
  `flagApplyAllStatus` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `proy_proyectoreportes`
--

INSERT INTO `proy_proyectoreportes` (`codUtilReportes`, `codProyecto`, `flagReporteMasivo`, `codTipoFrecuencia`, `dayFechaCreacion`, `desUsuarioCreacion`, `desCorreoEnvios`, `codfrecuenciaenvioreporte`, `flagApplyAllStatus`) VALUES
(80, 1, 1, 'LV', '2023-02-11 10:19:38', '', '', 1, NULL),
(81, 1, 0, 'LV', '2023-02-11 13:08:28', '', 'juan@gmail.com', 1, NULL),
(81, 1, 0, 'LV', '2023-02-11 13:08:28', '', 'karin@gmail.com', 2, NULL),
(82, 2, 1, 'LS', '2023-02-23 13:02:58', '', '', 2, NULL),
(83, 3, 1, 'LV', '2023-02-23 15:10:36', '', '', 1, NULL),
(84, 4, 1, 'LV', '2023-02-23 20:19:05', '', '', 1, NULL),
(85, 6, 1, 'LV', '2023-02-24 03:59:01', '', '', 2, NULL),
(86, 7, 1, 'LV', '2023-02-24 04:23:39', '', '', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proy_rolintegrante`
--

CREATE TABLE `proy_rolintegrante` (
  `codRolIntegrante` int(11) NOT NULL,
  `desRolIntegrante` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `proy_rolintegrante`
--

INSERT INTO `proy_rolintegrante` (`codRolIntegrante`, `desRolIntegrante`) VALUES
(1, 'Visualizador'),
(2, 'Editor');

-- --------------------------------------------------------

--
-- Table structure for table `proy_tipoproyecto`
--

CREATE TABLE `proy_tipoproyecto` (
  `codTipoProyecto` bigint(20) NOT NULL,
  `desTipoProyecto` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proy_tipoproyecto`
--

INSERT INTO `proy_tipoproyecto` (`codTipoProyecto`, `desTipoProyecto`) VALUES
(1, 'Vivienda'),
(2, 'Educativo'),
(3, 'Industrial'),
(4, 'Hospitales'),
(5, 'Hoteleros'),
(6, 'Retails'),
(7, 'Obras Civiles');

-- --------------------------------------------------------

--
-- Table structure for table `sec_cargo`
--

CREATE TABLE `sec_cargo` (
  `codCargo` int(11) NOT NULL,
  `nameCargo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `sec_cargo`
--

INSERT INTO `sec_cargo` (`codCargo`, `nameCargo`) VALUES
(1, 'Encargado'),
(2, 'Trabajador');

-- --------------------------------------------------------

--
-- Table structure for table `sec_membresia`
--

CREATE TABLE `sec_membresia` (
  `codMembresia` bigint(20) NOT NULL,
  `desMembresia` varchar(255) DEFAULT NULL,
  `canDiasPrueba` int(11) DEFAULT NULL,
  `desMonto` varchar(255) DEFAULT NULL,
  `canProyectos` int(11) DEFAULT NULL,
  `desFrecuencia` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sec_membresiausuario`
--

CREATE TABLE `sec_membresiausuario` (
  `codMembresiaUsuario` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL,
  `codMembresia` bigint(20) NOT NULL,
  `dayFechaInicio` datetime DEFAULT NULL,
  `dayFechaFin` datetime DEFAULT NULL,
  `codEstado` int(11) DEFAULT NULL,
  `des_PagoVerificado` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `nombreempresa` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `codCargo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `celular`, `lastname`, `nombreempresa`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `codCargo`) VALUES
(4, 'AB', '1234567890', 'CD', 'Free', 'abcd@abcd.com', NULL, '$2y$10$qkmDCAM5xPqkOciRRUy4.era3y/u/J4xbHnybhD3WVQaDs2Fk5rFW', NULL, '2022-11-08 11:00:02', '2022-11-08 11:00:02', NULL),
(5, 'peter', '123123123', 'peter', 'free', 'peter@p.com', NULL, '$2y$10$qkmDCAM5xPqkOciRRUy4.era3y/u/J4xbHnybhD3WVQaDs2Fk5rFW', NULL, '2022-11-11 00:18:14', '2022-11-11 00:18:14', NULL),
(6, 'James', '1234567890', 'David', 'Free', 'james@d.com', NULL, '$2y$10$ffdn5MwekjzF3QM8jQATlefu4/TjY0/GdSPIbrCbk0.Y3BDLYd5Yu', NULL, '2022-11-15 09:22:22', '2022-11-15 09:22:22', NULL),
(7, 'Peter', '1231231231', 'Fawzy', 'Free', 'peter@peter.com', NULL, '$2y$10$YixvPeyUEGgbD1Nukz6MM.KuvlLUSMzYyGBF6OSWlcIoS6.G2e.iy', NULL, '2022-11-15 18:38:00', '2022-11-15 18:38:00', NULL),
(8, 'Daniel Johnson', '1234567890', 'Daniel', 'Free', 'Daniel@gmail.com', NULL, '$2y$10$8s5xke.qjVoqTrdhdyZgne6mlRNGCPGZ7fR5npayZlWeyZjR6a0Jy', NULL, '2022-11-23 21:33:01', '2022-11-23 21:33:01', NULL),
(9, 'diego', '541212', 'castro', 'sdsd', 'diego@gmail.com', NULL, '$2y$10$eYOuZbGzbvwbQwl8/L6vh./VDlzd2i.vVU5iZjh7/i4bQAS0Fa2a6', NULL, '2022-12-01 07:16:59', '2023-01-30 19:48:22', 1),
(10, 'pedro', '6456455', 'veremo', 'sodimca', 'pedro@gmail.com', NULL, '$2y$10$kYxEEtzFJlJ.X.vU8ZRMau92a0iGJvRnqCQz3gu7kEBI445fxSORK', NULL, '2022-12-14 17:22:35', '2022-12-14 17:22:35', NULL),
(11, 'cristina', '64841111', 'veremo', 'sodimac', 'cristina@gmail.com', NULL, '$2y$10$vmQBbwYxmSup.KC0gLvbYOrDMMqbHP2SDf/sB16TB7qgK2Mu2A24u', NULL, '2022-12-14 17:25:15', '2022-12-14 17:25:15', 2),
(12, 'uan', '9855652', 'sotomayot', 'sodimac', 'juan@gmail.com', NULL, '$2y$10$RSTpc6k3.Dv.StS73.RZg.8BwHbxX30zEXQtz9wzdYhu3BzlkOyd.', NULL, '2022-12-19 16:24:06', '2022-12-19 16:24:06', 1),
(13, 'karin', '989243232', 'warthon', 'sodimac', 'karin@gmail.com', NULL, '$2y$10$8gp5.ts/cnx5a8QZWXShN.wI5v0pMcKS6mgZeeu8rg59v.xbgmwku', NULL, '2023-01-31 21:47:47', '2023-01-31 21:47:47', 1),
(14, 'nada', '92398232', 'vermos', 'soidmac', 'nada@gmail.com', NULL, '$2y$10$Z8YgkUYxfMxv1YjviDN67OtUvVPZ9sX4m19D/qli9n0Vg.8Zy9Dy6', NULL, '2023-01-31 21:51:52', '2023-01-31 21:51:52', 1),
(15, 'AB', '1234567890', 'CD', 'Free', 'abcd1@abcd.com', NULL, '$2y$10$fYcUrydJqze3tPW9b37u7OTpjcHRJQvUXfjXYMVMEEBaN9DJV/1NO', NULL, '2022-11-08 11:00:02', '2022-11-08 11:00:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `util_reportes`
--

CREATE TABLE `util_reportes` (
  `codUtilReportes` int(11) NOT NULL,
  `desUtilReportes` varchar(255) DEFAULT NULL,
  `desDirReporte` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `util_reportes`
--

INSERT INTO `util_reportes` (`codUtilReportes`, `desUtilReportes`, `desDirReporte`) VALUES
(1, 'Reporte de análisis de restricciones', NULL),
(5, 'Reporte de análisis de restricciones', NULL),
(10, 'Reporte de análisis de restricciones', NULL),
(11, 'Reporte de avance gráfico', NULL),
(12, 'Reporte de análisis de restricciones', NULL),
(13, 'Reporte de avance gráfico', NULL),
(14, 'Reporte de análisis de restricciones', NULL),
(15, 'Reporte de avance gráfico', NULL),
(16, 'Reporte de análisis de restricciones', NULL),
(17, 'Reporte de análisis de restricciones', NULL),
(18, 'Reporte de avance gráfico', NULL),
(19, 'Reporte de análisis de restricciones', NULL),
(36, 'Reporte de análisis de restricciones', NULL),
(37, 'Reporte de análisis de restricciones', NULL),
(38, 'Reporte de análisis de restricciones', NULL),
(39, 'Reporte de avance gráfico', NULL),
(40, 'Reporte de análisis de restricciones', NULL),
(41, 'Reporte de análisis de restricciones', NULL),
(42, 'Reporte de análisis de restricciones', NULL),
(43, 'Reporte de análisis de restricciones', NULL),
(44, 'Reporte de análisis de restricciones', NULL),
(45, 'Reporte de análisis de restricciones', NULL),
(46, 'Reporte de análisis de restricciones', NULL),
(47, 'Reporte de análisis de restricciones', NULL),
(48, 'Reporte de análisis de restricciones', NULL),
(49, 'Reporte de análisis de restricciones', NULL),
(50, 'Reporte de análisis de restricciones', NULL),
(51, 'Reporte de análisis de restricciones', NULL),
(52, 'Reporte de análisis de restricciones', NULL),
(53, 'Reporte de análisis de restricciones', NULL),
(54, 'Reporte de análisis de restricciones', NULL),
(55, 'Reporte de análisis de restricciones', NULL),
(56, 'Reporte de análisis de restricciones', NULL),
(57, 'Reporte de análisis de restricciones', NULL),
(58, 'Reporte de análisis de restricciones', NULL),
(59, 'Reporte de análisis de restricciones', NULL),
(60, 'Reporte de análisis de restricciones', NULL),
(61, 'Reporte de análisis de restricciones', NULL),
(62, NULL, NULL),
(63, 'Reporte de análisis de restricciones', NULL),
(64, 'Reporte de análisis de restricciones', NULL),
(65, 'Reporte de análisis de restricciones', NULL),
(66, 'Reporte de análisis de restricciones', NULL),
(67, 'Reporte de análisis de restricciones', NULL),
(68, 'Reporte de análisis de restricciones', NULL),
(69, 'Reporte de análisis de restricciones', NULL),
(70, 'Reporte de análisis de restricciones', NULL),
(71, 'Reporte de análisis de restricciones', NULL),
(72, 'Reporte de análisis de restricciones', NULL),
(73, 'Reporte de análisis de restricciones', NULL),
(74, 'Reporte de análisis de restricciones', NULL),
(75, 'Reporte de análisis de restricciones', NULL),
(76, 'Reporte de análisis de restricciones', NULL),
(77, 'Reporte de análisis de restricciones', NULL),
(78, 'Reporte de avance gráfico', NULL),
(79, 'Reporte de análisis de restricciones', NULL),
(80, 'Reporte de análisis de restricciones', NULL),
(81, 'Reporte de análisis de restricciones', NULL),
(82, 'Reporte de análisis de restricciones', NULL),
(83, 'Reporte de análisis de restricciones', NULL),
(84, 'Reporte de análisis de restricciones', NULL),
(85, 'Reporte de análisis de restricciones', NULL),
(86, 'Reporte de análisis de restricciones', NULL),
(87, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anares_actividad`
--
ALTER TABLE `anares_actividad`
  ADD PRIMARY KEY (`codAnaResActividad`);

--
-- Indexes for table `anares_analisisrestricciones`
--
ALTER TABLE `anares_analisisrestricciones`
  ADD PRIMARY KEY (`codAnaRes`) USING BTREE;

--
-- Indexes for table `anares_analisis_tiporestricciones`
--
ALTER TABLE `anares_analisis_tiporestricciones`
  ADD KEY `AnaRes_Analisis_TipoRestricciones_R_01` (`codAnaRes`);

--
-- Indexes for table `anares_fase`
--
ALTER TABLE `anares_fase`
  ADD PRIMARY KEY (`codAnaResFase`) USING BTREE,
  ADD UNIQUE KEY `XPKAnaRes_Fase` (`codAnaResFase`,`codAnaResFrente`,`codProyecto`,`codAnaRes`) USING BTREE,
  ADD KEY `XIF1AnaRes_Fase` (`codAnaResFrente`,`codProyecto`,`codAnaRes`) USING BTREE;

--
-- Indexes for table `anares_frente`
--
ALTER TABLE `anares_frente`
  ADD PRIMARY KEY (`codAnaResFrente`) USING BTREE;

--
-- Indexes for table `conf_colacorreos`
--
ALTER TABLE `conf_colacorreos`
  ADD PRIMARY KEY (`codColaCorreo`),
  ADD KEY `conf_colaCorreos_dayFechaRegistro_IDX` (`dayFechaRegistro`) USING BTREE;

--
-- Indexes for table `conf_maestro_empresas`
--
ALTER TABLE `conf_maestro_empresas`
  ADD PRIMARY KEY (`cod_Empresa`);

--
-- Indexes for table `conf_moneda`
--
ALTER TABLE `conf_moneda`
  ADD PRIMARY KEY (`codMoneda`);

--
-- Indexes for table `conf_tipodiaprogramacion`
--
ALTER TABLE `conf_tipodiaprogramacion`
  ADD PRIMARY KEY (`codTipoDiaProgramacion`);

--
-- Indexes for table `conf_ubigeo`
--
ALTER TABLE `conf_ubigeo`
  ADD UNIQUE KEY `XPKConf_Ubigeo` (`codUbigeo`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `other_notificaciones`
--
ALTER TABLE `other_notificaciones`
  ADD UNIQUE KEY `XPKother_Notificaciones` (`codNotificacion`) USING BTREE;

--
-- Indexes for table `other_notificaciones_usuario`
--
ALTER TABLE `other_notificaciones_usuario`
  ADD PRIMARY KEY (`codNotificacionUsuario`),
  ADD UNIQUE KEY `XPKother_Notificaciones_Usuario` (`id`,`codNotificacion`) USING BTREE,
  ADD KEY `XIF1other_Notificaciones_Usuario` (`id`) USING BTREE,
  ADD KEY `XIF2other_Notificaciones_Usuario` (`codNotificacion`) USING BTREE;

--
-- Indexes for table `other_notificaciones_usuario2`
--
ALTER TABLE `other_notificaciones_usuario2`
  ADD UNIQUE KEY `XPKother_Notificaciones_Usuario` (`codNotificacionUsuario`,`id`,`codNotificacion`) USING BTREE,
  ADD KEY `XIF1other_Notificaciones_Usuario` (`id`) USING BTREE,
  ADD KEY `XIF2other_Notificaciones_Usuario` (`codNotificacion`) USING BTREE,
  ADD KEY `XIF3other_Notificaciones_Usuario` (`codNotificacionUsuario`) USING BTREE;

--
-- Indexes for table `other_notificaciones_usuario4`
--
ALTER TABLE `other_notificaciones_usuario4`
  ADD UNIQUE KEY `XPKother_Notificaciones_Usuario` (`codNotificacionUsuario`,`id`,`codNotificacion`) USING BTREE,
  ADD KEY `XIF1other_Notificaciones_Usuario` (`id`) USING BTREE,
  ADD KEY `XIF2other_Notificaciones_Usuario` (`codNotificacion`) USING BTREE,
  ADD KEY `XIF3other_Notificaciones_Usuario` (`codNotificacionUsuario`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `proy_areaintegrante`
--
ALTER TABLE `proy_areaintegrante`
  ADD PRIMARY KEY (`codArea`);

--
-- Indexes for table `proy_integrantes`
--
ALTER TABLE `proy_integrantes`
  ADD PRIMARY KEY (`codProyIntegrante`) USING BTREE;

--
-- Indexes for table `proy_proyecto`
--
ALTER TABLE `proy_proyecto`
  ADD UNIQUE KEY `XPKProy_Proyecto` (`codProyecto`) USING BTREE,
  ADD KEY `XIF1Proy_Proyecto` (`id`) USING BTREE,
  ADD KEY `XIF2Proy_Proyecto` (`codUbigeo`) USING BTREE;

--
-- Indexes for table `proy_proyectoconf`
--
ALTER TABLE `proy_proyectoconf`
  ADD PRIMARY KEY (`codProyectoconf`);

--
-- Indexes for table `proy_rolintegrante`
--
ALTER TABLE `proy_rolintegrante`
  ADD UNIQUE KEY `XPKProy_RolIntegrante` (`codRolIntegrante`) USING BTREE;

--
-- Indexes for table `proy_tipoproyecto`
--
ALTER TABLE `proy_tipoproyecto`
  ADD PRIMARY KEY (`codTipoProyecto`) USING BTREE;

--
-- Indexes for table `sec_cargo`
--
ALTER TABLE `sec_cargo`
  ADD UNIQUE KEY `XPKSec_Cargo` (`codCargo`) USING BTREE;

--
-- Indexes for table `sec_membresia`
--
ALTER TABLE `sec_membresia`
  ADD UNIQUE KEY `XPKSec_Membresia` (`codMembresia`) USING BTREE;

--
-- Indexes for table `sec_membresiausuario`
--
ALTER TABLE `sec_membresiausuario`
  ADD UNIQUE KEY `XPKSec_MembresiaUsuario` (`codMembresiaUsuario`,`id`,`codMembresia`) USING BTREE,
  ADD KEY `XIF1Sec_MembresiaUsuario` (`id`) USING BTREE,
  ADD KEY `XIF2Sec_MembresiaUsuario` (`codMembresia`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `XPKusersidunique` (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `XPKuseremailunique` (`email`) USING BTREE,
  ADD KEY `XIF1users` (`codCargo`) USING BTREE;

--
-- Indexes for table `util_reportes`
--
ALTER TABLE `util_reportes`
  ADD PRIMARY KEY (`codUtilReportes`) USING BTREE,
  ADD UNIQUE KEY `XPKUtil_Reportes` (`codUtilReportes`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anares_actividad`
--
ALTER TABLE `anares_actividad`
  MODIFY `codAnaResActividad` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `anares_analisisrestricciones`
--
ALTER TABLE `anares_analisisrestricciones`
  MODIFY `codAnaRes` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `anares_fase`
--
ALTER TABLE `anares_fase`
  MODIFY `codAnaResFase` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `anares_frente`
--
ALTER TABLE `anares_frente`
  MODIFY `codAnaResFrente` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `conf_colacorreos`
--
ALTER TABLE `conf_colacorreos`
  MODIFY `codColaCorreo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conf_maestro_empresas`
--
ALTER TABLE `conf_maestro_empresas`
  MODIFY `cod_Empresa` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `conf_moneda`
--
ALTER TABLE `conf_moneda`
  MODIFY `codMoneda` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conf_tipodiaprogramacion`
--
ALTER TABLE `conf_tipodiaprogramacion`
  MODIFY `codTipoDiaProgramacion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conf_ubigeo`
--
ALTER TABLE `conf_ubigeo`
  MODIFY `codUbigeo` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1875;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `other_notificaciones_usuario`
--
ALTER TABLE `other_notificaciones_usuario`
  MODIFY `codNotificacionUsuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `other_notificaciones_usuario4`
--
ALTER TABLE `other_notificaciones_usuario4`
  MODIFY `codNotificacionUsuario` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `proy_areaintegrante`
--
ALTER TABLE `proy_areaintegrante`
  MODIFY `codArea` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `proy_integrantes`
--
ALTER TABLE `proy_integrantes`
  MODIFY `codProyIntegrante` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `proy_proyecto`
--
ALTER TABLE `proy_proyecto`
  MODIFY `codProyecto` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `proy_proyectoconf`
--
ALTER TABLE `proy_proyectoconf`
  MODIFY `codProyectoconf` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `util_reportes`
--
ALTER TABLE `util_reportes`
  MODIFY `codUtilReportes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anares_analisis_tiporestricciones`
--
ALTER TABLE `anares_analisis_tiporestricciones`
  ADD CONSTRAINT `AnaRes_Analisis_TipoRestricciones_R_01` FOREIGN KEY (`codAnaRes`) REFERENCES `anares_analisisrestricciones` (`codAnaRes`);

--
-- Constraints for table `other_notificaciones_usuario`
--
ALTER TABLE `other_notificaciones_usuario`
  ADD CONSTRAINT `other_notificaciones_usuario_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `other_notificaciones_usuario_ibfk_2` FOREIGN KEY (`codNotificacion`) REFERENCES `other_notificaciones` (`codNotificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `other_notificaciones_usuario2`
--
ALTER TABLE `other_notificaciones_usuario2`
  ADD CONSTRAINT `other_notificaciones_usuario_ibfk_11` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `other_notificaciones_usuario_ibfk_21` FOREIGN KEY (`codNotificacion`) REFERENCES `other_notificaciones` (`codNotificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `other_notificaciones_usuario4`
--
ALTER TABLE `other_notificaciones_usuario4`
  ADD CONSTRAINT `other_notificaciones_usuario_ibfk_111` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `other_notificaciones_usuario_ibfk_211` FOREIGN KEY (`codNotificacion`) REFERENCES `other_notificaciones` (`codNotificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sec_membresiausuario`
--
ALTER TABLE `sec_membresiausuario`
  ADD CONSTRAINT `sec_membresiausuario_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sec_membresiausuario_ibfk_2` FOREIGN KEY (`codMembresia`) REFERENCES `sec_membresia` (`codMembresia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`codCargo`) REFERENCES `sec_cargo` (`codCargo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
