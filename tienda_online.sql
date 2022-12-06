-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2022 a las 05:07:37
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_online`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'cromada'),
(2, 'black'),
(3, 'mate'),
(4, 'comic'),
(5, 'Madera'),
(6, 'camuflaje');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `comentario` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellidos`, `email`, `telefono`, `comentario`) VALUES
(1, 'Borys', 'Pineda Zaldivar', '1160126@usap.edu', '96176346323', 'con servicio a domicili'),
(2, 'Mirna', 'Cruz', 'mcruz@gmail.com', '16549612323', 'Envio a trabajo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedidos`
--

CREATE TABLE `detalle_pedidos` (
  `id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `pelicula_id` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `detalle_pedidos`
--

INSERT INTO `detalle_pedidos` (`id`, `pedido_id`, `pelicula_id`, `precio`, `cantidad`, `estado`) VALUES
(1, 1, 55, '836.00', 1, 1),
(2, 2, 57, '836.00', 1, 1),
(3, 2, 52, '940.00', 1, 1),
(4, 2, 48, '940.00', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `cliente_id`, `total`, `fecha`, `estado`) VALUES
(1, 1, '836.00', '2022-12-06', 1),
(2, 2, '2716.00', '2022-12-06', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(80) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` int(10) NOT NULL,
  `fecha` date NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `descripcion`, `foto`, `precio`, `categoria_id`, `fecha`, `estado`) VALUES
(1, 'Rollo pelicula vinilo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nLight Yellow\r\n12 plg. x10 ft.\r\n', 'HTVRONT-pelicula-Vinilo.jpg', '2600.00', 3, '2017-09-03', 1),
(2, 'Pelicula-Vinil-rollo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nPurple\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo1.jpg', '2650.00', 3, '2017-09-03', 1),
(3, 'Pelicula-Vinilo-rollo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nPink\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo2.jpg', '2630.00', 3, '2022-09-23', 1),
(4, 'Pelicula-Vinilo-rollo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nYellow-Orange\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo3.jpg', '2608.00', 3, '2022-12-08', 1),
(13, 'Pelicula-Vinilo-rollo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nIght-Pink\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo4.jpg', '2608.00', 3, '2022-12-01', 1),
(14, 'Pelicula-Vinilo-rollo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nGold\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo7.jpg', '2653.00', 3, '2022-12-01', 1),
(15, 'Pelicula-Vinilo-rollo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nOrange\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo6.jpg', '2550.00', 3, '2022-12-01', 1),
(16, 'Pelicula-Vinilo-rollo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nRose-Gold\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo8.jpg', '2700.00', 3, '2022-12-01', 1),
(17, 'Pelicula-Vinilo-rollo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nOrange-Red\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo9.jpg', '2663.00', 3, '2022-12-01', 1),
(18, 'Pelicula-Vinilo-rollo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nRoyal-Blue\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo10.jpg', '2663.00', 3, '2022-12-01', 1),
(19, 'Pelicula-Vinilo-rollo', 'Rollo pelicula vinilo\r\nTermotransferible\r\nSky-blue\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo11.jpg', '2400.00', 3, '2022-12-01', 1),
(20, 'Pelicula-Vinilo-BLACK', 'Rollo pelicula vinilo\r\nTermotransferible\r\nBLACK\r\n12 plg. x10 ft.', 'HTVRONT-pelicula-Vinilo12.jpg', '2300.00', 2, '2022-12-01', 1),
(21, 'Pelicula-Vinilo-BLACK', 'Rollo pelicula vinilo\r\nTermotransferible\r\nBLACK\r\n12 plg. x 20 ft.', 'pelicula-vinil-br1.jpg', '2500.00', 2, '2022-12-01', 1),
(22, 'Pelicula-Vinilo-BLACK', 'Rollo pelicula vinilo\r\nTermotransferible\r\nBLACK\r\n12 plg. x 5 ft', 'pelicula-vinilo-black-2.jpg', '900.00', 2, '2022-12-01', 1),
(23, 'Pelicula-Vinilo-BLACK', 'Rollo pelicula vinilo\r\nTermotransferible\r\nBLACK\r\n12 plg. x 5 ft', 'pelicula-vinilo-black-9.jpg', '857.00', 2, '2022-12-06', 1),
(24, 'Pelicula-Vinilo-BLACK', 'Rollo pelicula vinilo\r\nTermotransferible\r\nBLACK\r\n12 plg. x 5 ft', 'pelicula-vinilo-black-8.jpg', '1200.00', 2, '2022-12-01', 1),
(25, 'Pelicula-Vinilo-BLACK', 'Rollo pelicula vinilo\r\nTermotransferible\r\nBLACK\r\n12 plg. x 5 ft', 'pelicula-vinilo-black-7.jpg', '600.00', 2, '2022-12-01', 1),
(26, 'Pelicula-Vinilo-BLACK', 'Rollo pelicula vinilo\r\nTermotransferible\r\nBLACK\r\n12 plg. x 5 ft', 'pelicula-vinilo-black-5.jpg', '500.00', 2, '2022-12-01', 1),
(27, 'Pelicula-Vinilo-BLACK', 'Rollo pelicula vinilo\r\nTermotransferible\r\nBLACK\r\n12 plg. x 5 ft', 'pelicula-vinilo-black-3.jpg', '500.00', 2, '2022-12-01', 1),
(28, 'Pelicula-Vinilo-CROMADA', 'Rollo pelicula vinilo\r\nTermotransferible\r\nSilver\r\n12 plg. x 10 ft', 'pelicula-vinil-br2.jpg', '1900.00', 1, '2022-12-01', 1),
(29, 'Pelicula-Vinilo-CROMADA', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCarmin-Red\r\n12 plg. x 10 ft', 'pelicula-vinil-br3.jpg', '1900.00', 1, '2022-12-01', 1),
(30, 'Pelicula-Vinilo-CROMADA', 'Rollo pelicula vinilo\r\nTermotransferible\r\nblue\r\n12 plg. x 10 ft', 'pelicula-vinil-br4.jpg', '1900.00', 1, '2022-12-01', 1),
(31, 'Pelicula-Vinilo-CROMADA', 'Rollo pelicula vinilo\r\nTermotransferible\r\ndodge\r\n12 plg. x 10 ft', 'pelicula-vinil-br5.jpg', '1900.00', 1, '2022-12-01', 1),
(32, 'Pelicula-Vinilo-CROMADA', 'Rollo pelicula vinilo\r\nTermotransferible\r\nGold\r\n12 plg. x 10 ft', 'pelicula-vinil-br6.jpg', '1900.00', 1, '2022-12-01', 1),
(33, 'Pelicula-Vinilo-CROMADA', 'Rollo pelicula vinilo\r\nTermotransferible\r\nTeal\r\n12 plg. x 10 ft', 'pelicula-vinil-br7.jpg', '1900.00', 1, '2022-12-01', 1),
(34, 'Pelicula-Vinilo-CROMADA', 'Rollo pelicula vinilo\r\nTermotransferible\r\nGreen-lemon\r\n12 plg. x 10 ft', 'pelicula-vinil-br8.jpg', '1900.00', 1, '2022-12-01', 1),
(35, 'Pelicula-Vinilo-CROMADA', 'Rollo pelicula vinilo\r\nTermotransferible\r\norange\r\n12 plg. x 10 ft', 'pelicula-vinil-br9.jpg', '1900.00', 1, '2022-12-01', 1),
(36, 'Pelicula-Vinilo-CROMADA', 'Rollo pelicula vinilo\r\nTermotransferible\r\nPurple\r\n12 plg. x 10 ft', 'pelicula-vinil-br10.jpg', '1900.00', 1, '2022-12-01', 1),
(37, 'Pelicula-Vinilo-Comic', 'Rollo pelicula vinilo\r\nTermotransferible\r\nfiguras varias\r\n12 plg. x 5 ft', 'pelicula-vinil-comic1.jpg', '850.00', 4, '2022-12-01', 1),
(38, 'Pelicula-Vinilo-Comic', 'Rollo pelicula vinilo\r\nTermotransferible\r\nfiguras varias\r\n12 plg. x 5 ft', 'pelicula-vinil-comic2.jpg', '850.00', 4, '2022-12-01', 1),
(39, 'Pelicula-Vinilo-Comic', 'Rollo pelicula vinilo\r\nTermotransferible\r\nfiguras varias\r\n12 plg. x 5 ft', 'pelicula-vinil-comic3.jpg', '850.00', 4, '2022-12-01', 1),
(40, 'Pelicula-Vinilo-Comic', 'Rollo pelicula vinilo\r\nTermotransferible\r\nfiguras varias\r\n12 plg. x 5 ft', 'pelicula-vinil-comic4.jpg', '850.00', 4, '2022-12-01', 1),
(41, 'Pelicula-Vinilo-Comic', 'Rollo pelicula vinilo\r\nTermotransferible\r\nfiguras varias\r\n12 plg. x 5 ft', 'pelicula-vinil-comic5.jpg', '850.00', 4, '2022-12-01', 1),
(42, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje1.jpg', '940.00', 6, '2022-12-01', 1),
(43, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje1-2.jpg', '940.00', 6, '2022-12-01', 1),
(44, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje1-3.jpg', '940.00', 6, '2022-12-01', 1),
(45, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje1-4.jpg', '940.00', 6, '2022-12-01', 1),
(46, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje1-5.jpg', '940.00', 6, '2022-12-01', 1),
(47, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje2.jpg', '940.00', 6, '2022-12-01', 1),
(48, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje3.jpg', '940.00', 6, '2022-12-01', 1),
(49, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje4.jpg', '940.00', 6, '2022-12-01', 1),
(50, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje5.jpg', '940.00', 6, '2022-12-01', 1),
(51, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje6.jpg', '940.00', 6, '2022-12-01', 1),
(52, 'Pelicula-Vinilo-Camuflaje', 'Rollo pelicula vinilo\r\nTermotransferible\r\nCamuflaje-Militar\r\n12 plg. x 5 ft', 'pelicula-vinil-camuflaje7.jpg', '940.00', 6, '2022-12-01', 1),
(53, 'Pelicula-Vinilo-Madera', 'Rollo pelicula vinilo\r\nTermotransferible\r\ncon Adhesivo\r\nMadera\r\n12 plg. x 5 ft', 'vinilo rollo-1.jpg', '836.00', 5, '2022-12-01', 1),
(54, 'Pelicula-Vinilo-Madera', 'Rollo pelicula vinilo\r\nTermotransferible\r\ncon Adhesivo\r\nMadera\r\n12 plg. x 5 ft', 'vinilo rollo-2.jpg', '836.00', 5, '2022-12-01', 1),
(55, 'Pelicula-Vinilo-Madera', 'Rollo pelicula vinilo\r\nTermotransferible\r\ncon Adhesivo\r\nMadera\r\n12 plg. x 5 ft', 'vinilo rollo-3.jpg', '798.00', 5, '2022-12-06', 1),
(56, 'Pelicula-Vinilo-Madera', 'Rollo pelicula vinilo\r\nTermotransferible\r\ncon Adhesivo\r\nMadera\r\n12 plg. x 5 ft', 'vinilo rollo-6.jpg', '839.00', 5, '2022-12-06', 1),
(57, 'Pelicula-Vinilo-Maderas', 'Rollo pelicula vinilo\r\nTermotransferible\r\ncon Adhesivo\r\nMadera\r\n12 plg. x 5 ft', 'vinilo rollo-7.jpg', '839.00', 5, '2022-12-06', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `clave` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre_usuario`, `clave`, `estado`) VALUES
(1, 'Borys101', '12345678a', 1),
(2, 'Jose101', '12345678a', 1),
(3, 'admin', '1234', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `detalle_pedidos`
--
ALTER TABLE `detalle_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
