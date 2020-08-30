-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-01-2020 a las 04:02:31
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wsp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador`
--

CREATE TABLE `colaborador` (
  `idColaborador` int(11) NOT NULL,
  `rut` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colaborador`
--

INSERT INTO `colaborador` (`idColaborador`, `rut`, `nombre`, `apellido`, `email`) VALUES
(1, '19484567-K', 'Florencia', 'González', 'fgonzalez@gmail.com'),
(2, '13773398-1', 'Gabriel', 'Guerrero', 'gaboguerrero@gmail.com'),
(3, '8172229-1', 'Pedro', 'Maturana', 'p.matu@gmail.com'),
(4, '8736466-0', 'Antonia', 'Andrade', 'antoand@gmail.com'),
(5, '11293373-0', 'Norma', 'Salgado', 'normasalgado@gmail.com'),
(6, '8236379-2', 'Maximiliano', 'Soto', 'maxsoto@gmail.com'),
(7, '8274267-3', 'Fabiola', 'Muñoz', 'fmuñoz@gmail.com'),
(8, '9637353-7', 'Jose', 'Molina', 'jmolin@gmail.com'),
(9, '6578945-9', 'José ', 'Guzmán', 'jguzm1@gmail.com'),
(10, '12263497-5', 'Cristóbal', 'Bustamante ', 'cristoxbus@gmail.com'),
(11, '18341459-k', 'Romina ', 'Notari', 'romi12@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaborador_proyecto`
--

CREATE TABLE `colaborador_proyecto` (
  `idColaboradorProyecto` int(11) NOT NULL,
  `id_JefeProyecto` int(11) DEFAULT NULL,
  `id_ColaboradorProyecto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colaborador_proyecto`
--

INSERT INTO `colaborador_proyecto` (`idColaboradorProyecto`, `id_JefeProyecto`, `id_ColaboradorProyecto`) VALUES
(1, 5, 1),
(2, 4, 2),
(3, 3, 3),
(4, 1, 10),
(5, 2, 4),
(6, 1, 5),
(7, 1, 6),
(8, 2, 7),
(9, 3, 8),
(10, 1, 9),
(11, 2, 10),
(12, 2, 1),
(13, 1, 2),
(14, 5, 3),
(15, 2, 3),
(16, 4, 9),
(17, 3, 5),
(18, 4, 6),
(19, 4, 7),
(20, 4, 8),
(21, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE `entrada` (
  `idEntrada` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `idProyecto` int(11) DEFAULT NULL,
  `idColaborador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`idEntrada`, `fecha`, `horainicio`, `idProyecto`, `idColaborador`) VALUES
(1, '2020-01-06', '08:30:00', 5, 1),
(2, '2020-01-06', '09:00:00', 2, 10),
(3, '2020-01-07', '08:45:00', 2, 1),
(4, '2020-01-07', '09:30:00', 1, 2),
(5, '2020-01-07', '07:30:00', 4, 9),
(6, '2020-01-08', '10:10:00', 4, 2),
(7, '2020-01-06', '08:35:00', 2, 3),
(8, '2020-01-08', '09:00:00', 5, 3),
(9, '2020-01-09', '10:10:00', 3, 3),
(10, '2020-01-06', '09:30:00', 2, 4),
(11, '2020-01-06', '08:45:00', 3, 5),
(12, '2020-01-07', '09:30:00', 1, 5),
(13, '2020-01-06', '08:45:00', 4, 7),
(14, '2020-01-07', '09:30:00', 2, 7),
(15, '2020-01-06', '07:30:00', 4, 6),
(16, '2020-01-07', '09:15:00', 1, 6),
(17, '2020-01-06', '09:00:00', 3, 8),
(18, '2020-01-07', '07:00:00', 4, 8),
(19, '2020-01-06', '07:45:00', 1, 9),
(20, '2020-01-08', '10:00:00', 6, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefeproyecto`
--

CREATE TABLE `jefeproyecto` (
  `idJefeProyecto` int(11) NOT NULL,
  `rut` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jefeproyecto`
--

INSERT INTO `jefeproyecto` (`idJefeProyecto`, `rut`, `nombre`, `apellido`, `email`) VALUES
(1, '11341359-k', 'Carolina', 'Albornoz', 'caro.albor@wsp.cl\r\n'),
(2, '8962895-4', 'Carlos ', 'Morino', 'cma.com@wsp.cl'),
(3, '18935153-4', 'Felipe', 'Palma', 'fpalma@wsp.cl'),
(4, '19569919-0', 'Juan', 'Moreno', 'jmoreno@wsp.cl'),
(5, '19928873-9', 'Juan', 'Farias', 'jdarias@wsp.cl'),
(6, '17929922-2', 'Carol', 'Dinamarca', 'cdina@wsp.cl');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `idProyecto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `codigoProyecto` int(11) DEFAULT NULL,
  `idJefeProyecto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`idProyecto`, `nombre`, `codigoProyecto`, `idJefeProyecto`) VALUES
(1, 'TRAMOS 5 Y 6 DE LÍNEA 3 DEL METRO DE SANTIAGO', 749595, 5),
(2, 'Contrato Marco Soporte Hidrogeológico, Hidrológico', 935422, 1),
(3, 'TALLER DE CAMIONES MINEROS PROYECTO CASERONES ', 872373, 2),
(4, 'MALL PLAZA LOS DOMINICOS', 283738, 3),
(5, 'MEJORAMIENTO ACCESIBILIDAD PUERTO DE VALPARAÍSO', 937477, 1),
(6, 'MODERNIZACIÓN PLANTA RANCAGUA ME ELECMETAL', 273363, 2),
(7, 'NUEVA PLANTA DE CECINAS SAN JORGE', 272737, 3),
(8, 'RECONSTRUCCIÓN FAENADORA SAN VICENTE', 287783, 4),
(9, 'LÍNEA 6 DEL METRO DE SANTIAGO', 273739, 4),
(10, 'INTERCONEXIÓN DEL SISTEMA DEL NORTE GRANDE', 937733, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE `salida` (
  `idSalida` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `idProyecto` int(11) DEFAULT NULL,
  `idColaborador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salida`
--

INSERT INTO `salida` (`idSalida`, `fecha`, `horafin`, `idProyecto`, `idColaborador`) VALUES
(1, '2020-01-06', '14:00:00', 5, 1),
(2, '2020-01-07', '16:00:00', 2, 1),
(3, '2020-01-07', '14:00:00', 1, 2),
(4, '2020-01-08', '15:00:00', 4, 2),
(5, '2020-01-06', '15:00:00', 2, 3),
(6, '2020-01-08', '12:00:00', 5, 3),
(7, '2020-01-09', '13:00:00', 3, 3),
(8, '2020-01-06', '13:00:00', 2, 4),
(9, '2020-01-06', '15:30:00', 2, 10),
(10, '2020-01-06', '12:00:00', 3, 5),
(11, '2020-01-07', '13:30:00', 1, 5),
(13, '2020-01-06', '12:00:00', 4, 6),
(14, '2020-01-07', '13:15:00', 1, 6),
(15, '2020-01-06', '14:30:00', 4, 7),
(16, '2020-01-07', '15:30:00', 2, 7),
(17, '2020-01-06', '14:00:00', 3, 8),
(18, '2020-01-07', '15:30:00', 4, 8),
(19, '2020-01-06', '16:40:00', 1, 9),
(20, '2020-01-07', '15:40:00', 4, 9),
(21, '2020-01-08', '14:00:00', 6, 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`idColaborador`);

--
-- Indices de la tabla `colaborador_proyecto`
--
ALTER TABLE `colaborador_proyecto`
  ADD PRIMARY KEY (`idColaboradorProyecto`);

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`idEntrada`);

--
-- Indices de la tabla `jefeproyecto`
--
ALTER TABLE `jefeproyecto`
  ADD PRIMARY KEY (`idJefeProyecto`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`idProyecto`);

--
-- Indices de la tabla `salida`
--
ALTER TABLE `salida`
  ADD PRIMARY KEY (`idSalida`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colaborador`
--
ALTER TABLE `colaborador`
  MODIFY `idColaborador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `colaborador_proyecto`
--
ALTER TABLE `colaborador_proyecto`
  MODIFY `idColaboradorProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `idEntrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `jefeproyecto`
--
ALTER TABLE `jefeproyecto`
  MODIFY `idJefeProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `idProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `salida`
--
ALTER TABLE `salida`
  MODIFY `idSalida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
