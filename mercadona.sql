-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-03-2016 a las 19:59:15
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mercadona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apuntes`
--

CREATE TABLE IF NOT EXISTS `apuntes` (
  `id` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `totalCompra` float NOT NULL,
  `saldo` float NOT NULL,
  `fecha` date NOT NULL,
  `pagado` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `apuntes`
--

INSERT INTO `apuntes` (`id`, `idCliente`, `totalCompra`, `saldo`, `fecha`, `pagado`) VALUES
(3, 1, 100, -199, '2016-02-24', 0),
(13, 7, 205, -105, '2016-02-24', 0),
(15, 8, 5, -4, '2016-02-24', 0),
(16, 9, 5, -12, '2016-02-25', 0),
(17, 1, 5, 23, '2016-02-25', 0),
(18, 1, 20, 4, '2016-02-25', 0),
(19, 1, 20, -15, '2016-02-25', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `saldo` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `direccion`, `telefono`, `saldo`) VALUES
(1, 'Fran', 'asdf', '123', 0),
(4, '3', '6', '5', -4),
(5, '12', '7546', '234', 0),
(6, 'wer', 'sdfa', '465', 0),
(7, 'Abc', 'qwer', '1234', 0),
(8, '3465', 'dsfg', '3425', 0),
(9, 'qwer', 'sdfa', '123', -2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `pass` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `pass`) VALUES
(2, 'fenix', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `foto` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`, `cantidad`, `foto`) VALUES
(1, 'Coca cola', 10, 699, 'img/indice.jpg'),
(2, 'Monster', 1, 999, 'img/5673-large_default.jpg'),
(3, 'Doritos', 1.5, 48, 'img/doritos-tex-mex-600x568_3D_new-600x568.png'),
(18, 'dsfg', 12, 423, 'img/noFoto.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apuntes`
--
ALTER TABLE `apuntes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apuntes`
--
ALTER TABLE `apuntes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
