-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2025 a las 00:19:46
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
-- Base de datos: `db_concesionaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `info_general` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `tipo`, `marca`, `info_general`) VALUES
(1, 'sedan', 'toyota', 'Un sedán es un tipo de automóvil de pasajeros con cuatro puertas y un maletero separado del habitáculo de los pasajeros, caracterizado por una carrocería de tres volúmenes. Cada uno de estos volúmenes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehículos`
--

CREATE TABLE `vehículos` (
  `id_vehiculo` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `año` int(100) NOT NULL,
  `kilometraje` int(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `motorizacion` varchar(100) NOT NULL,
  `id _categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehículos`
--

INSERT INTO `vehículos` (`id_vehiculo`, `modelo`, `año`, `kilometraje`, `version`, `motorizacion`, `id _categoria`) VALUES
(1, 'corolla', 2018, 100000, 'xei automatico', ' 2.0 litros 170 cv nafta', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `vehículos`
--
ALTER TABLE `vehículos`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD KEY `id _categoria` (`id _categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vehículos`
--
ALTER TABLE `vehículos`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vehículos`
--
ALTER TABLE `vehículos`
  ADD CONSTRAINT `vehículos_ibfk_1` FOREIGN KEY (`id _categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
