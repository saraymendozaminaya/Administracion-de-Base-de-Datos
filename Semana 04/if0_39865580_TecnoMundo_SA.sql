-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql207.byetcluster.com
-- Tiempo de generación: 24-09-2025 a las 12:11:19
-- Versión del servidor: 11.4.7-MariaDB
-- Versión de PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `if0_39865580_TecnoMundo_SA`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BOLETA`
--

CREATE TABLE `BOLETA` (
  `NUM_BOLETA` char(6) NOT NULL,
  `FECHA_EMI` date DEFAULT NULL,
  `ID_CLIENTE` char(6) DEFAULT NULL,
  `COD_EMPLE` char(6) DEFAULT NULL,
  `ESTADO_BOLETA` varchar(20) DEFAULT NULL,
  `TOTAL` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CARGOS`
--

CREATE TABLE `CARGOS` (
  `COD_CARGO` char(6) NOT NULL,
  `NOMBRE_CARGO` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CATEGORIAS`
--

CREATE TABLE `CATEGORIAS` (
  `COD_CATE` char(6) NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CLIENTE`
--

CREATE TABLE `CLIENTE` (
  `ID_CLIENTE` char(6) NOT NULL,
  `NOMBRES` varchar(100) DEFAULT NULL,
  `APELLIDOS` varchar(100) DEFAULT NULL,
  `FONO` char(9) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CLIENTE_DIRECCION`
--

CREATE TABLE `CLIENTE_DIRECCION` (
  `ID_CLIENTE` char(6) DEFAULT NULL,
  `ID_DIRECCION` char(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DETALLEBOLETA`
--

CREATE TABLE `DETALLEBOLETA` (
  `NUM_BOLETA` char(6) DEFAULT NULL,
  `ID_PRODUCTO` char(6) DEFAULT NULL,
  `CANTIDAD` int(11) DEFAULT NULL,
  `IMPORTE` decimal(10,2) DEFAULT NULL,
  `IGV` decimal(5,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `DIRECCION`
--

CREATE TABLE `DIRECCION` (
  `ID_DIRECCION` char(6) NOT NULL,
  `DEPARTAMENTO` varchar(50) DEFAULT NULL,
  `NOMBRE_DISTRITO` varchar(20) DEFAULT NULL,
  `PROVINCIA` varchar(20) DEFAULT NULL,
  `DETALLE_DIRECCION` varchar(100) DEFAULT NULL,
  `REFERENCIA` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `EMPLEADO`
--

CREATE TABLE `EMPLEADO` (
  `COD_EMPLE` char(6) NOT NULL,
  `NOMBRES` varchar(100) DEFAULT NULL,
  `APELLIDOS` varchar(100) DEFAULT NULL,
  `DNI_EMPLE` char(8) DEFAULT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  `ESTADO_CIVIL` varchar(20) DEFAULT NULL,
  `NIVEL_EDUCA` varchar(50) DEFAULT NULL,
  `TELEFONO` char(9) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `SUELDO_BASICO` decimal(10,2) DEFAULT NULL,
  `FECHA_INGRESO` date DEFAULT NULL,
  `COD_CARGO` char(6) DEFAULT NULL,
  `COD_SEDE` char(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PRODUCTO`
--

CREATE TABLE `PRODUCTO` (
  `ID_PRODUCTO` char(6) NOT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `PRECIO_VENTA` decimal(10,2) DEFAULT NULL,
  `STOCK_MINIMO` int(11) DEFAULT NULL,
  `STOCK_ACTUAL` int(11) DEFAULT NULL,
  `COD_CATE` char(6) DEFAULT NULL,
  `COD_SEDE` char(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `SEDE`
--

CREATE TABLE `SEDE` (
  `COD_SEDE` char(6) NOT NULL,
  `NOMBRE` varchar(100) DEFAULT NULL,
  `ID_DIRECCION` char(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `BOLETA`
--
ALTER TABLE `BOLETA`
  ADD PRIMARY KEY (`NUM_BOLETA`),
  ADD KEY `ID_CLIENTE` (`ID_CLIENTE`),
  ADD KEY `COD_EMPLE` (`COD_EMPLE`);

--
-- Indices de la tabla `CARGOS`
--
ALTER TABLE `CARGOS`
  ADD PRIMARY KEY (`COD_CARGO`);

--
-- Indices de la tabla `CATEGORIAS`
--
ALTER TABLE `CATEGORIAS`
  ADD PRIMARY KEY (`COD_CATE`);

--
-- Indices de la tabla `CLIENTE`
--
ALTER TABLE `CLIENTE`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Indices de la tabla `CLIENTE_DIRECCION`
--
ALTER TABLE `CLIENTE_DIRECCION`
  ADD KEY `ID_CLIENTE` (`ID_CLIENTE`),
  ADD KEY `ID_DIRECCION` (`ID_DIRECCION`);

--
-- Indices de la tabla `DETALLEBOLETA`
--
ALTER TABLE `DETALLEBOLETA`
  ADD KEY `NUM_BOLETA` (`NUM_BOLETA`),
  ADD KEY `ID_PRODUCTO` (`ID_PRODUCTO`);

--
-- Indices de la tabla `DIRECCION`
--
ALTER TABLE `DIRECCION`
  ADD PRIMARY KEY (`ID_DIRECCION`);

--
-- Indices de la tabla `EMPLEADO`
--
ALTER TABLE `EMPLEADO`
  ADD PRIMARY KEY (`COD_EMPLE`),
  ADD KEY `COD_CARGO` (`COD_CARGO`);

--
-- Indices de la tabla `PRODUCTO`
--
ALTER TABLE `PRODUCTO`
  ADD PRIMARY KEY (`ID_PRODUCTO`),
  ADD KEY `COD_CATE` (`COD_CATE`);

--
-- Indices de la tabla `SEDE`
--
ALTER TABLE `SEDE`
  ADD PRIMARY KEY (`COD_SEDE`),
  ADD KEY `ID_DIRECCION` (`ID_DIRECCION`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
