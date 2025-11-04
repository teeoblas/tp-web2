-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2025 a las 21:35:34
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
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `info_general` varchar(300) NOT NULL,
  `cant_concesionarias_ofi` varchar(100) NOT NULL,
  `post_venta` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `marca`, `info_general`, `cant_concesionarias_ofi`, `post_venta`) VALUES
(1, 'toyota', 'Toyota inició su historia en Argentina en 1994 con la fundación de su filial y la colocación de la piedra fundamental de su planta en Zárate, la cual se inauguró en 1997 como la primera planta de una automotriz japonesa en el país. Desde entonces, se ha enfocado en la producción de la pick-up Hilux ', 'En Argentina, Toyota cuenta con 43 concesionarios oficiales y 93 puntos de venta.', 'https://www.toyota.com.ar/mi-toyota/servicios/plan-de-mantenimiento'),
(2, 'volkswagen', 'Volkswagen inició sus operaciones en Argentina en 1980 al adquirir Chrysler Fevre Argentina, instalando sus dos primeras plantas en Buenos Aires. Posteriormente, en 1987, se fusionó con Ford para crear la empresa conjunta Autolatina, que finalizó en 1995, dando lugar a \"La Nueva Volkswagen\". Ese mis', 'Volkswagen tiene más de 350 concesionarios en Argentina, incluyendo una amplia red que llega a todas', 'https://www.volkswagen.com.ar/es/postventa.html'),
(3, 'ford', 'Ford tiene una larga historia en Argentina, comenzando en 1913 con la fundación de su filial, la primera en Latinoamérica y la cuarta del mundo. Inicialmente se dedicó al ensamblaje del Ford T usando componentes importados, abriendo su primera planta en 1914 en Buenos Aires, y en 1922 se inauguró la', 'El número de concesionarios de Ford en Argentina es de 115 puntos de venta los que forman la red ofi', 'https://www.ford.com.ar/posventa/'),
(4, 'renault', 'La historia de Renault en Argentina se remonta a 1959 con el interés de la empresa francesa de ingresar al mercado sudamericano. Sin embargo, la producción local comenzó a través de acuerdos con Industrias Kaiser Argentina (IKA), que fabricó modelos como el Renault 4 en 1963. Renault se hizo con el ', 'Actualmente, hay 46 concesionarios de Renault en Argentina. Esta cifra se actualizó por última vez e', 'https://www.renault.com.ar/automoviles.html?ORIGIN=sea_offensive&CAMPAIGN=ar-feb-2025-Search-t-newcar-T%C3%A1ctico_2025&cid=nglu1j8gp0&pcrid=757959672705&pkw=renault%20argentina&pmt=b&pdv=c&gclsrc=aw.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(200) NOT NULL,
  `rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `contraseña`, `rol`) VALUES
(1, 'webadmin', '$2y$10$4ab1m5wRaAHWYDklGBubxOW3XXEVss4BQjyN2/MQMpy72LiOlwh.6', 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id_vehiculo` int(11) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `año` int(100) NOT NULL,
  `kilometraje` int(100) NOT NULL,
  `version` varchar(100) NOT NULL,
  `motorizacion` varchar(100) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `id_marca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id_vehiculo`, `modelo`, `año`, `kilometraje`, `version`, `motorizacion`, `categoria`, `id_marca`) VALUES
(1, 'corolla', 2019, 100000, 'Xei Cvt automatico', ' 1.8 naftero 140cv', 'sedan', 1),
(2, 'yaris', 2024, 10000, 'xls pack', '1.5 naftero', 'hatchback', 1),
(3, 'vento ', 2024, 100000, 'highline automático', '1.4 tsi naftero 140 cv', 'sedan', 2),
(4, 'sandero', 2018, 123680, 'Privilege manual', '1.6 naftero 105cv', 'hatchback', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD KEY `id_marca` (`id_marca`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `fk_vehiculos_marca` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
