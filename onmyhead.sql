-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2023 a las 09:57:07
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `onmyhead`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `nickname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contrasena` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancion`
--

CREATE TABLE `cancion` (
  `id_track` varchar(30) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `album` varchar(30) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `archivo` varchar(30) NOT NULL,
  `duracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cancion`
--

INSERT INTO `cancion` (`id_track`, `titulo`, `album`, `genero`, `archivo`, `duracion`) VALUES
('', 'nel', '', '', '', 0),
('1', 'primer cancion', 'primer album', 'rock', 'mp', 3),
('145', 'tugfa', 'tugfa2.0', 'cachondes', 'xd', 5),
('146', 'Esta noche ', 'onmyhead', 'rock', 'mp5', 5),
('1524', 'elmasansisoso', 'elprron', 'corridos', 'song9', 3),
('2', 'segunda cancion', 'segundo album', 'rock', 'mp3', 4),
('3', 'tercera cancion', 'tercer album', 'reggae', 'mp4', 3);

--
-- Disparadores `cancion`
--
DELIMITER $$
CREATE TRIGGER `actualizarcancion` AFTER UPDATE ON `cancion` FOR EACH ROW INSERT historial (fecha,descripcion,usuario)

VALUES ('2017-09-11','Cancion insertada','LUIS')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger1` AFTER INSERT ON `cancion` FOR EACH ROW INSERT INTO historial (fecha,descripcion,usuario)

VALUES ('2017-09-11','Cancion insertada','LUIS')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id_track` int(11) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `archivo` varchar(255) NOT NULL,
  `img` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id_track`, `nickname`, `titulo`, `album`, `genero`, `archivo`, `img`, `url`) VALUES
(0, 'h', 'hh', 'h', '', '', 'imagenes/prueba.jpg', 'audios/prueba.mp3'),
(14, 'mm', 'm', 'm', '', '', 'm', 'm'),
(15, 'n', 'n', 'n', '', '', 'nn', 'nn'),
(17, 'j', 'j', 'j', '', '', 'jj', 'j'),
(18, 'Prueba', 'Prueba', 'Prueba', '', '', 'imagenes/', 'audio'),
(19, 'fg', '', '', '', '', '', ''),
(20, '', 'sol', '', '', '', '', ''),
(21, '', 'sol', '', '', '', '', ''),
(22, '', 'soles', '', '', '', '', ''),
(23, '', 'don', '', '', '', '', ''),
(24, '', 'tugfa', '', '', '', '', ''),
(25, '', 'nel', '', '', '', '', ''),
(26, '', 'nel', '', '', '', '', ''),
(27, '', 'nel', '', '', '', '', ''),
(28, '', 'nel', '', '', '', '', ''),
(29, '', 'nel', '', '', '', '', ''),
(30, '', 'nel', '', '', '', '', ''),
(31, '', 'nel', '', '', '', '', ''),
(32, '', 'ola', '', '', '', '', ''),
(33, '', 'ola', '', '', '', '', ''),
(39, '', 'Rayando el sol', '', '', '', '', '');

--
-- Disparadores `canciones`
--
DELIMITER $$
CREATE TRIGGER `actualizarcanciones` AFTER UPDATE ON `canciones` FOR EACH ROW INSERT historial (fecha,descripcion,usuario)

