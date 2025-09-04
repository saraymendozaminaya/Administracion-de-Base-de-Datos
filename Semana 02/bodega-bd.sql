-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2025 a las 18:30:38
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
-- Base de datos: `bodega-bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_Cliente` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`ID_Cliente`, `Nombre`, `Direccion`, `Telefono`) VALUES
(1, 'Juan Pérez', 'Av. Grau 123 - Lima', '987654321'),
(2, 'María López', 'Jr. Ayacucho 456 - Arequipa', '956123478'),
(3, 'Carlos Ramírez', 'Av. La Marina 789 - Callao', '945678912'),
(4, 'Ana Torres', 'Calle Los Olivos 321 - Trujillo', '998765432'),
(5, 'Luis Gonzales', 'Av. Perú 654 - Chiclayo', '912345678'),
(6, 'Carmen Díaz', 'Jr. Libertad 852 - Piura', '934567890'),
(7, 'Pedro Sánchez', 'Av. Bolívar 963 - Cusco', '976543210'),
(8, 'Rosa Fernández', 'Calle Comercio 741 - Iquitos', '987123456'),
(9, 'Jorge Castillo', 'Av. San Martín 159 - Tacna', '965478123'),
(10, 'Lucía Morales', 'Jr. Huallaga 258 - Puno', '923456789'),
(11, 'Miguel Herrera', 'Av. Grau 369 - Chimbote', '976789123'),
(12, 'Patricia Silva', 'Calle Real 147 - Cajamarca', '954321678'),
(13, 'Andrés Medina', 'Av. Universitaria 258 - Lima', '978654321'),
(14, 'Sofía Vargas', 'Jr. Colón 369 - Huancayo', '987963258'),
(15, 'Ricardo Rojas', 'Calle Central 456 - Juliaca', '932165478'),
(16, 'Gabriela Cruz', 'Av. Arequipa 741 - Lima', '976321654'),
(17, 'Fernando Castro', 'Jr. San José 951 - Ica', '945789632'),
(18, 'Isabel Chávez', 'Calle Lima 357 - Ayacucho', '965412378'),
(19, 'Hugo Aguilar', 'Av. Túpac Amaru 159 - Huánuco', '978451236'),
(20, 'Teresa Flores', 'Jr. Pizarro 456 - Tumbes', '956987321'),
(21, 'Oscar Ramos', 'Calle Grau 753 - Moquegua', '976845123'),
(22, 'Claudia Mendoza', 'Av. Arequipa 258 - Lima', '923654789'),
(23, 'Raúl Ortega', 'Jr. Tacna 951 - Tarapoto', '954123698'),
(24, 'Natalia Paredes', 'Av. Grau 159 - Iquitos', '976951753'),
(25, 'Julio Vargas', 'Calle Bolognesi 258 - Cusco', '987456123'),
(26, 'Verónica Salazar', 'Av. España 369 - Trujillo', '923789654'),
(27, 'Guillermo Peña', 'Jr. Independencia 753 - Chiclayo', '945236789'),
(28, 'Beatriz Lozano', 'Av. Argentina 159 - Lima', '934125789'),
(29, 'Víctor León', 'Calle Amazonas 852 - Piura', '976321478'),
(30, 'Andrea Campos', 'Av. Grau 951 - Arequipa', '987654123'),
(31, 'Diego Morales', 'Jr. Colón 357 - Cajamarca', '976852741'),
(32, 'Paola Suárez', 'Av. Libertad 654 - Puno', '965478321'),
(33, 'Alejandro Ruiz', 'Calle San Martín 258 - Tacna', '954789632'),
(34, 'Vanessa Soto', 'Jr. Grau 369 - Ayacucho', '978963214'),
(35, 'Francisco Vega', 'Av. Miraflores 159 - Lima', '976123589'),
(36, 'Lorena Torres', 'Calle Amazonas 753 - Chimbote', '945678951'),
(37, 'Eduardo Fuentes', 'Jr. Junín 258 - Huancayo', '954321987'),
(38, 'Mónica Espinoza', 'Av. Piura 951 - Piura', '932147896'),
(39, 'Martín Delgado', 'Calle Huancavelica 654 - Cusco', '976852963'),
(40, 'Susana Cabrera', 'Av. Pizarro 357 - Chiclayo', '987654987'),
(41, 'Felipe Cárdenas', 'Jr. Tarata 258 - Ica', '923789456'),
(42, 'Adriana Quispe', 'Av. Grau 159 - Juliaca', '934567321'),
(43, 'Manuel Palacios', 'Calle Unión 654 - Moquegua', '976258963'),
(44, 'Elena Ramírez', 'Av. Arequipa 951 - Lima', '978654789'),
(45, 'Pablo Herrera', 'Jr. Amazonas 753 - Cajamarca', '987123789'),
(46, 'Ruth Ramos', 'Calle Colón 357 - Ayacucho', '976951236'),
(47, 'Esteban Salas', 'Av. Independencia 258 - Cusco', '954123789'),
(48, 'Florencia León', 'Jr. Real 951 - Huánuco', '923654321'),
(49, 'Daniel Bravo', 'Av. Grau 753 - Trujillo', '987456987'),
(50, 'Valeria Aguirre', 'Calle Lima 357 - Chiclayo', '976852123'),
(51, 'Cristian Gutiérrez', 'Jr. San Martín 258 - Iquitos', '954789123'),
(52, 'Marisol Peña', 'Av. Pizarro 951 - Piura', '965478951'),
(53, 'Álvaro Torres', 'Calle Bolívar 753 - Tarapoto', '976321789'),
(54, 'Liliana Rojas', 'Av. Arequipa 357 - Lima', '923654789'),
(55, 'José Ruiz', 'Jr. Libertad 951 - Cajamarca', '934125963'),
(56, 'Camila Vera', 'Av. Huallaga 753 - Puno', '987321654'),
(57, 'Antonio Salcedo', 'Calle Amazonas 357 - Tacna', '976951478'),
(58, 'Yesenia Flores', 'Jr. Real 258 - Moquegua', '954789654'),
(59, 'Ignacio Chávez', 'Av. Grau 951 - Lima', '965478963'),
(60, 'Gloria Quispe', 'Calle Central 753 - Cusco', '976852147'),
(61, 'Ramón Valdez', 'Av. San Martín 357 - Trujillo', '987654258'),
(62, 'Silvia Vargas', 'Jr. Independencia 951 - Chiclayo', '923789741'),
(63, 'Mauricio Castañeda', 'Av. Tacna 753 - Ica', '934125789'),
(64, 'Fabiola Córdova', 'Calle Lima 258 - Huancayo', '976951753'),
(65, 'Óscar Navarro', 'Av. Grau 951 - Ayacucho', '945236987'),
(66, 'Rocío Mejía', 'Jr. Amazonas 753 - Piura', '976852369'),
(67, 'Emilio Farfán', 'Calle Bolognesi 357 - Cusco', '954123456'),
(68, 'Juliana Zúñiga', 'Av. Arequipa 951 - Lima', '965478214'),
(69, 'Mateo Vásquez', 'Jr. San José 753 - Iquitos', '923654123'),
(70, 'Daniela Luján', 'Calle Real 357 - Puno', '976321456'),
(71, 'Gonzalo Ponce', 'Av. Libertad 951 - Tarapoto', '987654753'),
(72, 'Karen Palomino', 'Jr. Colón 753 - Cajamarca', '954789951'),
(73, 'Adrián Delgado', 'Calle Comercio 357 - Trujillo', '976852753'),
(74, 'Marta Soto', 'Av. Grau 951 - Chiclayo', '932165789'),
(75, 'Tomás Arévalo', 'Jr. Ayacucho 753 - Lima', '987321987'),
(76, 'Laura Carrillo', 'Av. Huánuco 357 - Cusco', '976951987'),
(77, 'Ángel Cabrera', 'Calle Central 951 - Ica', '954789258'),
(78, 'Mariana Delgado', 'Av. Piura 753 - Juliaca', '965478258'),
(79, 'Rodrigo Silva', 'Jr. Real 357 - Ayacucho', '976852951'),
(80, 'Natalie Ormeño', 'Av. Independencia 951 - Lima', '987654951');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `ID_Detalles` int(11) NOT NULL,
  `ID_Factura` int(11) NOT NULL,
  `ID_Productos` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`ID_Detalles`, `ID_Factura`, `ID_Productos`, `Cantidad`, `Total`) VALUES
