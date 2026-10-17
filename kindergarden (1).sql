-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2026 a las 08:21:28
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kindergarden`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `folio` int(11) NOT NULL,
  `tiempo` datetime NOT NULL,
  `tipo` varchar(45) NOT NULL COMMENT 'entrada,salida',
  `observaciones` varchar(255) NOT NULL,
  `infantes_curp` varchar(20) NOT NULL,
  `responsables_curpr` varchar(20) NOT NULL,
  `educadores_curpe` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`folio`, `tiempo`, `tipo`, `observaciones`, `infantes_curp`, `responsables_curpr`, `educadores_curpe`) VALUES
(1, '2026-01-12 08:00:00', 'entrada', 'Ingresa sin novedades', 'INFA210101HJCBMRA01', 'RESP800101HJCBMRA1', 'EDUM900101HJCBMRA1'),
(2, '2026-01-12 13:00:00', 'salida', 'Retirado puntualmente', 'INFA210101HJCBMRA01', 'RESP800101HJCBMRA1', 'EDUM900101HJCBMRA1'),
(3, '2026-01-12 08:05:00', 'entrada', 'Ingresa contento', 'INFA210202FJCBMRA02', 'RESP820202FJCBMRA2', 'EDUM850215HJCBMRA2'),
(4, '2026-01-12 13:05:00', 'salida', 'Se retira con su mamá', 'INFA210202FJCBMRA02', 'RESP820202FJCBMRA2', 'EDUM850215HJCBMRA2'),
(5, '2026-01-13 08:10:00', 'entrada', 'Un poco somnoliento', 'INFA210303HJCBMRA03', 'RESP840303HJCBMRA3', 'EDUM920320HJCBMRA3'),
(6, '2026-01-13 13:10:00', 'salida', 'Sin novedades', 'INFA210303HJCBMRA03', 'RESP840303HJCBMRA3', 'EDUM920320HJCBMRA3'),
(7, '2026-01-13 08:15:00', 'entrada', 'Ingresa con mochila completa', 'INFA210404FJCBMRA04', 'RESP860404FJCBMRA4', 'EDUM900101HJCBMRA1'),
(8, '2026-01-13 13:15:00', 'salida', 'Entrega de tareas recibida', 'INFA210404FJCBMRA04', 'RESP860404FJCBMRA4', 'EDUM900101HJCBMRA1'),
(9, '2026-01-14 08:00:00', 'entrada', 'Ingresa puntual', 'INFA210505HJCBMRA05', 'RESP880505HJCBMRA5', 'EDUM850215HJCBMRA2'),
(10, '2026-01-14 13:00:00', 'salida', 'Se retira tranquilo', 'INFA210505HJCBMRA05', 'RESP880505HJCBMRA5', 'EDUM850215HJCBMRA2'),
(11, '2026-01-14 08:20:00', 'entrada', 'Ingreso normal', 'INFA210606FJCBMRA06', 'RESP900606FJCBMRA6', 'EDUM920320HJCBMRA3'),
(12, '2026-01-14 13:20:00', 'salida', 'Salida normal', 'INFA210606FJCBMRA06', 'RESP900606FJCBMRA6', 'EDUM920320HJCBMRA3'),
(13, '2026-01-15 08:00:00', 'entrada', 'Sin contratiempos', 'INFA210707HJCBMRA07', 'RESP810707HJCBMRA7', 'EDUM900101HJCBMRA1'),
(14, '2026-01-15 13:00:00', 'salida', 'Todo en orden', 'INFA210707HJCBMRA07', 'RESP810707HJCBMRA7', 'EDUM900101HJCBMRA1'),
(15, '2026-01-15 08:05:00', 'entrada', 'Con ligero resfriado', 'INFA210808FJCBMRA08', 'RESP830808FJCBMRA8', 'EDUM850215HJCBMRA2'),
(16, '2026-01-15 13:05:00', 'salida', 'Se entregan medicamentos', 'INFA210808FJCBMRA08', 'RESP830808FJCBMRA8', 'EDUM850215HJCBMRA2'),
(17, '2026-01-16 08:10:00', 'entrada', 'Ingreso a tiempo', 'INFA210909HJCBMRA09', 'RESP850909HJCBMRA9', 'EDUM920320HJCBMRA3'),
(18, '2026-01-16 13:10:00', 'salida', 'Salida a tiempo', 'INFA210909HJCBMRA09', 'RESP850909HJCBMRA9', 'EDUM920320HJCBMRA3'),
(19, '2026-01-16 08:00:00', 'entrada', 'Ingresa alegre', 'INFA211010FJCBMRA10', 'RESP871010FJCBMRA10', 'EDUM900101HJCBMRA1'),
(20, '2026-01-16 13:00:00', 'salida', 'Sin novedad', 'INFA211010FJCBMRA10', 'RESP871010FJCBMRA10', 'EDUM900101HJCBMRA1'),
(21, '2026-02-02 08:00:00', 'entrada', 'Puntual', 'INFA220111HJCBMRA11', 'RESP891111HJCBMRA11', 'EDUM850215HJCBMRA2'),
(22, '2026-02-02 13:00:00', 'salida', 'Se retira con su tutor', 'INFA220111HJCBMRA11', 'RESP891111HJCBMRA11', 'EDUM850215HJCBMRA2'),
(23, '2026-02-02 08:15:00', 'entrada', 'Trae lunch completo', 'INFA220212FJCBMRA12', 'RESP911212FJCBMRA12', 'EDUM920320HJCBMRA3'),
(24, '2026-02-02 13:15:00', 'salida', 'Lleva cuaderno de tareas', 'INFA220212FJCBMRA12', 'RESP911212FJCBMRA12', 'EDUM920320HJCBMRA3'),
(25, '2026-02-03 08:00:00', 'entrada', 'Ingreso normal', 'INFA220313HJCBMRA13', 'RESP820113HJCBMRA13', 'EDUM900101HJCBMRA1'),
(26, '2026-02-03 13:00:00', 'salida', 'Retirado por el padre', 'INFA220313HJCBMRA13', 'RESP820113HJCBMRA13', 'EDUM900101HJCBMRA1'),
(27, '2026-02-03 08:05:00', 'entrada', 'Sin problemas', 'INFA220414FJCBMRA14', 'RESP840214FJCBMRA14', 'EDUM850215HJCBMRA2'),
(28, '2026-02-03 13:05:00', 'salida', 'Todo en orden', 'INFA220414FJCBMRA14', 'RESP840214FJCBMRA14', 'EDUM850215HJCBMRA2'),
(29, '2026-02-04 08:10:00', 'entrada', 'Llega con energía', 'INFA220515HJCBMRA15', 'RESP860315HJCBMRA15', 'EDUM920320HJCBMRA3'),
(30, '2026-02-04 13:10:00', 'salida', 'Salida en horario habitual', 'INFA220515HJCBMRA15', 'RESP860315HJCBMRA15', 'EDUM920320HJCBMRA3'),
(31, '2026-02-04 08:00:00', 'entrada', 'Bien abrigada', 'INFA220616FJCBMRA16', 'RESP800101HJCBMRA1', 'EDUM900101HJCBMRA1'),
(32, '2026-02-04 13:00:00', 'salida', 'Regresa a casa tranquila', 'INFA220616FJCBMRA16', 'RESP800101HJCBMRA1', 'EDUM900101HJCBMRA1'),
(33, '2026-02-05 08:00:00', 'entrada', 'Asistencia registrada', 'INFA220717HJCBMRA17', 'RESP820202FJCBMRA2', 'EDUM850215HJCBMRA2'),
(34, '2026-02-05 13:00:00', 'salida', 'Finaliza jornada escolar', 'INFA220717HJCBMRA17', 'RESP820202FJCBMRA2', 'EDUM850215HJCBMRA2'),
(35, '2026-02-05 08:05:00', 'entrada', 'Ingresa sonriente', 'INFA220818FJCBMRA18', 'RESP840303HJCBMRA3', 'EDUM920320HJCBMRA3'),
(36, '2026-02-05 13:05:00', 'salida', 'Se retira con su madre', 'INFA220818FJCBMRA18', 'RESP840303HJCBMRA3', 'EDUM920320HJCBMRA3'),
(37, '2026-02-06 08:00:00', 'entrada', 'Sin particularidades', 'INFA220919HJCBMRA19', 'RESP860404FJCBMRA4', 'EDUM900101HJCBMRA1'),
(38, '2026-02-06 13:00:00', 'salida', 'Salida registrada', 'INFA220919HJCBMRA19', 'RESP860404FJCBMRA4', 'EDUM900101HJCBMRA1'),
(39, '2026-02-06 08:10:00', 'entrada', 'Llegada puntual', 'INFA221020FJCBMRA20', 'RESP880505HJCBMRA5', 'EDUM850215HJCBMRA2'),
(40, '2026-02-06 13:10:00', 'salida', 'Se retira con autorización', 'INFA221020FJCBMRA20', 'RESP880505HJCBMRA5', 'EDUM850215HJCBMRA2'),
(41, '2026-03-02 08:00:00', 'entrada', 'Ingreso normal', 'INFA210101HJCBMRA01', 'RESP900606FJCBMRA6', 'EDUM920320HJCBMRA3'),
(42, '2026-03-02 13:00:00', 'salida', 'Salida sin inconvenientes', 'INFA210101HJCBMRA01', 'RESP900606FJCBMRA6', 'EDUM920320HJCBMRA3'),
(43, '2026-03-02 08:05:00', 'entrada', 'Asistencia anotada', 'INFA210202FJCBMRA02', 'RESP810707HJCBMRA7', 'EDUM900101HJCBMRA1'),
(44, '2026-03-02 13:05:00', 'salida', 'Entregado a su tutor', 'INFA210202FJCBMRA02', 'RESP810707HJCBMRA7', 'EDUM900101HJCBMRA1'),
(45, '2026-03-03 08:15:00', 'entrada', 'Retardo menor por tráfico', 'INFA210303HJCBMRA03', 'RESP830808FJCBMRA8', 'EDUM850215HJCBMRA2'),
(46, '2026-03-03 13:00:00', 'salida', 'Salida normal', 'INFA210303HJCBMRA03', 'RESP830808FJCBMRA8', 'EDUM850215HJCBMRA2'),
(47, '2026-03-03 08:00:00', 'entrada', 'Sin problemas', 'INFA210404FJCBMRA04', 'RESP850909HJCBMRA9', 'EDUM920320HJCBMRA3'),
(48, '2026-03-03 13:00:00', 'salida', 'Sin observaciones', 'INFA210404FJCBMRA04', 'RESP850909HJCBMRA9', 'EDUM920320HJCBMRA3'),
(49, '2026-03-04 08:00:00', 'entrada', 'Llegada habitual', 'INFA210505HJCBMRA05', 'RESP871010FJCBMRA10', 'EDUM900101HJCBMRA1'),
(50, '2026-03-04 13:00:00', 'salida', 'Todo bien', 'INFA210505HJCBMRA05', 'RESP871010FJCBMRA10', 'EDUM900101HJCBMRA1'),
(51, '2026-03-04 08:10:00', 'entrada', 'Ingresa con juguete de casa', 'INFA210606FJCBMRA06', 'RESP891111HJCBMRA11', 'EDUM850215HJCBMRA2'),
(52, '2026-03-04 13:10:00', 'salida', 'Se le devuelve juguete al padre', 'INFA210606FJCBMRA06', 'RESP891111HJCBMRA11', 'EDUM850215HJCBMRA2'),
(53, '2026-03-05 08:00:00', 'entrada', 'Ingreso registrado', 'INFA210707HJCBMRA07', 'RESP911212FJCBMRA12', 'EDUM920320HJCBMRA3'),
(54, '2026-03-05 13:00:00', 'salida', 'Salida a tiempo', 'INFA210707HJCBMRA07', 'RESP911212FJCBMRA12', 'EDUM920320HJCBMRA3'),
(55, '2026-03-05 08:05:00', 'entrada', 'Puntualidad en la entrega', 'INFA210808FJCBMRA08', 'RESP820113HJCBMRA13', 'EDUM900101HJCBMRA1'),
(56, '2026-03-05 13:05:00', 'salida', 'Concluida la jornada', 'INFA210808FJCBMRA08', 'RESP820113HJCBMRA13', 'EDUM900101HJCBMRA1'),
(57, '2026-03-06 08:00:00', 'entrada', 'Sin novedad', 'INFA210909HJCBMRA09', 'RESP840214FJCBMRA14', 'EDUM850215HJCBMRA2'),
(58, '2026-03-06 13:00:00', 'salida', 'Se retira feliz', 'INFA210909HJCBMRA09', 'RESP840214FJCBMRA14', 'EDUM850215HJCBMRA2'),
(59, '2026-03-06 08:10:00', 'entrada', 'Ingreso sin incidentes', 'INFA211010FJCBMRA10', 'RESP860315HJCBMRA15', 'EDUM920320HJCBMRA3'),
(60, '2026-03-06 13:10:00', 'salida', 'Salida conforme al reglamento', 'INFA211010FJCBMRA10', 'RESP860315HJCBMRA15', 'EDUM920320HJCBMRA3'),
(61, '2026-04-13 08:00:00', 'entrada', 'Regreso de vacaciones', 'INFA220111HJCBMRA11', 'RESP800101HJCBMRA1', 'EDUM900101HJCBMRA1'),
(62, '2026-04-13 13:00:00', 'salida', 'Buen comportamiento', 'INFA220111HJCBMRA11', 'RESP800101HJCBMRA1', 'EDUM900101HJCBMRA1'),
(63, '2026-04-13 08:05:00', 'entrada', 'Ingreso correcto', 'INFA220212FJCBMRA12', 'RESP820202FJCBMRA2', 'EDUM850215HJCBMRA2'),
(64, '2026-04-13 13:05:00', 'salida', 'Puntual salida', 'INFA220212FJCBMRA12', 'RESP820202FJCBMRA2', 'EDUM850215HJCBMRA2'),
(65, '2026-04-14 08:00:00', 'entrada', 'Entrada rápida', 'INFA220313HJCBMRA13', 'RESP840303HJCBMRA3', 'EDUM920320HJCBMRA3'),
(66, '2026-04-14 13:00:00', 'salida', 'Salida habitual', 'INFA220313HJCBMRA13', 'RESP840303HJCBMRA3', 'EDUM920320HJCBMRA3'),
(67, '2026-04-14 08:10:00', 'entrada', 'Sin problemas de ingreso', 'INFA220414FJCBMRA14', 'RESP860404FJCBMRA4', 'EDUM900101HJCBMRA1'),
(68, '2026-04-14 13:10:00', 'salida', 'Entregada en puerta', 'INFA220414FJCBMRA14', 'RESP860404FJCBMRA4', 'EDUM900101HJCBMRA1'),
(69, '2026-04-15 08:00:00', 'entrada', 'Todo en orden', 'INFA220515HJCBMRA15', 'RESP880505HJCBMRA5', 'EDUM850215HJCBMRA2'),
(70, '2026-04-15 13:00:00', 'salida', 'Salida sin detalles', 'INFA220515HJCBMRA15', 'RESP880505HJCBMRA5', 'EDUM850215HJCBMRA2'),
(71, '2026-04-15 08:05:00', 'entrada', 'Acompañante identificado', 'INFA220616FJCBMRA16', 'RESP900606FJCBMRA6', 'EDUM920320HJCBMRA3'),
(72, '2026-04-15 13:05:00', 'salida', 'Retirada por su madre', 'INFA220616FJCBMRA16', 'RESP900606FJCBMRA6', 'EDUM920320HJCBMRA3'),
(73, '2026-04-16 08:00:00', 'entrada', 'Llegada en tiempo', 'INFA220717HJCBMRA17', 'RESP810707HJCBMRA7', 'EDUM900101HJCBMRA1'),
(74, '2026-04-16 13:00:00', 'salida', 'Jornada completada', 'INFA220717HJCBMRA17', 'RESP810707HJCBMRA7', 'EDUM900101HJCBMRA1'),
(75, '2026-04-16 08:10:00', 'entrada', 'Ingreso alegre', 'INFA220818FJCBMRA18', 'RESP830808FJCBMRA8', 'EDUM850215HJCBMRA2'),
(76, '2026-04-16 13:10:00', 'salida', 'Salida a tiempo', 'INFA220818FJCBMRA18', 'RESP830808FJCBMRA8', 'EDUM850215HJCBMRA2'),
(77, '2026-04-17 08:00:00', 'entrada', 'Puntual', 'INFA220919HJCBMRA19', 'RESP850909HJCBMRA9', 'EDUM920320HJCBMRA3'),
(78, '2026-04-17 13:00:00', 'salida', 'Sin observaciones', 'INFA220919HJCBMRA19', 'RESP850909HJCBMRA9', 'EDUM920320HJCBMRA3'),
(79, '2026-04-17 08:05:00', 'entrada', 'Sin novedad', 'INFA221020FJCBMRA20', 'RESP871010FJCBMRA10', 'EDUM900101HJCBMRA1'),
(80, '2026-04-17 13:05:00', 'salida', 'Se retira contenta', 'INFA221020FJCBMRA20', 'RESP871010FJCBMRA10', 'EDUM900101HJCBMRA1'),
(81, '2026-05-18 08:00:00', 'entrada', 'Ingreso puntual', 'INFA210101HJCBMRA01', 'RESP891111HJCBMRA11', 'EDUM850215HJCBMRA2'),
(82, '2026-05-18 13:00:00', 'salida', 'Salida normal', 'INFA210101HJCBMRA01', 'RESP891111HJCBMRA11', 'EDUM850215HJCBMRA2'),
(83, '2026-05-18 08:10:00', 'entrada', 'Ingreso correcto', 'INFA210202FJCBMRA02', 'RESP911212FJCBMRA12', 'EDUM920320HJCBMRA3'),
(84, '2026-05-18 13:10:00', 'salida', 'Retirado por tutor registrado', 'INFA210202FJCBMRA02', 'RESP911212FJCBMRA12', 'EDUM920320HJCBMRA3'),
(85, '2026-05-19 08:00:00', 'entrada', 'Todo en orden', 'INFA210303HJCBMRA03', 'RESP820113HJCBMRA13', 'EDUM900101HJCBMRA1'),
(86, '2026-05-19 13:00:00', 'salida', 'Finalización de actividades', 'INFA210303HJCBMRA03', 'RESP820113HJCBMRA13', 'EDUM900101HJCBMRA1'),
(87, '2026-05-19 08:05:00', 'entrada', 'Ingreso regular', 'INFA210404FJCBMRA04', 'RESP840214FJCBMRA14', 'EDUM850215HJCBMRA2'),
(88, '2026-05-19 13:05:00', 'salida', 'Sin novedad', 'INFA210404FJCBMRA04', 'RESP840214FJCBMRA14', 'EDUM850215HJCBMRA2'),
(89, '2026-05-20 08:00:00', 'entrada', 'Llegada anticipada', 'INFA210505HJCBMRA05', 'RESP860315HJCBMRA15', 'EDUM920320HJCBMRA3'),
(90, '2026-05-20 13:00:00', 'salida', 'Salida estándar', 'INFA210505HJCBMRA05', 'RESP860315HJCBMRA15', 'EDUM920320HJCBMRA3'),
(91, '2026-05-20 08:15:00', 'entrada', 'Retardo por tráfico', 'INFA210606FJCBMRA06', 'RESP800101HJCBMRA1', 'EDUM900101HJCBMRA1'),
(92, '2026-05-20 13:00:00', 'salida', 'Salida puntual', 'INFA210606FJCBMRA06', 'RESP800101HJCBMRA1', 'EDUM900101HJCBMRA1'),
(93, '2026-10-12 08:00:00', 'entrada', 'Ingreso habitual de la semana', 'INFA210707HJCBMRA07', 'RESP820202FJCBMRA2', 'EDUM850215HJCBMRA2'),
(94, '2026-10-12 13:00:00', 'salida', 'Salida normal de la tarde', 'INFA210707HJCBMRA07', 'RESP820202FJCBMRA2', 'EDUM850215HJCBMRA2'),
(95, '2026-10-13 08:00:00', 'entrada', 'Ingreso en fecha actual', 'INFA210808FJCBMRA08', 'RESP840303HJCBMRA3', 'EDUM920320HJCBMRA3'),
(96, '2026-10-13 13:00:00', 'salida', 'Salida del día actual registrada', 'INFA210808FJCBMRA08', 'RESP840303HJCBMRA3', 'EDUM920320HJCBMRA3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educadores`
--

