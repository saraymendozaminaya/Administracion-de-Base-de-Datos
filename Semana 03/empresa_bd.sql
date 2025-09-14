-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2025 a las 03:37:34
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
-- Base de datos: `empresa_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licenciafuncionamiento`
--

CREATE TABLE `licenciafuncionamiento` (
  `nroLicencia` char(6) NOT NULL,
  `fechaEmision` datetime NOT NULL,
  `fechaVencimiento` datetime NOT NULL,
  `nroDecretoAlcadia` char(6) NOT NULL,
  `actividad` varchar(30) NOT NULL,
  `representanteLegal` varchar(30) NOT NULL,
  `nroNegocio` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocio`
--

CREATE TABLE `negocio` (
  `nroNegocio` char(6) NOT NULL,
  `razonSocial` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `capacidad` int(11) NOT NULL,
  `tipoAcceso` varchar(30) NOT NULL,
  `nroLote` int(11) NOT NULL,
  `codPlano` char(6) DEFAULT NULL,
  `codTipoNeg` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocioxpropietario`
--

CREATE TABLE `negocioxpropietario` (
  `nombreProp` varchar(30) NOT NULL,
  `apellidosProp` varchar(30) NOT NULL,
  `razonSocial` varchar(30) NOT NULL,
  `codPropietario` char(6) NOT NULL,
  `nroNegocio` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagoimpuestos`
--

CREATE TABLE `pagoimpuestos` (
  `nroPago` char(6) NOT NULL,
  `fechaPago` datetime NOT NULL,
  `concepto` varchar(30) NOT NULL,
  `montoPago` decimal(19,4) NOT NULL,
  `periodoPredial` varchar(30) NOT NULL,
  `multa` decimal(19,4) NOT NULL,
  `descuento` decimal(19,4) NOT NULL,
  `totalPago` char(18) NOT NULL,
  `codPropietario` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planociudad`
--

CREATE TABLE `planociudad` (
  `codPlano` char(6) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `zonificacion` varchar(30) NOT NULL,
  `longitud` int(11) NOT NULL,
  `nroCuadras` int(11) NOT NULL,
  `codTipoPlano` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predios`
--

CREATE TABLE `predios` (
  `nroPredio` char(6) NOT NULL,
  `tipoPredio` varchar(30) NOT NULL,
  `categorizacion` varchar(30) NOT NULL,
  `pisos` int(11) NOT NULL,
  `fechaConstruccion` datetime NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `extension` char(18) NOT NULL,
  `material` char(18) NOT NULL,
  `nroRegistro` char(6) NOT NULL,
  `numPredio` char(6) NOT NULL,
  `codPlano` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `predioxpropietarios`
--

CREATE TABLE `predioxpropietarios` (
  `nombrePago` varchar(30) NOT NULL,
  `apellidosProp` varchar(30) NOT NULL,
  `porcTitularidad` int(11) NOT NULL,
  `codPropietario` char(6) NOT NULL,
  `nroPredio` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE `propietarios` (
  `codPropietario` char(6) NOT NULL,
  `nombreProp` varchar(30) NOT NULL,
  `apellidosProp` varchar(30) NOT NULL,
  `dniProp` char(8) NOT NULL,
  `telefonoRef` varchar(12) NOT NULL,
  `rucProp` char(11) NOT NULL,
  `edadProp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registromorosos`
--

CREATE TABLE `registromorosos` (
  `nroRegMorosos` char(6) NOT NULL,
  `fechaRegistro` datetime DEFAULT NULL,
  `motivoMorosidad` varchar(30) NOT NULL,
  `montoDeuda` decimal(19,4) NOT NULL,
  `Situacion` char(18) NOT NULL,
  `periodoAdeudado` char(18) NOT NULL,
  `codPropietario` char(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiponegocio`
--

CREATE TABLE `tiponegocio` (
  `codTipoNeg` char(6) NOT NULL,
  `denominacion` varchar(30) NOT NULL,
  `rubroGeneral` varchar(30) NOT NULL,
  `porcImpuesto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoplanos`
--

CREATE TABLE `tipoplanos` (
  `codTipoPlano` char(6) NOT NULL,
  `denominacionPlano` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `licenciafuncionamiento`
--
ALTER TABLE `licenciafuncionamiento`
  ADD PRIMARY KEY (`nroLicencia`),
  ADD KEY `R_16` (`nroNegocio`);

--
-- Indices de la tabla `negocio`
--
ALTER TABLE `negocio`
  ADD PRIMARY KEY (`nroNegocio`),
  ADD KEY `R_19` (`codPlano`),
  ADD KEY `R_26` (`codTipoNeg`);

--
-- Indices de la tabla `negocioxpropietario`
--
ALTER TABLE `negocioxpropietario`
  ADD PRIMARY KEY (`codPropietario`,`nroNegocio`),
  ADD KEY `R_23` (`nroNegocio`);

--
-- Indices de la tabla `pagoimpuestos`
--
ALTER TABLE `pagoimpuestos`
  ADD PRIMARY KEY (`nroPago`),
  ADD KEY `R_6` (`codPropietario`);

--
-- Indices de la tabla `planociudad`
--
ALTER TABLE `planociudad`
  ADD PRIMARY KEY (`codPlano`),
  ADD KEY `R_22` (`codTipoPlano`);

--
-- Indices de la tabla `predios`
--
ALTER TABLE `predios`
  ADD PRIMARY KEY (`nroPredio`),
  ADD KEY `R_28` (`codPlano`);

--
-- Indices de la tabla `predioxpropietarios`
--
ALTER TABLE `predioxpropietarios`
  ADD PRIMARY KEY (`codPropietario`,`nroPredio`),
  ADD KEY `R_2` (`nroPredio`);

--
-- Indices de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`codPropietario`);

--
-- Indices de la tabla `registromorosos`
--
ALTER TABLE `registromorosos`
  ADD PRIMARY KEY (`nroRegMorosos`),
  ADD KEY `R_5` (`codPropietario`);

--
-- Indices de la tabla `tiponegocio`
--
ALTER TABLE `tiponegocio`
  ADD PRIMARY KEY (`codTipoNeg`);

--
-- Indices de la tabla `tipoplanos`
--
ALTER TABLE `tipoplanos`
  ADD PRIMARY KEY (`codTipoPlano`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `licenciafuncionamiento`
--
ALTER TABLE `licenciafuncionamiento`
  ADD CONSTRAINT `R_16` FOREIGN KEY (`nroNegocio`) REFERENCES `negocio` (`nroNegocio`);

--
-- Filtros para la tabla `negocio`
--
ALTER TABLE `negocio`
  ADD CONSTRAINT `R_19` FOREIGN KEY (`codPlano`) REFERENCES `planociudad` (`codPlano`),
  ADD CONSTRAINT `R_26` FOREIGN KEY (`codTipoNeg`) REFERENCES `tiponegocio` (`codTipoNeg`);

--
-- Filtros para la tabla `negocioxpropietario`
--
ALTER TABLE `negocioxpropietario`
  ADD CONSTRAINT `R_14` FOREIGN KEY (`codPropietario`) REFERENCES `propietarios` (`codPropietario`),
  ADD CONSTRAINT `R_23` FOREIGN KEY (`nroNegocio`) REFERENCES `negocio` (`nroNegocio`);

--
-- Filtros para la tabla `pagoimpuestos`
--
ALTER TABLE `pagoimpuestos`
  ADD CONSTRAINT `R_6` FOREIGN KEY (`codPropietario`) REFERENCES `propietarios` (`codPropietario`);

--
-- Filtros para la tabla `planociudad`
--
ALTER TABLE `planociudad`
  ADD CONSTRAINT `R_22` FOREIGN KEY (`codTipoPlano`) REFERENCES `tipoplanos` (`codTipoPlano`);

--
-- Filtros para la tabla `predios`
--
ALTER TABLE `predios`
  ADD CONSTRAINT `R_28` FOREIGN KEY (`codPlano`) REFERENCES `planociudad` (`codPlano`);

--
-- Filtros para la tabla `predioxpropietarios`
--
ALTER TABLE `predioxpropietarios`
  ADD CONSTRAINT `R_1` FOREIGN KEY (`codPropietario`) REFERENCES `propietarios` (`codPropietario`),
  ADD CONSTRAINT `R_2` FOREIGN KEY (`nroPredio`) REFERENCES `predios` (`nroPredio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
