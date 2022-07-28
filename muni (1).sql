-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2022 a las 22:32:23
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `muni`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accionescasas`
--

CREATE TABLE `accionescasas` (
  `ID` int(11) NOT NULL,
  `Actividad` tinyint(1) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Pago` varchar(20) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `accionescasas`
--

INSERT INTO `accionescasas` (`ID`, `Actividad`, `Direccion`, `Pago`, `Fecha`) VALUES
(24, 1, 'Colonia: Pinula Direccion: Coso xd', '3020 71865 0101', '2022-04-01'),
(0, 1, '5ta Calle 18 - 41', '3020 71865 0101', '2022-04-04'),
(25, 1, 'Colonia: Vista al Valle Direccion: 78-09', '3020 71865 0101', '2022-04-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casas`
--

CREATE TABLE `casas` (
  `ID` int(11) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Actividad` tinyint(1) NOT NULL,
  `Pagado` varchar(10) NOT NULL,
  `Correo` varchar(70) NOT NULL,
  `Fecha` date NOT NULL,
  `PPago` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `casas`
--

INSERT INTO `casas` (`ID`, `Direccion`, `Actividad`, `Pagado`, `Correo`, `Fecha`, `PPago`) VALUES
(0, '5ta Calle 18 - 41', 1, 'Pagado', 'amejicanos38@gmail.com', '2022-04-04', '3020 71865 0101'),
(23, 'Colonia: Vista al Valle Oriente Direccion: 5ta Calle 18 - 41', 1, 'Pagado', 'amejicanos38@gmail.com', '2022-04-01', '3020 71865 0101'),
(24, 'Colonia: Pinula Direccion: Coso xd', 1, 'Pagado', 'amejicano27@gmail.com', '2022-04-01', '3020 71865 0101'),
(25, 'Colonia: Vista al Valle Direccion: 78-09', 1, 'Pagado', 'amejicanos38@gmail.com', '2022-04-24', '3020 71865 0101'),
(26, 'Colonia: prueba Direccion: 5ta calle', 0, 'No Pagado', 'amejicanos38@gmail.com', '2022-04-18', '-----'),
(27, 'Colonia: Abraham R. Mejicanos Direccion: asdf', 0, 'No Pagado', 'amejicanos38@gmail.com', '2022-06-07', '-----'),
(28, 'Colonia: Abraham R. Mejicanos Direccion: ', 0, 'No Pagado', 'amejicanos38@gmail.com', '2022-06-07', '-----');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientosmuni`
--

CREATE TABLE `movimientosmuni` (
  `ID` int(11) NOT NULL,
  `IDD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimientosmuni`
--

INSERT INTO `movimientosmuni` (`ID`, `IDD`) VALUES
(0, 10),
(1, 5),
(2, 5),
(3, 15),
(4, 5),
(5, 25),
(6, 26),
(7, 12),
(8, 23),
(9, 12),
(10, 17),
(11, 25),
(12, 19),
(13, 16),
(14, 42),
(15, 34),
(16, 32),
(17, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `CUI` varchar(20) NOT NULL,
  `cuentaExterna` varchar(20) NOT NULL,
  `cantidad` double NOT NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`CUI`, `cuentaExterna`, `cantidad`, `fecha`, `tipo`) VALUES
('3020 71865 0101', '3020 71865 0101', 250, '2022-03-23', 'debito'),
('3020 71865 0101', '3020 71865 0101', 250, '2022-03-23', 'credito'),
('3020 71865 0101', 'Servicio Basura', 500, '2022-03-25', 'debito'),
('3020 71865 0101', '2323 23232 0101', 850, '2022-03-25', 'debito'),
('2323 23232 0101', '3020 71865 0101', 850, '2022-03-25', 'credito'),
('3020 71865 0101', '3020 71865 0101', 50, '2022-03-25', 'debito'),
('3020 71865 0101', '3020 71865 0101', 50, '2022-03-25', 'credito'),
('3020 71865 0101', '2323 23232 0101', 10, '2022-03-25', 'debito'),
('2323 23232 0101', '3020 71865 0101', 10, '2022-03-25', 'credito'),
('3020 71865 0101', '2323 23232 0101', 10, '2022-03-25', 'debito'),
('2323 23232 0101', '3020 71865 0101', 10, '2022-03-25', 'credito'),
('3020 71865 0101', '1111 11111 0101', 1500, '2022-03-25', 'debito'),
('1111 11111 0101', '3020 71865 0101', 1500, '2022-03-25', 'credito'),
('2323 23232 0101', 'Servicio Basura', 500, '2022-03-25', 'debito'),
('3020 71865 0101', '2323 23232 0101', 500, '2022-03-26', 'debito'),
('2323 23232 0101', '3020 71865 0101', 500, '2022-03-26', 'credito'),
('3020 71865 0101', '2323 23232 0101', 500, '2022-03-26', 'debito'),
('2323 23232 0101', '3020 71865 0101', 500, '2022-03-26', 'credito'),
('3020 71865 0101', '2323 23232 0101', 200, '2022-03-26', 'debito'),
('2323 23232 0101', '3020 71865 0101', 200, '2022-03-26', 'credito'),
('3020 71865 0101', '3020 71865 0101', 10, '2022-03-26', 'debito'),
('3020 71865 0101', '3020 71865 0101', 10, '2022-03-26', 'credito'),
('3020 71865 0101', '3030 30303 0101', 10, '2022-03-26', 'debito'),
('3030 30303 0101', '3020 71865 0101', 10, '2022-03-26', 'credito'),
('3020 71865 0101', '3020 71865 0101', 32, '2022-03-26', 'debito'),
('3020 71865 0101', '3020 71865 0101', 32, '2022-03-26', 'credito'),
('2323 23232 0101', '2323 23232 0101', 5, '2022-03-26', 'debito'),
('2323 23232 0101', '2323 23232 0101', 5, '2022-03-26', 'credito'),
('3020 71865 0101', 'Servicio Basura', 500, '2022-04-01', 'debito'),
('3020 71865 0101', 'Servicio Basura', 500, '2022-04-01', 'debito'),
('3020 71865 0101', '3020 71865 0101', 10000, '2022-04-04', 'debito'),
('3020 71865 0101', '3020 71865 0101', 10000, '2022-04-04', 'credito'),
('3020 71865 0101', 'Servicio Basura', 500, '2022-04-04', 'debito'),
('3020 71865 0101', 'Servicio Basura', 500, '2022-04-24', 'debito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosbanco`
--

CREATE TABLE `usuariosbanco` (
  `CUI` varchar(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `saldoInicial` double NOT NULL,
  `actividad` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuariosbanco`
--

INSERT INTO `usuariosbanco` (`CUI`, `nombre`, `Apellido`, `saldoInicial`, `actividad`) VALUES
('1111 11111 0101', 'Abraham Emmanuel', 'Rafael Mejicanos', 2500, 0),
('2323 23232 0101', 'x', 'c', 1205, 0),
('3020 71865 0101', 'Abraham Emmanuel', 'Rafael Mejicanos', 9042, 1),
('3030 30303 0101', 'Abraham Emmanuel', 'Rafael Mejicanos', 1020, 0),
('6565 65656 0101', 'Juan x', 'Gonzales x', 7000, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosmuni`
--

CREATE TABLE `usuariosmuni` (
  `CUI` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `contra` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuariosmuni`
--

INSERT INTO `usuariosmuni` (`CUI`, `nombre`, `contra`) VALUES
('3020 71865 0101', 'Abraham Mejicanos', 123);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `casas`
--
ALTER TABLE `casas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuariosbanco`
--
ALTER TABLE `usuariosbanco`
  ADD PRIMARY KEY (`CUI`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `casas`
--
ALTER TABLE `casas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