VALUES ('2017-09-11','Cancion Actualizada','LUIS')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cancionesdelaño`
--

CREATE TABLE `cancionesdelaño` (
  `cancion` varchar(100) NOT NULL,
  `duracion` int(11) DEFAULT NULL,
  `estrellas` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `cancionesdelaño`
--

INSERT INTO `cancionesdelaño` (`cancion`, `duracion`, `estrellas`) VALUES
('every seconds', 4, 3),
('lost on you', 5, 3),
('somebody save me', 5, 5),
('take me on', 10, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`email`, `address`, `firstname`, `lastname`, `phone`) VALUES
('\0', '-', '\0', '\0', 'øœÈ—'),
('xd', 'xd', 'xd', 'xd', 'xd'),
('xd', 'xd', 'xd', 'xd', 'xd'),
('xdxd', 'xd', 'xd', 'xd', 'xd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `createcontact`
--

CREATE TABLE `createcontact` (
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `createcontact`
--

INSERT INTO `createcontact` (`email`, `address`, `firstname`, `lastname`, `phone`) VALUES
('ELVER@GMAIL.COM', '55 XD', 'LUIS', 'SALAZAR', '5518428722');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id_track` varchar(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `cantidad` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id_track`, `nombre`, `cantidad`) VALUES
('', 'ya?', 0),
('1', 'prueba', 3),
('1524', 'favoritos', 5),
('2', 'pruebass', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `fecha` date NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`fecha`, `descripcion`, `usuario`) VALUES
('2017-09-11', 'Usuario eliminado', 'LUIS'),
('2017-09-11', 'Usuario eliminado', 'LUIS'),
('2017-09-11', 'Usuario eliminado', 'LUIS'),
('2017-09-11', 'Cancion Actualizada', 'LUIS'),
('2017-09-11', 'Cancion Actualizada', 'LUIS'),
('2017-09-11', 'Usuario eliminado', 'LUIS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(30) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `id_track` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `nombre`, `id_track`) VALUES
(0, 'ya?', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba`
--

CREATE TABLE `prueba` (
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nickname` varchar(30) NOT NULL DEFAULT 'user',
  `email` varchar(30) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `contra` varchar(30) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nickname`, `email`, `contrasena`, `contra`, `nivel`) VALUES
('albertocatetas', 'albertocatetas', '123', '', 0),
('Bran', 'bran@gmail.com', '123', '', 0),
('elchaquetasjuanpablo', 'elchaquetas@gmail.com', '123', '', 0),
('elver', 'elver@gmail.com', '123', '', 0),
('inge', 'inge@gmail.com', '123', '', 1),
('invitado', 'invitado@gmail.com', '123456789', '', 0),
('invitadoooooos', 'invitado@gmail.com', '123456789', '', 0),
('jesus', 'jesus@gmail.com', '123', '', 0),
('jg', 'fgj', '123', '', 0),
('Julio', 'julio@gmail.com', '', '123', 2),
('Luis', 'luis@luis', '', '123', 2),
('luis1', 'luis@gmail.com', '123', '', 0),
('Prueba', 'Pruebs@gmail.com', '123', '', 0),
('tumasgfa', '', '', '', 0);

--
-- Disparadores `usuario`
--
DELIMITER $$
CREATE TRIGGER `eliminarusuario` AFTER DELETE ON `usuario` FOR EACH ROW INSERT historial (fecha,descripcion,usuario) VALUES ('2017-09-11','Usuario eliminado','LUIS')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariotigres`
--

CREATE TABLE `usuariotigres` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido1` varchar(30) NOT NULL,
  `apellido2` varchar(30) NOT NULL,
  `telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Disparadores `usuariotigres`
--
DELIMITER $$
CREATE TRIGGER `actualizarusuario` AFTER UPDATE ON `usuariotigres` FOR EACH ROW INSERT INTO usuariostrigger (id,nombre,apellido1,apellido2,telefono,telefono_anterior)

VALUES (NEW.id,NEW.nombre,NEW.apellido1,NEW.apellido2,NEW.telefono,OLD.telefono)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `crearusuario` AFTER INSERT ON `usuariotigres` FOR EACH ROW INSERT INTO usuariostrigger (id,nombre,apellido1,apellido2,telefono)

VALUES (NEW.id,NEW.nombre,NEW.apellido1,NEW.apellido2,NEW.telefono)
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`nickname`);

--
-- Indices de la tabla `cancion`
--
ALTER TABLE `cancion`
  ADD PRIMARY KEY (`id_track`),
  ADD UNIQUE KEY `archivo` (`archivo`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id_track`);

--
-- Indices de la tabla `cancionesdelaño`
--
ALTER TABLE `cancionesdelaño`
  ADD PRIMARY KEY (`cancion`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id_track`),
  ADD KEY `id_track` (`id_track`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`),
  ADD KEY `id_track` (`id_track`);

--
-- Indices de la tabla `prueba`
--
ALTER TABLE `prueba`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nickname`);

--
-- Indices de la tabla `usuariotigres`
--
ALTER TABLE `usuariotigres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id_track` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_1` FOREIGN KEY (`nickname`) REFERENCES `usuario` (`nickname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