CREATE TABLE `educadores` (
  `curpe` varchar(20) NOT NULL,
  `nombree` varchar(100) NOT NULL,
  `sexoe` varchar(45) NOT NULL,
  `telefonoe` varchar(45) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `estadoe` varchar(45) NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `educadores`
--

INSERT INTO `educadores` (`curpe`, `nombree`, `sexoe`, `telefonoe`, `direccion`, `estadoe`) VALUES
('EDUM850215HJCBMRA2', 'Carlos Rodríguez Silva', 'Masculino', '3172345678', 'Av. Juárez 456', 'activo'),
('EDUM900101HJCBMRA1', 'María González Pérez', 'Femenino', '3171234567', 'Calle Hidalgo 123', 'activo'),
('EDUM920320HJCBMRA3', 'Ana Luisa Martínez', 'Femenino', '3173456789', 'Calle Galeana 789', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infantes`
--

CREATE TABLE `infantes` (
  `curp` varchar(20) NOT NULL,
  `nombrei` varchar(100) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `fecha_nac` date NOT NULL,
  `estado` varchar(45) NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `infantes`
--

INSERT INTO `infantes` (`curp`, `nombrei`, `sexo`, `fecha_nac`, `estado`) VALUES
('INFA210101HJCBMRA01', 'Liam Gómez Sánchez', 'Masculino', '2021-01-10', 'activo'),
('INFA210202FJCBMRA02', 'Emma Gómez Sánchez', 'Femenino', '2021-02-12', 'activo'),
('INFA210303HJCBMRA03', 'Mateo Hernández Torres', 'Masculino', '2021-03-15', 'activo'),
('INFA210404FJCBMRA04', 'Sofia Hernández Torres', 'Femenino', '2021-04-18', 'activo'),
('INFA210505HJCBMRA05', 'Santiago Ramírez Morales', 'Masculino', '2021-05-20', 'activo'),
('INFA210606FJCBMRA06', 'Valentina Vargas Ortiz', 'Femenino', '2021-06-22', 'activo'),
('INFA210707HJCBMRA07', 'Sebastian Medina Aguilar', 'Masculino', '2021-07-25', 'activo'),
('INFA210808FJCBMRA08', 'Isabella Herrera Lara', 'Femenino', '2021-08-28', 'activo'),
('INFA210909HJCBMRA09', 'Leonardo Peña Guerrero', 'Masculino', '2021-09-30', 'activo'),
('INFA211010FJCBMRA10', 'Camila Ramos Delgado', 'Femenino', '2021-10-05', 'activo'),
('INFA220111HJCBMRA11', 'Matias Gómez Sánchez', 'Masculino', '2022-01-15', 'activo'),
('INFA220212FJCBMRA12', 'Valeria Hernández Torres', 'Femenino', '2022-02-18', 'activo'),
('INFA220313HJCBMRA13', 'Daniel Ramírez Morales', 'Masculino', '2022-03-21', 'activo'),
('INFA220414FJCBMRA14', 'Lucia Vargas Ortiz', 'Femenino', '2022-04-23', 'activo'),
('INFA220515HJCBMRA15', 'Diego Medina Aguilar', 'Masculino', '2022-05-26', 'activo'),
('INFA220616FJCBMRA16', 'Ximena Herrera Lara', 'Femenino', '2022-06-29', 'activo'),
('INFA220717HJCBMRA17', 'Gael Peña Guerrero', 'Masculino', '2022-07-02', 'activo'),
('INFA220818FJCBMRA18', 'Mariana Ramos Delgado', 'Femenino', '2022-08-04', 'activo'),
('INFA220919HJCBMRA19', 'Nicolas Gomez Sanchez', 'Masculino', '2022-09-08', 'activo'),
('INFA221020FJCBMRA20', 'Victoria Hernandez Ruiz', 'Femenino', '2022-10-10', 'activo'),
('Jose', 'RORB061026HJCBMRA6', 'Masculino', '2006-10-26', 'activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `responsables`
--

CREATE TABLE `responsables` (
  `curpr` varchar(20) NOT NULL,
  `nombrer` varchar(45) NOT NULL,
  `sexor` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `parentesco` varchar(100) NOT NULL,
  `estador` varchar(45) NOT NULL DEFAULT 'activo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `responsables`
--

INSERT INTO `responsables` (`curpr`, `nombrer`, `sexor`, `telefono`, `parentesco`, `estador`) VALUES
('RESP800101HJCBMRA1', 'Roberto Gómez Bolaños', 'Masculino', '3171112233', 'Padre', 'activo'),
('RESP810707HJCBMRA7', 'Fernando Vargas Mendoza', 'Masculino', '3177778899', 'Padre', 'activo'),
('RESP820113HJCBMRA13', 'Ricardo Peña Castillo', 'Masculino', '3173453456', 'Padre', 'activo'),
('RESP820202FJCBMRA2', 'Laura Sánchez López', 'Femenino', '3172223344', 'Madre', 'activo'),
('RESP830808FJCBMRA8', 'Patricia Ortiz Reyes', 'Femenino', '3178889900', 'Abuela', 'activo'),
('RESP840214FJCBMRA14', 'Gabriela Guerrero Leon', 'Femenino', '3174564567', 'Madre', 'activo'),
('RESP840303HJCBMRA3', 'Pedro Hernández Ruiz', 'Masculino', '3173334455', 'Padre', 'activo'),
('RESP850909HJCBMRA9', 'Gabriel Medina Cruz', 'Masculino', '3179990011', 'Padre', 'activo'),
('RESP860315HJCBMRA15', 'Manuel Ramos Estrada', 'Masculino', '3175675678', 'Padre', 'activo'),
('RESP860404FJCBMRA4', 'Carmen Torres Flores', 'Femenino', '3174445566', 'Madre', 'activo'),
('RESP871010FJCBMRA10', 'Daniela Aguilar Vega', 'Femenino', '3170001122', 'Madre', 'activo'),
('RESP880505HJCBMRA5', 'Jorge Ramírez Castro', 'Masculino', '3175556677', 'Tío', 'activo'),
('RESP891111HJCBMRA11', 'Alejandro Herrera Silva', 'Masculino', '3171231234', 'Padre', 'activo'),
('RESP900606FJCBMRA6', 'Sofia Morales Diaz', 'Femenino', '3176667788', 'Madre', 'activo'),
('RESP911212FJCBMRA12', 'Veronica Lara Delgado', 'Femenino', '3172342345', 'Tía', 'activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`folio`),
  ADD KEY `infantes_curp` (`infantes_curp`),
  ADD KEY `responsables_curpr` (`responsables_curpr`),
  ADD KEY `educadores_curpe` (`educadores_curpe`);

--
-- Indices de la tabla `educadores`
--
ALTER TABLE `educadores`
  ADD PRIMARY KEY (`curpe`);

--
-- Indices de la tabla `infantes`
--
ALTER TABLE `infantes`
  ADD PRIMARY KEY (`curp`);

--
-- Indices de la tabla `responsables`
--
ALTER TABLE `responsables`
  ADD PRIMARY KEY (`curpr`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `folio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`infantes_curp`) REFERENCES `infantes` (`curp`),
  ADD CONSTRAINT `bitacora_ibfk_2` FOREIGN KEY (`responsables_curpr`) REFERENCES `responsables` (`curpr`),
  ADD CONSTRAINT `bitacora_ibfk_3` FOREIGN KEY (`educadores_curpe`) REFERENCES `educadores` (`curpe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
