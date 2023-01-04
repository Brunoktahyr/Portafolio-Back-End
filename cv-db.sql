-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-01-2023 a las 19:49:56
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cv-db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `educacion`
--

CREATE TABLE `educacion` (
  `id` int(11) NOT NULL,
  `Titulo` varchar(45) DEFAULT NULL,
  `Establecimiento` varchar(45) DEFAULT NULL,
  `Duracion` varchar(45) DEFAULT NULL,
  `Usuario_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `educacion`
--

INSERT INTO `educacion` (`id`, `Titulo`, `Establecimiento`, `Duracion`, `Usuario_Id`) VALUES
(0, 'Tecnico Aeronautico', 'IV \"Brigada Aera\"', '6 años', 1),
(1, 'Programador Web Full Stack Jr.', 'Programa \"Argentina Programa\"', '8 mese', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiencias`
--

CREATE TABLE `experiencias` (
  `id` int(11) NOT NULL,
  `Lugar de trabajo` varchar(45) DEFAULT NULL,
  `Puesto` varchar(45) DEFAULT NULL,
  `Fecha Inicio` date DEFAULT NULL,
  `Fecha final` date DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Usuario_Id` int(11) NOT NULL,
  `Tipo_de_Empleo_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `experiencias`
--

INSERT INTO `experiencias` (`id`, `Lugar de trabajo`, `Puesto`, `Fecha Inicio`, `Fecha final`, `Descripcion`, `Usuario_Id`, `Tipo_de_Empleo_`) VALUES
(0, 'Lorenzo Automotores S.A.', 'Ayudante Mecanico', '2022-08-01', '2022-10-12', 'Trabajos de services, balanceo y rotacion ademas de algun que otro trabajo de mecanica en general', 1, 1),
(1, 'Cimadera S.A.', 'Ayudante de Carpintero', '2022-12-01', '2022-12-30', 'Limpieza, transporte y ordenamiento de materiales', 1, 2),
(2, 'N/A', 'Programador Web Full Stack Jr.', '2022-05-15', '2022-01-15', 'Creacion de una pagina web que sirva como portfolio para multiples usuarios desarrollando froend y backend', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Duracion` varchar(45) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Usuario_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `Nombre`, `Duracion`, `Descripcion`, `Usuario_Id`) VALUES
(1, '#YoProgramo', '8 meses', 'Creacion de una pagina web que sera usada como portfolio', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `Habilidad` varchar(45) DEFAULT NULL,
  `Valoracion de Hab` varchar(5) DEFAULT NULL,
  `Usuario_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `skills`
--

INSERT INTO `skills` (`id`, `Habilidad`, `Valoracion de Hab`, `Usuario_Id`) VALUES
(0, 'HTML', '8/10', 0),
(1, 'CSS', '8/10', 0),
(2, 'JavaScript', '8/10', 0),
(3, 'Mecanica', '6/10', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sobremi`
--

CREATE TABLE `sobremi` (
  `id` int(11) NOT NULL,
  `Fecha de Nacimiento` date DEFAULT NULL,
  `Localidad` varchar(45) DEFAULT NULL,
  `Info` varchar(300) DEFAULT NULL,
  `Foto` varchar(100) DEFAULT NULL,
  `Usuario_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `sobremi`
--

INSERT INTO `sobremi` (`id`, `Fecha de Nacimiento`, `Localidad`, `Info`, `Foto`, `Usuario_Id`) VALUES
(0, '2003-09-30', 'Godoy Cruz, Mendoza', 'Joven estudiante y programador web full stack Jr', 'foto/perfil', 0),
(1, '2000-10-16', 'Las Heras, Mendoza', 'Tecnico Aeronautico ', 'foto/perfil', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_empleo`
--

CREATE TABLE `tipo_de_empleo` (
  `id` int(11) NOT NULL,
  `Tipo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tipo_de_empleo`
--

INSERT INTO `tipo_de_empleo` (`id`, `Tipo`) VALUES
(0, 'Frelance'),
(1, 'Part-Time'),
(2, 'Full-Time');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Correo Electronico` varchar(45) DEFAULT NULL,
  `Contraseña` varchar(16) DEFAULT NULL,
  `Nickname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Nombre`, `Apellido`, `Correo Electronico`, `Contraseña`, `Nickname`) VALUES
(0, 'Bruno', 'Atencio', 'brunoatencio23@gmail.com', 'b20030930', 'Brunoktahyr'),
(1, 'Agustin', 'Sarmiento', 'brunoktahyr@gmail.com', '123456789', 'Brunoktahir');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`,`Usuario_Id`),
  ADD KEY `fk_Educacion_Usuario1` (`Usuario_Id`);

--
-- Indices de la tabla `experiencias`
--
ALTER TABLE `experiencias`
  ADD PRIMARY KEY (`id`,`Usuario_Id`,`Tipo_de_Empleo_`),
  ADD KEY `fk_Experiencias_Usuario` (`Usuario_Id`),
  ADD KEY `fk_Experiencias_Tipo_de_Empleo1` (`Tipo_de_Empleo_`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`,`Usuario_Id`),
  ADD KEY `fk_Proyectos_Usuario1` (`Usuario_Id`);

--
-- Indices de la tabla `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`,`Usuario_Id`),
  ADD KEY `fk_Skills_Usuario1` (`Usuario_Id`);

--
-- Indices de la tabla `sobremi`
--
ALTER TABLE `sobremi`
  ADD PRIMARY KEY (`Usuario_Id`);

--
-- Indices de la tabla `tipo_de_empleo`
--
ALTER TABLE `tipo_de_empleo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `educacion`
--
ALTER TABLE `educacion`
  ADD CONSTRAINT `fk_Educacion_Usuario1` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuario` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `experiencias`
--
ALTER TABLE `experiencias`
  ADD CONSTRAINT `fk_Experiencias_Tipo_de_Empleo1` FOREIGN KEY (`Tipo_de_Empleo_`) REFERENCES `tipo_de_empleo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Experiencias_Usuario` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuario` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD CONSTRAINT `fk_Proyectos_Usuario1` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuario` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `skills`
--
ALTER TABLE `skills`
  ADD CONSTRAINT `fk_Skills_Usuario1` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuario` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sobremi`
--
ALTER TABLE `sobremi`
  ADD CONSTRAINT `fk_Sobremi_Usuario1` FOREIGN KEY (`Usuario_Id`) REFERENCES `usuario` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