(1, 15, 5, 2, 6.40),
(2, 15, 12, 1, 1.20),
(3, 3, 7, 3, 20.40),
(4, 3, 30, 2, 59.00),
(5, 28, 15, 1, 4.50),
(6, 28, 45, 2, 12.00),
(7, 7, 9, 5, 14.00),
(8, 7, 18, 2, 5.60),
(9, 40, 20, 3, 18.00),
(10, 40, 35, 1, 61.10),
(11, 11, 40, 2, 8.40),
(12, 11, 8, 4, 6.00),
(13, 25, 25, 1, 12.80),
(14, 25, 33, 2, 88.40),
(15, 6, 10, 6, 18.00),
(16, 6, 21, 3, 6.60),
(17, 32, 14, 4, 28.00),
(18, 32, 38, 1, 95.00),
(19, 19, 2, 5, 20.00),
(20, 19, 19, 2, 16.80),
(21, 50, 11, 1, 7.50),
(22, 50, 47, 3, 117.60),
(23, 22, 6, 4, 27.20),
(24, 22, 23, 2, 5.60),
(25, 35, 16, 2, 14.00),
(26, 35, 28, 3, 51.00),
(27, 9, 17, 5, 66.25),
(28, 9, 36, 1, 72.25),
(29, 44, 4, 2, 11.00),
(30, 44, 31, 3, 88.50),
(31, 12, 24, 1, 33.20),
(32, 12, 32, 2, 77.50),
(33, 27, 26, 3, 19.50),
(34, 27, 39, 1, 105.75),
(35, 5, 22, 2, 4.40),
(36, 5, 44, 1, 24.50),
(37, 30, 3, 5, 14.00),
(38, 30, 37, 1, 85.40),
(39, 14, 13, 2, 37.50),
(40, 14, 29, 3, 70.20),
(41, 21, 27, 1, 42.00),
(42, 21, 41, 2, 19.60),
(43, 2, 1, 5, 17.50),
(44, 2, 42, 1, 4.20),
(45, 48, 15, 3, 13.50),
(46, 48, 48, 2, 88.20),
(47, 33, 46, 2, 68.60),
(48, 33, 19, 1, 8.40),
(49, 13, 28, 2, 34.00),
(50, 13, 7, 4, 21.00),
(51, 36, 9, 3, 8.40),
(52, 36, 50, 2, 4.40),
(53, 17, 17, 1, 13.25),
(54, 17, 41, 2, 19.60),
(55, 20, 6, 3, 20.40),
(56, 20, 34, 1, 55.00),
(57, 4, 8, 5, 7.50),
(58, 4, 45, 3, 8.40),
(59, 42, 10, 2, 6.00),
(60, 42, 25, 1, 12.80),
(61, 8, 2, 4, 16.00),
(62, 8, 21, 2, 6.60),
(63, 18, 11, 2, 15.00),
(64, 18, 12, 5, 6.00),
(65, 26, 14, 3, 21.00),
(66, 26, 22, 4, 8.80),
(67, 45, 13, 1, 18.75),
(68, 45, 44, 2, 49.00),
(69, 31, 15, 3, 13.50),
(70, 31, 27, 2, 84.00),
(71, 29, 4, 4, 22.00),
(72, 29, 33, 1, 44.20),
(73, 46, 9, 2, 5.60),
(74, 46, 36, 3, 216.75),
(75, 24, 17, 2, 26.50),
(76, 24, 30, 1, 31.25),
(77, 41, 5, 6, 19.20),
(78, 41, 24, 2, 66.40),
(79, 23, 8, 3, 5.25),
(80, 23, 19, 1, 8.40),
(81, 38, 16, 2, 14.00),
(82, 38, 23, 3, 8.40),
(83, 10, 3, 5, 14.00),
(84, 10, 28, 1, 17.00),
(85, 43, 18, 3, 35.25),
(86, 43, 32, 2, 77.50),
(87, 37, 20, 4, 24.00),
(88, 37, 35, 1, 61.10),
(89, 1, 7, 5, 26.25),
(90, 1, 38, 1, 95.00),
(91, 16, 1, 4, 14.00),
(92, 16, 26, 2, 13.00),
(93, 34, 10, 3, 9.00),
(94, 34, 30, 2, 62.50),
(95, 39, 2, 2, 8.00),
(96, 39, 42, 1, 4.20),
(97, 47, 11, 1, 7.50),
(98, 47, 21, 3, 9.90),
(99, 49, 13, 2, 37.50),
(100, 49, 39, 1, 105.75),
(101, 52, 4, 3, 16.50),
(102, 52, 19, 2, 16.80),
(103, 54, 6, 1, 6.80),
(104, 54, 36, 2, 144.50),
(105, 60, 15, 4, 18.00),
(106, 60, 22, 3, 8.40),
(107, 55, 7, 2, 10.50),
(108, 55, 27, 1, 42.00),
(109, 53, 10, 5, 15.00),
(110, 53, 33, 1, 44.20),
(111, 57, 8, 4, 6.00),
(112, 57, 28, 2, 34.00),
(113, 58, 2, 3, 12.00),
(114, 58, 41, 2, 19.60),
(115, 61, 12, 1, 1.20),
(116, 61, 30, 2, 62.50),
(117, 62, 3, 5, 14.00),
(118, 62, 29, 1, 23.40),
(119, 59, 5, 2, 6.40),
(120, 59, 37, 1, 85.40),
(121, 64, 6, 4, 27.20),
(122, 64, 22, 2, 4.40),
(123, 66, 9, 2, 5.60),
(124, 66, 23, 1, 2.80),
(125, 70, 11, 3, 22.50),
(126, 70, 40, 2, 230.00),
(127, 63, 14, 2, 14.00),
(128, 63, 18, 3, 8.40),
(129, 68, 13, 1, 18.75),
(130, 68, 32, 2, 77.50),
(131, 71, 7, 2, 10.50),
(132, 71, 31, 1, 29.50),
(133, 65, 5, 3, 9.60),
(134, 65, 27, 2, 84.00),
(135, 72, 2, 2, 8.00),
(136, 72, 28, 1, 17.00),
(137, 74, 6, 5, 34.00),
(138, 74, 36, 1, 72.25),
(139, 75, 1, 3, 10.50),
(140, 75, 19, 1, 8.40),
(141, 76, 8, 4, 6.00),
(142, 76, 23, 2, 5.60),
(143, 77, 4, 2, 11.00),
(144, 77, 33, 1, 44.20),
(145, 78, 9, 3, 8.40),
(146, 78, 24, 1, 33.20),
(147, 80, 10, 5, 15.00),
(148, 80, 25, 2, 25.60),
(149, 51, 6, 3, 20.40),
(150, 51, 26, 1, 6.50),
(151, 56, 11, 2, 15.00),
(152, 56, 22, 4, 8.80),
(153, 73, 13, 3, 56.25),
(154, 73, 35, 1, 61.10),
(155, 67, 5, 2, 6.40),
(156, 67, 40, 1, 115.00),
(157, 79, 2, 4, 16.00),
(158, 79, 21, 1, 3.30),
(159, 69, 8, 3, 5.25),
(160, 69, 38, 2, 190.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `ID_Factura` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`ID_Factura`, `ID_Cliente`, `Fecha`, `Total`) VALUES
(1, 12, '2024-01-05', 150.50),
(2, 45, '2024-01-07', 75.20),
(3, 3, '2024-01-10', 250.00),
(4, 68, '2024-01-12', 120.75),
(5, 27, '2024-01-15', 300.00),
(6, 14, '2024-01-18', 98.40),
(7, 59, '2024-01-20', 450.60),
(8, 22, '2024-01-22', 220.00),
(9, 77, '2024-01-25', 65.90),
(10, 9, '2024-01-28', 410.30),
(11, 35, '2024-02-01', 185.70),
(12, 1, '2024-02-03', 275.90),
(13, 63, '2024-02-05', 270.25),
(14, 5, '2024-02-07', 325.90),
(15, 41, '2024-02-10', 145.50),
(16, 18, '2024-02-12', 490.00),
(17, 80, '2024-02-14', 205.30),
(18, 29, '2024-02-16', 110.00),
(19, 54, '2024-02-18', 370.80),
(20, 7, '2024-02-20', 289.50),
(21, 32, '2024-02-22', 90.75),
(22, 61, '2024-02-24', 310.40),
(23, 24, '2024-02-26', 400.00),
(24, 73, '2024-02-28', 175.25),
(25, 16, '2024-03-01', 230.90),
(26, 46, '2024-03-03', 350.70),
(27, 8, '2024-03-05', 420.00),
(28, 37, '2024-03-07', 115.80),
(29, 70, '2024-03-09', 295.00),
(30, 21, '2024-03-11', 250.40),
(31, 52, '2024-03-13', 199.90),
(32, 11, '2024-03-15', 380.00),
(33, 66, '2024-03-17', 88.60),
(34, 30, '2024-03-19', 320.75),
(35, 50, '2024-03-21', 145.20),
(36, 19, '2024-03-23', 285.00),
(37, 60, '2024-03-25', 470.90),
(38, 33, '2024-03-27', 230.40),
(39, 2, '2024-03-29', 365.70),
(40, 48, '2024-04-01', 190.50),
(41, 20, '2024-04-03', 278.90),
(42, 55, '2024-04-05', 495.60),
(43, 6, '2024-04-07', 210.25),
(44, 39, '2024-04-09', 135.80),
(45, 72, '2024-04-11', 385.20),
(46, 25, '2024-04-13', 260.00),
(47, 64, '2024-04-15', 420.50),
(48, 15, '2024-04-17', 98.75),
(49, 43, '2024-04-19', 340.90),
(50, 71, '2024-04-21', 180.60),
(51, 17, '2024-04-23', 455.00),
(52, 47, '2024-04-25', 155.90),
(53, 10, '2024-04-27', 312.40),
(54, 56, '2024-04-29', 210.75),
(55, 23, '2024-05-01', 98.40),
(56, 65, '2024-05-03', 278.30),
(57, 4, '2024-05-05', 330.00),
(58, 42, '2024-05-07', 222.50),
(59, 74, '2024-05-09', 150.75),
(60, 26, '2024-05-11', 482.20),
(61, 62, '2024-05-13', 265.40),
(62, 13, '2024-05-15', 399.90),
(63, 53, '2024-05-17', 250.00),
(64, 28, '2024-05-19', 310.20),
(65, 75, '2024-05-21', 142.60),
(66, 31, '2024-05-23', 290.40),
(67, 40, '2024-05-25', 370.00),
(68, 79, '2024-05-27', 89.50),
(69, 34, '2024-05-29', 420.30),
(70, 49, '2024-05-31', 285.00),
(71, 36, '2024-06-02', 350.40),
(72, 76, '2024-06-04', 299.20),
(73, 38, '2024-06-06', 125.60),
(74, 44, '2024-06-08', 478.00),
(75, 57, '2024-06-10', 223.50),
(76, 67, '2024-06-12', 320.00),
(77, 78, '2024-06-14', 280.90),
(78, 58, '2024-06-16', 154.30),
(79, 69, '2024-06-18', 411.20),
(80, 51, '2024-06-20', 192.50),
(81, 48, '2024-06-22', 365.90),
(82, 42, '2024-06-24', 210.75),
(83, 8, '2024-06-26', 488.00),
(84, 1, '2024-06-28', 305.40),
(85, 22, '2024-06-30', 150.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `ID_Productos` int(11) NOT NULL,
  `Precio_Venta` decimal(10,2) NOT NULL,
  `Nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`ID_Productos`, `Precio_Venta`, `Nombre`) VALUES
(1, 3.50, 'Arroz Costeño 1kg'),
(2, 4.00, 'Azúcar Rubia 1kg'),
(3, 2.80, 'Sal Marina 1kg'),
(4, 5.50, 'Aceite Vegetal Primor 1L'),
(5, 3.20, 'Fideos Don Vittorio 500g'),
(6, 2.50, 'Sopa Instantánea Maruchan'),
(7, 6.80, 'Leche Gloria Lata 400g'),
(8, 1.50, 'Agua Cielo 625ml'),
(9, 2.80, 'Inca Kola 500ml'),
(10, 3.00, 'Coca Cola 500ml'),
(11, 7.50, 'Galletas Oreo 432g'),
(12, 1.20, 'Galletas Soda Field'),
(13, 1.00, 'Caramelos Ambrosoli'),
(14, 2.00, 'Chicles Trident'),
(15, 4.50, 'Café Altomayo 170g'),
(16, 7.00, 'Chocolate Sublime Tableta 150g'),
(17, 1.50, 'Pan de Molde Bimbo 6 rebanadas'),
(18, 2.80, 'Mermelada Fanny Fresa 250g'),
(19, 1.50, 'Huevos Pardos Unidad'),
(20, 6.00, 'Atún Florida Lata 170g'),
(21, 2.20, 'Sardinas Compass Lata 155g'),
(22, 4.50, 'Mayonesa Alacena 250g'),
(23, 3.20, 'Kétchup Alacena 200g'),
(24, 2.80, 'Mostaza Alacena 200g'),
(25, 1.80, 'Sazonador Ajinomoto 100g'),
(26, 1.50, 'Cubitos Maggi Gallina'),
(27, 6.50, 'Detergente Ariel 400g'),
(28, 3.80, 'Jabón Bolívar 250g'),
(29, 2.50, 'Lejía Clorox 500ml'),
(30, 3.20, 'Lavavajilla Sapolio 500ml'),
(31, 7.50, 'Shampoo Savital 750ml'),
(32, 6.50, 'Acondicionador Sedal 350ml'),
(33, 5.00, 'Desodorante Rexona 150ml'),
(34, 1.20, 'Papel Higiénico Elite Unidad'),
(35, 2.50, 'Servilletas Elite 100 und'),
(36, 3.20, 'Toalla Higiénica Nosotras 8 und'),
(37, 1.50, 'Encendedor Clipper'),
(38, 1.20, 'Velas Blancas x4'),
(39, 2.00, 'Cerveza Pilsen 310ml'),
(40, 2.00, 'Cerveza Cusqueña 310ml'),
(41, 2.50, 'Cerveza Cristal 310ml'),
(42, 8.50, 'Ron Cartavio 500ml'),
(43, 9.50, 'Whisky Johnnie Walker Red 350ml'),
(44, 4.20, 'Vino Tabernero Borgoña 500ml'),
(45, 2.20, 'Jugo Frugos 500ml'),
(46, 1.50, 'Yogurt Gloria 200ml'),
(47, 4.00, 'Leche Evaporada Ideal 400g'),
(48, 2.80, 'Harina Blanca Flor 1kg'),
(49, 3.50, 'Maicena Universal 250g'),
(50, 5.20, 'Cereal Zucaritas 300g'),
(51, 6.50, 'Cereal Angel 400g'),
(52, 4.50, 'Avena Quaker 500g'),
(53, 2.00, 'Gelatina Royal 85g'),
(54, 1.50, 'Caramelo Sublime Unidad'),
(55, 3.00, 'Snack Papas Lay’s 95g'),
(56, 2.50, 'Piqueo Snax Pequeño'),
(57, 3.80, 'Chizitos Pequeño'),
(58, 2.00, 'Chupetín Doble Fruna'),
(59, 2.80, 'Galleta Casino 12 und'),
(60, 1.20, 'Galleta Morochas Unidad'),
(61, 1.80, 'Galleta Choco Soda Unidad'),
(62, 1.50, 'Keke Sayón Unidad'),
(63, 3.50, 'Mantequilla Laive 200g'),
(64, 2.50, 'Queso Fresco 100g'),
(65, 7.50, 'Jamón de Pierna 250g'),
(66, 8.50, 'Hot Dog Laive 250g'),
(67, 6.20, 'Salchicha San Fernando 250g'),
(68, 2.50, 'Pollo al Horno 100g'),
(69, 3.50, 'Carne Molida 100g'),
(70, 2.80, 'Papa Blanca 1kg'),
(71, 3.20, 'Cebolla Roja 1kg'),
(72, 1.80, 'Tomate 1kg'),
(73, 2.50, 'Plátano de Seda 1kg'),
(74, 2.80, 'Manzana Israel 1kg'),
(75, 3.50, 'Mandarina 1kg'),
(76, 4.50, 'Pera de Agua 1kg'),
(77, 5.00, 'Uva Red Globe 1kg'),
(78, 6.50, 'Sandía 1kg'),
(79, 7.50, 'Papaya 1kg'),
(80, 8.50, 'Piña Golden 1kg'),
(81, 2.00, 'Ajo 250g'),
(82, 1.50, 'Limón 250g');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_Cliente`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`ID_Detalles`),
  ADD KEY `ID_Factura` (`ID_Factura`),
  ADD KEY `ID_Productos` (`ID_Productos`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`ID_Factura`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`ID_Productos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `ID_Detalles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `ID_Factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `ID_Productos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`ID_Productos`) REFERENCES `productos` (`ID_Productos`),
  ADD CONSTRAINT `detalles_ibfk_2` FOREIGN KEY (`ID_Factura`) REFERENCES `factura` (`ID_Factura`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
