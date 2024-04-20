-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-04-2024 a las 09:43:30
-- Versión del servidor: 5.7.23-23
-- Versión de PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaar_auto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `id_banner` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `foto` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `banners`
--

INSERT INTO `banners` (`id_banner`, `nombre`, `foto`) VALUES
(10, 'EXLUSIVE 90W', 'EXCLUSIVE 90W.jpg'),
(13, 'EXCLUSIVE ', 'EXCLUSIVE 70W.jpg'),
(26, 'PREMIUM PRO ', '5 PREMIUM PRO.jpg'),
(31, 'PLAFONES 8003A-1', '8003A-1.jpg'),
(25, 'BASICO', '2 BASICO 4.0.jpg'),
(20, 'FLAME', '8 FLAME.jpg'),
(27, 'MASTER ', '7 MASTER.jpg'),
(30, 'PLANOS TECNOLAMP', '044,045,046 TECNO.jpg'),
(28, 'BARRACUDA', 'BARRACUDA.jpg'),
(29, 'PREMIUM LITE', '4 PREMIUM LITE.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES
(5, 'Plafones de LED'),
(6, 'Plafones de Embutir'),
(7, 'Plafones de Sobreproner'),
(8, 'Plafones Laterales'),
(9, 'Plafones Luz Interior'),
(10, 'Minibus, Dina y Mercedes'),
(11, 'Direccionales'),
(12, 'Calaveras Universales'),
(15, 'Charros'),
(16, 'Reflejantes'),
(17, 'Zepelines'),
(18, 'Mazda'),
(19, 'Chevrolet'),
(20, 'Dodge - Chrysler'),
(21, 'Ford'),
(22, 'Nissan'),
(23, 'Volkswagen'),
(24, 'Tapicerias de Puerta'),
(25, 'Cubiertas de Tablero'),
(26, 'Frentes de Tablero'),
(27, 'Rejillas Exteriores'),
(28, 'Luz Stop de Cabina'),
(29, 'Portaplacas'),
(30, 'Jinetes de Tapa de Caja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mes`
--

CREATE TABLE `mes` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `serie` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `foto` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_blanco` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_amarillo` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_naranja` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_azul` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_verde` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mes`
--

INSERT INTO `mes` (`id_producto`, `nombre`, `serie`, `precio`, `descripcion`, `foto`, `imagen_blanco`, `imagen_amarillo`, `imagen_naranja`, `imagen_azul`, `imagen_verde`) VALUES
(16, 'KIT LED EVOLUM ', 'MASTER ', '550.- ', 'KIT LED MASTER Medidas H4, H13, 9004 y 9007.', 'KIT MASTER EVOLUM.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(14, 'Direccionales LED', 'GPL0075', '165.-', 'Rectangular 20 LED Con Estrobo 9x9x4 cms M/V (12/24V)', 'GPL0075.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(23, 'KIT LED ILLUME ', 'KIT001EX', '1,275.-', 'KIT LED EXLCUSIVE 70w Medidas H4, H13 Y 9007/9004.', 'KIT ILLUME EXLUSIVE.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `serie` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `precio` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `categoria` int(11) NOT NULL,
  `imagen_blanco` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_amarillo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_naranja` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_azul` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_verde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `serie`, `precio`, `descripcion`, `foto`, `categoria`, `imagen_blanco`, `imagen_amarillo`, `imagen_naranja`, `imagen_azul`, `imagen_verde`) VALUES
(8, 'Mazda', '295A', '$ 226.-', 'Cuarto Punta 86 - 93 L-R', '295A.jpg', 15, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(9, 'Mazda', '295EU', '$ 160.--', 'Cuarto Punta 86-93 Tipo Europa L-R', '295EU.jpg', 15, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(12, 'Toyota', '236EU', '$ 532.--', 'Calavera PU 89-95 Tipo Europa L-R', '236EU.jpg', 16, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(15, 'Toyota', '252C', '$ 397.--', 'Calavera PU 84-88 Corta Cristal L-R', '252C.jpg', 16, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(16, 'Calaveras Autos', '597A', '$ 550.--', 'Chevy Monza C3 09-11 L-R', '597A.jpg', 17, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(17, 'Calaveras Autos', '593A', '$ 597.-', 'Chevy Monza C2 04-08 L-R', '593A.jpg', 17, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(18, 'Calaveras de Autos', '592A', '$ 560.-', 'Chevy Monza Abombada 00-03 L-R', '592A.jpg', 17, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(19, 'Calaveras de Autos', '591A', '$ 530.-', 'Chevy Monza 94-99 L-R', '591AL.jpg', 17, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(20, 'Calaveras de Autos', '598A', '$ 534.-', 'Chevy Pop C2 2 ptas. 04-08 L-R', '598A.jpg', 17, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(22, 'Calaveras de Autos', '601A', '$ 570.-', 'Chevy Pop 00-03 2 Ptas Abombada L-R', '601A.jpg', 17, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(23, 'Calaveras Autos', '594A', '$ 530.-', 'Chevy Pop 94-00 2 Ptas. L-R', '594AL.jpg', 17, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(24, 'Calaveras de Autos', '595A', '$ 550.-', 'Chevy Swing / PU 04-08 L-R', '595A.jpg', 17, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(25, 'Calaveras de Autos', '599A', '$ 560.-', 'Chevy Swing / PU 00-03 Abombada L-R', '599A.jpg', 17, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(26, 'Calaveras de Autos', '596A', '$ 530.-', 'Chevy Swing / PU 94 - 99 L-R', '596AL.jpg', 17, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(28, 'Chevrolet - Calaveras Camionetas', '648A', '$ 750.-', 'S-10  95 - 03 L-R', '648AD.jpg', 18, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(29, 'Calaveras Camionetas', '802A', '$ 563.-', 'Blazer / S-10 82 - 94 Filo Cromado L-R', '802AD.jpg', 18, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(30, 'Calaveras Camionetas', '803A', '$ 495.-', 'Blazer / S-10 82 - 94 Filo Negro L-R', '803AD.jpg', 18, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(32, 'Calaveras Camionetas', '1144A', '$ 1,675.-', 'Chev PU / Cheyenne / Silverado 07-13 L-R', '1144AD.jpg', 18, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(33, 'Calaveras Camionetas', '1140A', '$ 1,554.-', 'PU 03 - 06 Filo Negro L-R', '1140AD.jpg', 18, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(34, 'Calaveras Camionetas', '615A', '$ 580.-', 'PU 92 - 98 L-R', '615AI.jpg', 18, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(35, 'Calaveras Camionetas', '615EU', '$ 965.-', 'PU 92-98 Tipo Europa Fondo Crom. L-R', '615EUD.jpg', 18, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(36, 'Calaveras Camionetas', '615EUN', '$ 1,110.-', 'PU 92-98 Tipo Europa Fondo Negro L-R', '615EUND.jpg', 18, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(39, 'Calaveras Camionetas', '600A', '$ 836.-', 'Tornado 04 - 11 Linea Anterior L-R', '600AR.jpg', 18, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(41, 'Chevrolet - Micas Calaveras Camionetas', '950A', '$ 40.-', 'Corvette Unilado', '950A.jpg', 19, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(42, 'Micas Calaveras Camionetas', '608A', '$ 120.-', 'PU 88 - 91 L-R', '608A.jpg', 19, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(47, 'Cuartos Frontales Autos', '632A', '144.--', 'Cutlass 87 - 96 L-R', '632A.jpg', 20, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(48, 'Chevrolet - Cuartos Frontales Camionetas', '629A', '$ 162.-', 'Blazer / S-10 82 - 94 L-R', '629A D.jpg', 21, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(50, 'Cuartos Frontales', '622A', '$ 316.-', 'Chevrolet PU 81 - 82 L-R', '622A.jpg', 21, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(51, 'Cuartos Frontales Camionetas', '977A', '$ 240.-', 'Cheyenne / Suburban 94-98 L-R', '977A.jpg', 21, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(52, 'Cuartos Frontales Camionetas', '977EU', '$ 314.-', 'Cheyenne / Suburban T. Europa 94-98 L-R', '977EU.jpg', 21, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(58, 'Mica Cuarto Frontal', '636A', '$ 80.-', '*SOLO MICA* PU 73 - 80 Unilado', '636A MICA.jpg', 21, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(64, 'Cuartos Punta Autos', '644A', '$ 130.-', 'Cavalier 89-90 *SOLO IZQUIERDOS*', '644A.jpg', 22, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(70, 'Cuartos Punta Autos', '639A', '$ 152.-', 'Citation / X11 *SOLO IZQUIERDO*', '639A.jpg', 22, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(73, 'Chevrolet - Cuartos Punta Camionetas', '647EU', '$ 200.-', 'Blazer / S-10 95-97 Tipo Europa *SOLO IZQUIERDO*', '647EU.jpg', 23, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(74, 'Cuartos Punta Camionetas', '782A', '$ 78.-', 'Blazer / S-10 82 - 94 L-R', '782A D.jpg', 23, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(77, 'Cuartos Punta Camionetas', '651A', '$ 92.-', 'Cto. Reflejante Cheyenne 96-98 L-R', '651A.jpg', 23, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(78, 'Cuartos Punta Camionetas', '651EU', '$ 160.-', 'Cto. Reflejante Cheyenne 96-98 T. Europa L-R', '651EU.jpg', 23, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(79, 'Cuartos Punta Camionetas', '652A', '$ 92.-', 'Cto. Cheyenne 96-98 L-R', '652A.jpg', 23, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(80, 'Cuartos Punta Camionetas', '652EU', '$ 160.-', 'Cto. Cheyenne 96-98 T. Europa L-R', '652EU.jpg', 23, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(81, 'Cuartos Punta Camionetas', '783A', '$ 96.-', 'Cto. Reflejante Cheyenne 94-95 L-R', '783A.jpg', 23, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(82, 'Cuartos Punta Camionetas', '783EU', '$ 152.-', 'Cto. Reflejante Cheyenne 94-95 T. Europa L-R', '783EU.jpg', 23, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(83, 'Cuartos Punta Camionetas', '784A', '$ 96.-', 'Cto. Cheyenne 94-95 L-R', '784A.jpg', 23, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(84, 'Cuartos Punta Camionetas', '784EU', '$ 159.-', 'Cto. Cheyenne 94-95 T. Europa L-R', '784EU.jpg', 23, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(87, 'Cuartos Laterales', '618A', '$ 33.-', 'Cheyenne 81-91 L-R', '618AR.jpg', 24, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(89, 'Cuartos Laterales', '616A', '$ 33.-', 'PU 73 - 80 Unilado', '616A AMBAR.jpg', 24, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(90, 'Cuartos Laterales', '617A', '$ 75.-', 'PU 67 - 72 Unilado', '617A AMBAR.jpg', 24, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(91, 'Varios', '607C', '$ 117.-', 'Base Calavera PU Cromada 88-91 L-R', '607C.jpg', 25, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(93, 'Varios', '023', '$ 139.-', 'Bisel Chevrolet Custom 83-87 *SOLO IZQUIERDO*', '023.jpg', 25, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(95, 'Varios', '1077A', '$ 178.-', 'Lampara Placa Chevy 94 - 03', '1077A.jpg', 25, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(101, 'Calaveras Autos', '882A', '$ 1,211.-', 'Spirit 93 - 94 L-R', '882A.jpg', 26, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(103, 'Calaveras Autos', '769A', '$ 1,150.-', 'Spirit 92 L-R', '769A.jpg', 26, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(106, 'Dodge - Chrysler / Calaveras Camionetas', '940A', '$ 760.-', 'Caravan / Voyaguer 96-00 Con Arnes L-R', '940AD.jpg', 27, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(107, 'Calaveras Camionetas', '292A', '$ 600.-', 'Caravan / Voyaguer 94-95 Lisa L-R', '292A.jpg', 27, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(108, 'Calaveras Camionetas', '291A', '$ 530.-', 'Caravan / Voyaguer 91-93 Acanalada L-R', '291A.jpg', 27, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(109, 'Calaveras Camionetas', '980A', '$ 625.-', 'Dodge PU 94 - 02 L-R', '980AI.jpg', 27, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(110, 'Calaveras Camionetas', '664E', '$ 465.-', 'Dodge PU 81 - 93 Filo Cromado IAPSA L-R', '664EI.jpg', 27, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(113, 'Calaveras Camionetas', '663C', '$ 340.-', 'Dakota 91-96 Americana IAPSA L-R', '663CI.jpg', 27, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(126, 'Micas Calaveras Camionetas', '662A', '$ 305.-', 'Dodge PU 73-80 L-R', '662AL.jpg', 29, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(131, 'Cuartos Fascia Autos', '690A', '$ 97.--', 'Spirit / Lebaron New York SOLO \"RH\"', '690A HAE.jpg', 30, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(132, 'Cuartos Fascia Autos', '690C', '$ 97.--', 'Spirit / Lebaron New York Cristal L-R', '690C.jpg', 30, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(133, 'Cuarto Frontal Camioneta', '1011A', '$ 290.-', 'Caravan / Voyaguer 87-90  SOLO \"LH\"', '1011A HAE.jpg', 30, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(142, 'Cuartos Punta Camionetas', '873A', '$ 423.-', 'Ram PU 94 - 01 L-R', '873AD.jpg', 32, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(149, 'Dodge - Chrysler / Laterales', '858A', '$ 114.-', 'Atos 00 - 10 Salpicadero Unilado', '858A.jpg', 33, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(151, 'Laterales', '682A', '$ 75.--', 'Trasero Dart K Volare 82-84 L-R', '682A.jpg', 33, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(152, 'Laterales', '930A', '$ 75.--', 'Dart 80 Bisel L-R', '930A.jpg', 33, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(153, 'Laterales', '263A', '$ 93.50', 'Neon 95 - 99 L-R', '263AL.jpg', 33, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(155, 'Laterales', '681A', '$ 33.-', 'Dodge PU 81 - 93 Unilado', '681A AMBAR.jpg', 33, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(157, 'Biseles', '030', '$ 326.-', 'Dart 80 SOLO \"LH\" ', '030 HAE.jpg', 34, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(168, 'Calaveras Autos', '500C', '$ 935.-', 'Topaz 92 - 94 L-R', '500C.jpg', 36, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(170, 'Ford - Calaveras Camionetas', '1152A', '$ 1,160.-', 'Courier 01 - 12 Con Arnes L-R', '1152AD.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(173, 'Calaveras Camionetas', '979C', '$ 950.-', 'Lobo / F-150 04-09 Tres Colores L-R', '979CD.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(174, 'Calaveras Camionetas', '979A', '$ 510.-', 'Lobo / PU F-150 97-03 L-R', '979AD.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(175, 'Calaveras Camionetas', '979EU', '$ 1,120.-', 'Lobo / PU F-150 97 - 03 Tipo Europa L-R', '979EUD.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(176, 'Calaveras Camionetas', '532E', '$ 320.-', 'Ford PU 92 - 96 IAPSA L-R', '532I.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(177, 'Calaveras Camionetas', '532EU', '$ 445.-', 'Ford PU 92-96 Tipo Europa L-R', '532EU.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(178, 'Calaveras Camionetas', '531A', '$ 350.-', 'Ford PU 87 - 91 IAPSA L-R', '531AI.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(179, 'Calaveras Camionetas', '530E', '$ 320.-', 'Ford PU 80 - 86 IAPSA L-R', '530I.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(180, 'Calaveras Camionetas', '529A', '$ 125.-', 'Ford PU Americana 78 - 79 L-R', '529AGIF.gif', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(181, 'Calaveras Camionetas', 'I013', '$ 2,073.-', 'Ranger 13 - 18 Marca IAPSA L-R', 'I013I.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(182, 'Calaveras Camionetas', '996A', '$ 1,775.-', 'Ranger 10 - 12 Doble Cabina L-R', '996AI.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(183, 'Calaveras Camionetas', '992A', '$ 860.-', 'Ranger 05 - 09 L-R', '992AI.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(185, 'Calaveras Camionetas', '994A', '$ 540.-', 'Ranger 01 - 04 Rev. y Direcc. Humo L-R', '994AI.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(186, 'Calaveras Camionetas', '975A', '$ 540.-', 'Ranger 2000 L-R', '975AII.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(187, 'Calaveras Camionetas', '972A', '$ 540.-', 'Ranger 98 - 99 L-R', '972AI.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(188, 'Calaveras Camionetas', '781A', '$ 493.-', 'Ranger 93 - 97 L-R', '781AI.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(191, 'Calaveras Camionetas', '778A', '$ 270.-', 'Ranger Americana 89 - 92 L-R', '778AI.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(194, 'Calaveras Camionetas', '285A', '$ 590.-', 'Windstar 95 - 98 L-R', '285AL.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(201, 'Micas Calaveras Autos', '923A', '$ 156.--', 'Topaz 87 (2)Puertas Esq. L-R', '923A.jpg', 38, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(202, 'Micas Calaveras Autos', '920A', '$ 210.--', 'Topaz 87 Central  L-R', '920A.jpg', 38, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(204, 'Micas Calaveras Autos', '523A', '$ 168.--', 'Topaz 84-86 Central  L-R', '523A.jpg', 38, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(207, ' Ford - Micas Calaveras Camionetas', '806A', '$ 80.-', 'Ford PU 67 - 69 C/Reversa L-R', '806A.jpg', 39, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(210, 'Cuartos Frontales Camionetas', '538A', '$ 70.-', 'Ford PU 80 - 86 Unilado', '538A-2.jpg', 40, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(212, 'Cuartos Frontales Camionetas', '537A', '$ 330.-', 'Ford PU 78 - 79 L-R', '537AR.jpg', 40, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(214, 'Cuartos Camionetas', '536C ', '$ 80.-', 'PU 73-77 Unilado ', '536C.jpg', 40, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(215, 'Cuartos Frontales Camionetas', '1047A', '$ 528.-', 'Ranger 89 - 92, Explorer 91 - 94 L-R', '1047A.jpg', 40, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(225, 'Cuartos Punta Autos', '552A', '$ 275.-', 'Topaz 88 - 94 / Ghia L-R', '552A.jpg', 41, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(233, 'Cuartos Punta Camionetas', '990A', '$ 375.-', 'Ford PU / Lobo 97 - 03 Bicolor L-R', '990AD.jpg', 42, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(234, 'Cuartos Punta Camionetas', '542A', '$ 125.-', 'Ford PU 92 - 96 Cristal  L-R', '542A.jpg', 42, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(237, 'Cuartos Punta Camionetas', '541A', '$ 754.-', 'Ford PU 87 - 91 Cromado L-R', '541A.jpg', 42, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(238, 'Cuartos Punta Camionetas', '780A', '$ 250.-', 'Ranger 93 - 97 L-R', '780AI.jpg', 42, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(239, 'Cuartos Punta Camionetas', '780EU', '$ 560.-', 'Ranger 93 - 97 Tipo Europa Crom. L-R', '780EU.jpg', 42, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(241, 'Cuartos Punta Camionetas', '1046A', '$ 211.-', 'Cuarto Reflejante Ranger 89-92 / Explorer 91-94 L-R', '1046A.jpg', 42, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(244, 'Micas Cuartos Camionetas', '535A', '$ 85.--', 'Ford PU 70 - 72 L-R', '535A.jpg', 43, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(245, 'Ford / Laterales', '857A', '$ 168.- ', 'Fiesta / Ikon / Courier Salpicadero ', '857A.jpg', 44, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(247, 'Laterales', '561A', '$ 191.-', 'Mustang 79 - 84 L-R', '561A.jpg', 44, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(249, 'Laterales', '559A', '$ 50.-', 'Ford PU 80 - 86 L-R', '559A1.jpg', 44, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(252, 'Laterales', '558A', '$ 33.- ', 'Ford PU 73 - 79 Unilado', '558AA.jpg', 44, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(256, 'Ford / Varios', '114', '$ 178.-', 'Tapon Lobo Cromado C/Arillo', '114N.jpg', 45, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(257, 'Varios', '115', '$ 102.-', 'Tapon Lobo Gris C/Arillo', '115N.jpg', 45, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(261, 'NISSAN / Calaveras Autos', '588A', '$ 1,700.-', 'Versa 12 - 19 Reversa Blanca Con Arnes L - R ', '588AI.jpg', 46, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(265, 'Calaveras Autos', '757H', '$ 450.-', 'Tsuru III 05 - 17 Con Arnes L-R ', '757HD.jpg', 46, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(275, 'NISSAN / Calaveras Camionetas', '872A', '$ 490.-', 'PU 86 - 97 Americana L-R', '872AI.jpg', 47, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(276, 'Calaveras Camionetas', '872EU', '$ 1,411.-', 'PU 86 - 97 Tipo Europa Fondo Cromado L-R', '872EUI.jpg', 47, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(277, 'Calaveras Camionetas', '872EUN', '$ 1,411.-', 'PU 86-97 Tipo Europa Fondo Negro L-R', '872EUNL.jpg', 47, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(285, 'Micas Calaveras Camionetas', '721A', '$ 45.-', 'Datsun Estaquitas 68 - 93 Unilado', '722A.jpg', 48, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(286, 'Micas Calaveras Camionetas', '723A', '$ 20.-', 'Reserva Estacas 94 - 10 Unilado', '723A.jpg', 48, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(287, 'Micas Calaveras Camionetas', '724A', '$ 34.**', 'Roja Estacas 94 - 10 Unilado', '724A.jpg', 48, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(288, 'Micas Calaveras Camionetas', '725A', '$ 24.**', 'Direccional Estacas 94 - 10', '725A.jpg', 48, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(291, 'Cuartos Defensa Autos', '740EU', '$ 90.**', 'Datsun PU 81 - 93 Tipo Europa L-R', '740EU.jpg', 49, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(292, 'Cuartos Defensa Autos', '889A', '$ 70.-', 'Tsuru II 88-91 Lujo / D-21 L-R / 747A Mica $ 30.**', '889AL.jpg', 49, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(293, 'Cuartos Defensa Autos', '889C ', '$ 70.-', 'Tsuru II 88-91 Lujo / D-21 L-R / 747C Mica $ 30.**', '889CR.jpg', 49, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(294, 'Cuartos Defensa Autos', '889EU', '$ 105.-', 'Tsuru II 88-91 Lujo / D-21 Tipo Europa L-R', '889EUL.jpg', 49, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(295, 'Cuartos Defensa Camionetas', '918A ', '$ 78.-', 'Datsun PU 73 - 80 L-R / 738A Mica $ 29.--', '918A.jpg', 49, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(296, 'Cuartos Defensa Camionetas', '961A ', '$ 210.-', 'Reversa Datsun PU 81 - 93 L-R / 726A Mica $ 37.50', '961A.jpg', 49, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(299, 'NISSAN - Cuartos Punta Autos', '776A', '$ 470.-', 'Hikari 88 - 89 Combinado L-R', '776AR.jpg', 50, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(301, 'Cuartos Punta Autos', '762A', '$ 286.-', 'Sentra 97 - 99 L-R', '762A.jpg', 50, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(303, 'Cuartos Punta Autos', '289A', '$ 225.-', 'Tsuru III 01 - 15 L-R C/Soquet', '289AD.jpg', 50, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(305, 'Cuartos Punta Autos', '729EU', '$ 110.--', 'Tsuru III 97 - 99 Tipo Europa L-R', '729EU.jpg', 50, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(309, 'Nissan - Cuartos Camionetas', '971C', '$ 190.-', 'PU 94 - 08 Filo Cromado L-R', '971CD.jpg', 51, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(310, 'Cuartos Camionetas', '971A', '$ 155.-', 'PU 94 - 08 Filo Gris L-R', '971AD.jpg', 51, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(311, 'Cuartos Camionetas', '286C', '$ 362.-', 'PU Americana Filo Cromado Bicolor L-R', '286CD.jpg', 51, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(312, 'Cuartos Camionetas', '286A', '$ 306.-', 'PU Americana Filo Gris Bicolor L-R', '286AD.jpg', 51, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(314, 'Cuartos Camionetas', '1157A', '$ 542.-', 'Urvan 07 - 10 SOLO \"LH\"', '1157A PAG.jpg', 51, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(315, 'Cuartos Punta Camionetas', '1156A', '$ 431.-', 'Urvan 02-06 SOLO \"RH\"', '1156A PAG.jpg', 51, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(323, 'Nissan / Laterales', '853A', '$ 114.-', 'Clio, Platina Unilado', '853A.jpg', 53, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(326, 'Laterales', '856A', '$ 168.-', 'Nissan PU D-22', '856A.jpg', 53, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(327, 'Laterales', '859A', '$ 140.-', 'Tiida', '859A.jpg', 53, 'blanco.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(333, 'Nissan - Luz Interior', '1076A', '$ 266.-', 'Tsuru 92 - 01 / Sentra 96-00', '1076A.jpg', 54, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(334, 'Luz Interior', '279 ', '$ 286.-', 'Tsuru 85 - 87 ', '279.jpg', 54, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(337, 'Nissan - Luz de Placa', '1144A', 'N/D', 'Luz de Placa Tsuru I y II', '1144A.jpg', 55, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(338, 'Luz de Placa', '1145A', 'N/D', 'Luz de Placa D-21 94 - 10', '1145A.jpg', 55, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(340, 'Varios / Nissan', '18440-1/41-1', '$ ', 'Faro Tsuru III 05 - 15 L-R', '18440-R.jpg', 56, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(341, 'Consulte Precio Con Vendedor', '3645', 'Nissan', 'Parrilla D-21 Cromada ', '3645.jpg', 56, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(342, 'Consulte Precio Con Vendedor', '3782', 'Nissan', 'Parrilla D-21 Gris ', '3782.jpg', 56, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(345, 'Calaveras Autos', '874A', '$ 530.**', 'Atlantic 81 - 87 Combinada L-R', '874A.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(347, 'Calaveras Autos', '986A', '$ 518.-', 'Brasilia 76 - 80 Plana Unilado', '986A.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(348, 'Calaveras Autos', '908A', '$ 518.-', 'Brasilia Acanalada 4 Gajos Modelo Viejo Unilado', '908A.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(349, 'Calaveras Autos', '823A', '$ 705.-', 'Caribe Larga 81-87 L-R', '823A.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(350, 'Calaveras Autos', '824A', '$ 444.-', 'Caribe Corta 77-80 L-R', '824A.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(351, 'Calaveras Autos', '868A', '$ 730.**', 'Golf 87-92 L-R', '868A.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(353, 'Calaveras Autos', '267A', '$ 666.-', 'Jetta A-3 93 - 99 Exterior L-R', '267A.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(355, 'Calaveras Autos', '998A ', '$ 502.-', 'Sedan Europa C/Base Unilado / 827A Mica $ 178.-', '998A-1.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(357, 'Calaveras Autos', '998H ', '$ 456.-', 'Sedan Europa Humo C/Base Unilado /       827H Mica $ 178.-', '998H.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(358, 'Calaveras Autos', '998EU', '$ 403.-', 'Sedan Tipo Europa Unilado Modelo Viejo', '998EU HAE.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(361, 'Micas Calaveras Autos', '903A', '$ 108.--', 'Brasilia Plana Acanalada 4 Gajos Uni.', '903A.jpg', 58, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(362, 'Micas Calaveras Autos', '904A', '$ 118.50', 'Brasilia Curva Acanalada 4 Gajos Uni.', '904A.jpg', 58, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(363, 'Micas Calaveras Autos', '944A', '$ 105.-', 'Brasilia Plana C/Reversa Unilado', '944A.jpg', 58, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(364, 'Micas Calaveras Autos', '829A', '$ 79.-', 'Brasilia Curva Unilado', '829A.jpg', 58, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(365, 'Micas Calaveras Autos', '801A', '$ 144.-', 'Sedan 71 - 73 Combinada Unilado', '801A.jpg', 58, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(366, 'Micas Calaveras Autos', '831A', '$ 100.-', 'Sedan 71 - 73 Rojo / Cristal Unilado', '831A.jpg', 58, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(367, 'Micas Calaveras Autos', '810A', '$ 100.-', 'Sedan 63 - 70 Combinada Unilado', '810A.jpg', 58, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(368, 'Micas Calaveras Autos', '835A', '$ 50.-', 'Sedan Roja 63 - 70 Unilado', '835A.jpg', 58, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(369, 'Micas Calaveras Autos', '957A', '$ 56.-', 'Sedan Roja 60 - 67 C/Reversa Unilado', '957A.jpg', 58, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(370, 'Micas Calaveras Camionetas', '832A', '$ 85.**', 'Combi Unilado', '832A.jpg', 58, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(373, 'Cuartos Fascia Autos', '861A', '$ 271.-', 'Jetta A5 Classico 08 - 10 L-R', '861A.jpg', 59, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(374, 'Cuartos Fascia Autos', '840o', '$ 296.-', 'Golf / Jetta A3 Tipo Original L-R', '840o L.jpg', 59, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(375, 'Cuartos Fascia Autos', '839o', '$ 212.-', 'Pantalla Golf / Jetta A3 Tipo Original L-R', '839o R.jpg', 59, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(377, 'Cuartos Fascia ', '811A', '$ 76.-', 'Golf / Jetta A2 Fascia Delgada Unilado', '811A.jpg', 59, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(378, 'Cuartos Fascia', '811EU', '$ 97.**', 'Golf / Jetta A2 Fascia Delgada Tipo Europa', '811EU BLANCO.jpg', 59, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(379, 'Cuartos Fascia ', '828A', '$ 52.-', 'Golf / Jetta A2 Fascia Ancha L-R', '828A.jpg', 59, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(382, 'Cuartos Fascia', '828EU', '$ 72.-', 'Golf / Jetta A2 Fascia Ancha Tipo Europa L-R', '828EU.jpg', 59, 'blanco.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(383, 'Cuartos Fascia', '818A ', '$ 100.-', 'Sedan 77 - 10 Unilado / 817A Mica $ 20.-', '818A-1.jpg', 59, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(385, 'Volkswagen - Cuartos Punta Autos', '812A', '$ 69.-', 'Atlantic 81 - 87 Ambar L-R', '812A.jpg', 60, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(386, 'Cuartos Punta Autos', '812C', '$ 69.-', 'Atlantic 81 - 87 Cristal L-R', '812C.jpg', 60, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(388, 'Cuartos Punta Autos', '833A', '$ 90.-', 'Caribe 81 - 87 Ambar L-R', '833A.jpg', 60, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(389, 'Cuartos Punta Autos', '833C', '$ 82.-', 'Caribe 81 - 87 Cristal L-R', '833C.jpg', 60, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(391, 'Cuartos Punta Autos', '833EU', '$ 130.**', 'Caribe 81 - 87 Tipo Europa', '833EU.jpg', 60, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(393, 'Volkswagen - Micas Cuartos', '815C', '$ 21.50', 'Caribe 77 - 80 Cristal L-R', '387.jpg', 61, 'blanco.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(394, 'Micas Cuartos', '821H', '$ 30.-', 'Combi Cristal Unilado', '388.jpg', 61, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(395, 'Micas Cuartos', '817H', '$ 20.-', 'VW Sedan 77-02 Uni.', '389.jpg', 61, 'blanco.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(400, 'Laterales', '1143A', '$ 126.-', 'Jetta / Golf A4 Tipo Europa Unilado', '1143A.jpg', 62, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(401, 'Laterales', '854A', '$ 84.-', 'Golf / Jetta A3 93 - 99 L-R', '395.jpg', 62, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(402, 'Laterales', '854EU', '$ 168.**', 'Golf / Jetta A3 93 - 99 Tipo Europa L-R', '854EU.jpg', 62, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(404, 'Volkswagen - Biseles', '984', '$ 145.-', 'Bisel Atlantic  L-R', '398.jpg', 63, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(406, 'Biseles', '836', '$ 35.-', 'Bisel Caribe 81-87 L-R', '400.jpg', 63, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(408, 'Espejos', '807C', '$ 240.-', 'VW Sedan Cromado L-R', '402.jpg', 64, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(409, 'Espejos', '807N', '$ 240.-', 'VW Sedan Negro L-R', '403.jpg', 64, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(410, 'Volkswagen - Varios', '916', '$ 310.-', 'Base Calavera Combi', '916.jpg', 65, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(415, 'Renault', '935A', '$ 425.--', 'Calavera R12 77-83 L-R', '409.jpg', 66, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(416, 'Renault', '582A', '$ 80.--', 'Mica Cto. R18 79 - 83 ', '582A.jpg', 66, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(417, 'Tapicerias de Puerta', '00304', 'CONSULTAR PRECIO', 'Ford PU 79 Completo ', '00304.jpg', 67, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(578, 'Portaplacas', '177', '$ 245.-', 'Cheyenne/Silverado/Suburban', '496.jpg', 72, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(581, 'Portaplacas', '190', '$ 136.--', 'Spirit', '499.jpg', 73, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(584, 'Portaplacas', '125', '$ 176.--', 'Ram PU 94-02', '125.jpg', 73, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(588, 'Portaplacas', '120', '$ 136.--', 'Voyaguer 91-95', '120.jpg', 73, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(589, 'Portaplacas', '130', '$ 179.--', 'Contour 98-01', '507.jpg', 74, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(590, 'Portaplacas', '127', '$ 136.--', 'Contour 95-97', '127.jpg', 74, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(592, 'Portaplacas', '118', '$ 179.--', 'Explorer 91-94/ Ranger 89-92', '118.jpg', 74, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(595, 'Portaplacas', '129', '$ 136.--', 'Mystique 95-97', '129.jpg', 74, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(598, 'Minibus, Dina y Mercedes', '257A', '$ 840.-', 'Bisel Cromado KW T600 con Cuarto 14 LED con Estrobo 12V', '257A.jpg', 9, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(599, 'Minibuses, Dina y Mercedes', '366A', '$ 163.-', 'Bisel DINA / FAMSA 90-94 Gris IAPSA L-R', '366A.jpg', 9, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(600, 'Minibuses, Dina y Mercedes', '366C-1', '$ 305.-', 'Bisel DINA / FAMSA 90-94 Cromado IAPSA L-R', '366C-1.jpg', 9, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(601, 'Minibuses, Dina y M.', '389C ', '$ 191.-', 'Calav. Eurovan / 389A Mica $ 95.-', '389C.jpg', 9, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(602, 'Minibuses, Dina y Mercedes', '389EU', '$ 320.-', 'Calavera Eurovan Tipo Europa ', '389EU.jpg', 9, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(603, 'Minibuses, Dina y Mercedes', '374A', '$ 228.-', 'Calvera Minibus Curva Uni.', '374A.jpg', 9, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(604, 'Minibuses, Dina y M.', '374EU', '$ 300.-', 'Calavera Minibus Curva Tipo Europa', '374EUGIF.gif', 9, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(605, 'Minibuses, Dina y Mercedes', '372A', '$ 200.-', 'Cuarto Punta Dina / Famsa 90-94 L-R', '372A.jpg', 9, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(606, 'Minibuses, Dina y Mercedes', '372C', '$ 200.-', 'Cuarto Punta Dina / Famsa 90-94 Cristal L-R', '372C.jpg', 9, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(607, 'Minibuses, Dina y Mercedes', '1147A', '$ 576.-', 'Cuarto Punta Freightliner L-R', '1147AI.jpg', 9, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(608, 'Minibuses, Dina y Mercedes', '1148A', '$ 457.-', 'Cuarto Punta International L-R', '1148AI.jpg', 9, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(609, 'Minibuses, Dina y Mercedes', '791A', '$ 240.-', 'Cuarto Punta Mercedes Benz L-R', '791AL.jpg', 9, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(611, 'Minibuses, Dina y Mercedes', '1146A', '$ 590.-', 'Cuarto Punta Kenworth L-R', '1146AI.jpg', 9, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(615, 'Calaveras Universales / De Foco Cambiable', '445A', '$ 105.-', 'Dina Grande B/Plastico Economica / 345A Mica $ 25.**', '445A.jpg', 11, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(625, 'Charros', '438A ', '$ 54.-', 'Charro Mediano / 339A Mica $ 16.-', '438A.jpg', 12, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(626, 'Charros', '439A ', '$ 79.**', 'Charro Grande / 339A Mica $ 16.-', '439A.jpg', 12, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(627, 'Direccionales', '478A ', '$ 90.-', 'Redonda Chica Aro ABS Crom.', '478A.jpg', 10, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(628, 'Direccionales', '479A ', '$ 145.-', 'Redonda Mediana Aro ABS Crom. / 360A Mica $ 21.-', '479A.jpg', 10, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(629, 'Direccionales', '480A ', '$ 106.-', 'Redonda de Ceja Aro ABS Cromada', '480A.jpg', 10, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(631, 'Direccionales', '483A', '$ 105.-', 'Cuadrada Chica Base Cromada', '483A.jpg', 10, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(632, 'Direccionales', '484A ', '$ 188.-', 'Cuadrada Grande Negra 1 Tornillo / 963A Mica $ 60.-', '484A.jpg', 10, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(633, 'Direccionales', '484C ', '$ 250.-', 'Cuadrada Grande Cromada 1 Tornillo / 963A Mica $ 60.-', '484C.jpg', 10, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(634, 'Direccionales', '485A ', '$ 178.-', 'Cuadrada Grande Negra 2 Tornillos', '485A.jpg', 10, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(635, 'Direccionales', '485C', '$ 230.-', 'Cuadrada Cromada 2 Tornillos', '485C.jpg', 10, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(640, 'Plafones Laterales', '400A ', '$ 30.-', 'Tipo Frijol / 300A Mica $ 16.-', '400A.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(641, 'Plafones Laterales', '401A ', '$ 34.--', 'T/Hella C/Tornillo / 301A Mica $ 14.50', '401A.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(642, 'Plafones Laterales', '404E ', '$ 54.**', 'T/Hella Presion C/Focos', '404o.jpg', 7, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(643, 'Plafones Laterales', '405A ', '$ 105.- ', 'Blindado Mex-Rey / 305A Mica $ 20.**', '405A.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(644, 'Plafones Laterales', '406A ', '$ 73.**', 'Blindado Piramide Gde. / 306A Mica $ 18.-', '406A.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(648, 'Plafones Laterales', '411A', '$ 27.--', 'Lamparita Mini Triangulo Picos / 311A Mica $ 14.--', '411A.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'azul.png', 'ninguno.png'),
(650, 'Plafones Laterales', '414A ', '$ 70.-', 'Carrocerias IMMSA / 314A Mica $ 30.-', '414A.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(651, 'Plafones Laterales', '415A', '$ 52.-', 'Lateral Famsa', '415A.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(653, 'Plafones Laterales', '416A ', '$ 68.**', 'Base Cromada Record / 316A Mica $ 30.**', '416A.jpg', 7, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(658, 'Plafones Laterales', '419A ', '$ 80.-', 'Capre Base Lamina / 319A Mica $ 18.-', '419A.jpg', 7, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(661, 'Plafones Laterales', '442A ', '$ 42.--', 'Burbujita 2 Soquets / 309A Mica $ 15.--', '442A.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(665, 'Plafones Laterales', '950-1', '$ 68.-', 'Plano de Lamina', '950-1.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(668, 'Plafones Luz Interior', '430A ', '$ 120.- ', 'Rect. Tipo Reatsa / 330A Mica $ 33.**', '430A.jpg', 8, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(669, 'Plafones Luz Interior', '431A ', '$ 72.-', 'Luz Interior Cromada', '431A.jpg', 8, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(673, 'Plafones de Embutir', '1000A', '$ 120.-', 'Rectangular Sellado C/Hule 12V', '1000A.jpg', 5, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(675, 'Plafones de Embutir', '436A', '$ 68.**', 'Ovalado Foco Cambiable C/Hule', '436A.jpg', 5, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(677, 'Plafones de Embutir', '436o', '$ 138.-', 'Plafon Ovalado Sellado de Hule C/Foco 12V', '436o IAPSA.jpg', 5, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(678, 'Plafones de Embutir', '423o', '$ 70.-', 'Redondo 2\" Sellado C/Hule 12V', '423oR.jpg', 5, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(680, 'Plafones de Embutir', '489o', '$ 75.**', 'Redondo 2 1/2\" Sellado C/Hule 12V', '489oA.jpg', 5, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(682, 'Plafones de Embutir', '466A ', '$ 100.-', 'Corrugado Cromado / 360A Mica $ 21.-', '466A.jpg', 5, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(684, 'Plafones de Embutir', '469A ', '$ 108.**', 'De Arillo Cromado / 370A Mica $ 20.**', '469A.jpg', 5, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(685, 'Plafones de Embutir', '471A', '$ 90.-', '4\" Foco Cambiable C/Hule', '471A.jpg', 5, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(687, 'Plafones de Embutir', '471A-1', '$ 120.-', '4\" Sellado P/Remachar 12V', '471A-1 Rojo.jpg', 5, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(688, 'Plafones de Embutir', '471o', '$ 120.-', '4\" Sellado C/Hule 12V', '471o Rojo.jpeg', 5, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(691, 'Plafones de Embutir', '471EU-1', '$ 85.-', '4\" Diamantado de Panal Foco Cambiable', '471EU-1.jpg', 5, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(693, 'Plafones de Embutir', '1001A', '$ 175.**', 'Autobus Marco Polo Embolvente', '1001A.jpg', 5, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(697, 'Plafones de Sobreponer', '449A', '$ 73.**', 'Pambazo Base Negra / 350A Mica $ 30.**', '449A.jpg', 6, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(698, 'Plafones de Sobrep.', '450A', '$ 88.**', 'Pambazo Base Crom RECORD / 350A Mica $ 30.**', '450A.jpg', 6, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(699, 'Plafones de Sobrep.', '456A ', '$ 90.- ', 'Arillo Grande / 356A Mica $ 25.-', '456A.jpg', 6, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(701, 'Plafones de Sobrep.', '458A', '$ 75.-', 'Bosh Miniatura', '458A.jpg', 6, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(702, 'Plafones de Sobrep.', '459A ', '$ 74.-', 'Bosh Grande  /  359A Mica   $ 29.-', '459A.jpg', 6, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(703, 'Plafones de Sobrep.', '460A ', '$ 88.**', 'De Lujo Delfin / 360A Mica $ 19.**', '460A.jpg', 6, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(704, 'Plafones de Sobrep.', '467A', '$ 49.-', 'Bosh Mini', '467A.jpg', 6, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(705, 'Plafones de LED - Laterales', '416LED', '$ 130.-', 'Tipo Americano KW 5 LED (Baja y Alta) 12V ', '416LED TECNO 2.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(706, 'Salp KW 18 LED Estrobo (Baja y Alta) 12V', '416LED-1', '$ 340.-', '416LED-2 Fijo (Baja y Alta) M/V (12/24V) ', '416LED-1 AMBAR.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(707, 'Plafones de LED', '461LED', '$ 120.-', 'Mini Triangulo 6 LED (Baja y Alta) 12V', '461LED.jpg', 1, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(708, 'Plafones de LED', '463LED', '$ 110.-', 'Mini KW 3 LED 12V', '463LED AMBAR.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(712, 'Plafones de LED', '465o-2', '$ 82.-', 'Mini Casita 3 LED M/V (12-24V)', '465o-2.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(713, 'Plafones de LED', '475A', '$ 153.-', 'KW 4 LED Fijo USA 12V', '475A.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(715, 'Plafones de LED', '476A', '$ 182.-', 'KW 4 LED Estrobo USA 12V', '476A.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(717, 'Plafones de LED', '477A', '$ 160.-', 'Toldo KW C/4 Leds Alternante USA - Azul/Rojo - Azul/Azul - Azul/Blanco -  Blanco/Blanco - Ambar/Ambar -', '477AGIF.gif', 1, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(718, 'Plafones de LED', '804', '$ 158.-', 'Volvo Tipo Flor 4 LED M/V (12/24V) ', '804 GIF.gif', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(726, 'Plafones de Leds', '8005A', '$ 240.--', 'Stop para Autobus Marco Polo C/8 Leds', '8005A.jpg', 2, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(727, 'Plafones de LED - De Sobreponer', '428LED', '$ 290.-', 'Luz Interior Puerta KW 12 LED Luz Blanca 12V', '428LED.jpg', 3, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(728, 'Plafones de LED', '430LED', '$ 272.-', 'Luz Interior Tipo REATSA 12 LED Luz Blanca M/V (12/24V)', '430LED.jpg', 3, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(729, 'Plafones de Leds', '436LED', '$ 102.--', 'Ovalado C/3 Leds Fijo P/Remachar', '436LED.jpg', 2, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(730, 'Plafones de Leds', '436LED-1', '$ 145.--', 'Ovalado C/3 Leds Estrobo P/Rem. Crom', '436LED-1.jpg', 2, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(731, 'Plafones de Leds', '8008A', '$ 280.--', 'Ovalado Hule C/24 Leds Fijo', '8008A.jpg', 2, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(732, 'Plafones de Leds', '8008A-1', '$ 280.--', 'Ovalado C/24 Leds Fijo P/Rem.', '8008A-1.jpg', 2, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(733, 'Plafones de Leds', '8017A', '$ 320.--', 'Ovalado C/24 Leds Estrobo P/Rem. Crom', '8017A.jpg', 2, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(734, 'Plafones de Leds', '8018A', '$ 320.--', 'Ovalado C/24 Leds Flecha P/Rem. Crom', '8018A.jpg', 2, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(739, 'Plafones de Leds', '934-5', '$ 240.--', '4\" Bosh C/8 Leds Giratorio', '934-5.jpg', 4, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(740, 'Plafones de Leds', '8000A', '$ 190.--', '4\" C/10 Leds Fijo C/Hule ', '8000A.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(741, 'Plafones de Leds', '8001A', '$ 370.--', '4\" C/19 Leds Flecha P/Rem.', '8001A.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(742, 'Plafones de Leds', '8002A', '$ 639.--', '4\" C/60 letras ALTO P/Rem. Crom.', '8002A.jpg', 4, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(743, 'Plafones de Leds', '8002H', '$ 559.--', '4\" C/49 Leds Asterisco Giratorio Crom.', '8002H.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(744, 'Plafones de Leds', '8002T', '$ 503.--', '4\" C/39 Leds Gira. y Estro. Comb. P/Rem.    Azul/Rojo o Ambar/Rojo', '8002T.jpg', 4, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(745, 'Plafones de Leds', '8003A-1', '$ 280.--', '4\" C/10 Leds Fijo Crom. P/Rem. \"Multivoltaje\"', '8003A.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(746, 'Plafones de Leds', '8004A', '$ 335.--', '4\" C/19 Leds Estrobo P/Rem.', '8004A.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(747, 'Plafones de Leds', '8004A-1', '$ 350.--', '4\" C/19 Leds Estrobo P/Rem. Crom.', '8004A-1.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(748, 'Plafones de Leds', '8006A', '$ 265.--', '4\" C/19 Leds Fijo P/Rem.', '8006A.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(749, 'Plafones de Leds', '8006A-1', '$ 270.--', '4\' C/19 Leds Fijo P/Rem. Crom.', '8006A-1.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(750, 'Plafones de Leds', '8009A', '$ 175.--', '4\" C/8 Leds Giratorio Lagrima P/Rem.', '8009A.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(751, 'Plafones de Leds', '8009A-1', '$ 175.--', '4\" C/8 Leds Estrobo Luna P/Rem.', '8009A-1.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(752, 'Plafones de Leds', '8010A', '$ 225.--', '4\" C/8 Leds Giratorio C/Hule ', '8010A.jpg', 4, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png');
INSERT INTO `productos` (`id_producto`, `nombre`, `serie`, `precio`, `descripcion`, `foto`, `categoria`, `imagen_blanco`, `imagen_amarillo`, `imagen_naranja`, `imagen_azul`, `imagen_verde`) VALUES
(753, 'Plafones de Leds', '8011A', '$ 639.--', '4\" C/56 Leds Flecha Estrobo P/Rem. Crom.', '8011A.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(754, 'Plafones de Leds', '8012A', '$ 240.--', '4\" C/7 Leds Tuneled Giratorio P/Rem.', '8012A.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(755, 'Plafones de Leds', '8012C', '$ 260.--', '4\" C/19 Leds Tuneled Giratorio P/Rem. Crom. ', '8012C.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(756, 'Zepelines', '262C ', '$ 85.-', 'Mercedes Benz completo', '262C-1.jpg', 14, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(758, 'Plafones Laterales', '474A ', '$ 40.-', 'Kenworth F/Cambiable RECORD', '474A.jpg', 7, 'blanco.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(759, 'Plafones Laterales', '474o', '$ 80.-', 'Kenworth Sellado 12V TECNOLAMP', '474OT.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(760, 'Plafones Laterales', '474E', '$ 55.- ', 'Kenworth Foco Cambiable Economico', '474E.jpg', 7, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(761, 'Zepelines', '880C ', '$ 135.-', 'Caseta Chevrolet Custom 92-98 / 880A MICA $ 50.-', '880C-4.jpg', 14, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(763, 'Zepelines', '491A', '$ 65.-', 'Zepelin Caseta Ford ', '491A1.jpg', 14, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(764, 'Zepelines', '492A ', '$ 65.-', 'Caseta Chevrolet / 392A Mica $ 18.-', '492A1.jpg', 14, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(768, 'Zepelines', '496A', '$ 95.-', 'Kenworth Chico', '496A.jpg', 14, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(769, 'Zepelines', '497A ', '$ 236.-', 'Kenworth Viejo / 397A Mica $ 42.-', '497A TECNO.jpg', 14, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(770, 'Zepelines', '498A', '$ 250.-', 'Kenworth Nuevo', '498.jpg', 14, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(771, 'Zepelines', '499A ', '$ 260.-', 'ABS Crom. REATSA / 395A Mica $ 49.50', '499A.jpg', 14, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(772, 'Zepelines', '1134A', '$ 115.-', 'Caseta de Famsa ', '1134A-1.jpg', 14, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(779, 'Plafones de Led', '8016A', '$ 370.--', '4\" C/19 Leds Concentrico P/Rem. Crom. R/AZ y R/AM ', '8016A.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(824, 'Plafones de Leds', '445o ', '$ 380.--', 'Calavera Jeep C/9 Leds Estrobo ', '445o.jpg', 2, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(825, 'Plafones de Leds', '445o-1', '$ 350.--', 'Calavera Jeep C/9 Leds Fija', '445o-1.jpg', 2, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(827, 'Plafones de Leds', '423LED', '$ 79.--', 'Plafon 2\' C/3 Leds C/Hule Multivoltaje (12/24V)', '423LED.jpg', 2, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(828, 'Plafones de Leds', '423LED-1', '$ 79.--', 'Plafon 2\' C/3 Leds P/Rem. Multivoltaje (12/24V)', '423LED-1.jpg', 2, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(829, 'Plafones de Leds', '489LED', '$ 82.--', 'Plafon 2 1/2\' C/3 Leds C/Hule', '489LED.jpg', 2, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(830, 'Plafones de Leds', '489LED-1', '$ 82.--', 'Plafon 2 1/2\' C/3 Leds P/Rem.', '489LED-1.jpg', 2, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(831, 'Plafones de Leds', '1067-1', '$ 289.--', 'Calavera Jeep C/16 Leds Fija', '1067-1.jpg', 2, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(833, 'Plafones de Leds', '1067-3', '$ 357.--', 'Calavera Jeep C/16 Leds Estrobo', '1067-1.jpg', 2, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(834, 'Plafones de Leds', '1038-2', '$ 315.--', 'Calavera Oval Panaled AYCO C/9 Leds Estrobo', '1038-2.jpg', 2, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(835, 'Plafones de Leds', '1070-1', '$ 445.--', 'Calavera Eliptica AYCO C/28 Leds Fijo', '1070-1.jpg', 2, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(836, 'Plafones de Leds', '1020A', '$ 350.--', 'Stop Para Autobus C/12 Leds', '1020A.jpg', 2, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(837, 'Plafones de Leds', '1030A', '$ 96.--', 'Lampara de Navegacion Autobus DINA', '1030A.jpg', 2, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(838, 'Plafones de Leds', '8365', '$ 380.--', 'Rectangular C/15 Leds C/Hule', '8365.jpg', 2, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(839, 'Plafones de Leds', '8007A', '$ 125.--', 'Bosh Mini C/6 Leds Fijo', '8007A.jpg', 4, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(840, 'Plafones de Leds', '8007A-1', '$ 137.--', 'Bosh Mini C/6 Leds Estrobo', '8007A-1.jpg', 4, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(841, 'Plafones de Leds', '1021-3', '$ 265.--', '3\' DINA C/7 Leds Fijo Tres Tornillos', '1021-3.jpg', 4, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(842, 'Plafones de Leds', '76888', '$ 240.--', '4\' C/39 Leds Gira. y Estrobo C/Hule', '76888.jpg', 4, 'ninguno.png', 'ninguno.png', 'naranja.png', 'azul.png', 'ninguno.png'),
(843, 'Plafones de Leds', '76889', '$ 240.--', '4\' C/39 Leds Gira. y Estrobo C/Hule', '76889.jpg', 4, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(844, 'Plafones de Leds', '8324CMR', '$ 870.--', 'Direccional Cuadrada Grande C/34 Leds 1 Tornillo Crom. Fija o Movimiento', '8324CMR.jpg', 4, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(849, 'CUBIERTAS DE TABLERO ', '1169', 'CONSULTAR PRECIO', 'Chevrolet PU 99 - 06', '1169 N.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(850, 'CON SU VENDEDOR ', '1170', 'CONSULTAR PRECIO', 'Chevrolet PU 97 - 98', '1170 N.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(851, 'CON SU VENDEDOR ', '1168', 'CONSULTAR PRECIO', 'Chevrolet PU 95 - 96', '1168 N.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(852, 'CON SU VENDEDOR ', '1158', 'CONSULTAR PRECIO', 'Chevrolet PU 92 - 94 ', '1158 NUEVO MOLDE.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(853, 'FRENTES DE TABLERO', '1192', 'CONSULTAR PRECIO', 'Chevrolet Cavalier 00 - 05', '1192.jpg', 69, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(854, 'CON SU VENDEDOR ', '1191', 'CONSULTAR PRECIO', 'Dodge Neon 95 - 99 Para Bolsa de Aire', '1191.jpg', 69, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(855, 'REJILLAS EXTERIORES', '1173', 'CONSULTAR PRECIO', 'Mustang 99 - 04', '1173.jpg', 70, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(856, 'CON SU VENDEDOR ', '1174', 'CONSULTAR PRECIO', 'Mustang 95 - 98', '1174.jpg', 70, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(857, 'CON SU VENDEDOR ', '1175', 'CONSULTAR PRECIO', 'Stratus 95 - 00', '1175.jpg', 70, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(861, 'Reflejantes', '501', '$ 28.-', 'C/Arillo Cromado Chico', '501.jpg', 13, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(862, 'Reflejantes', '503', '$ 30.-', 'C/Arillo Cromado Mediano', '503.jpg', 13, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(863, 'Reflejantes', '505', '$ 30.-', 'C/Arillo Cromado Grande', '505.jpg', 13, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(864, 'Reflejantes', '508', '$ 28.**', 'Trasero Sin Cromo', '508.jpg', 13, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(865, 'Reflejantes', '513', '$ 26.**', 'Rectangular Sin Cromo', '513.jpg', 13, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(870, 'Zepelines', '495A', '$ 85.-', 'Punta Zepelin / 395A Mica $ 55.-', '495A.jpg', 14, 'blanco.png', 'amarilo.png', 'naranja.png', 'azul.png', 'ninguno.png'),
(871, 'Toyota', '1105A', '$ 109.--', 'Cuarto Defensa PU 84-88 L-R', '1105A.jpg', 16, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(874, 'Micas Calaveras Camionetas', '613A', '$ 70.-', 'PU 81 - 87 Unilado Pieza', '613A MICA.jpg', 19, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(888, 'Micas Calaveras Camionetas', '290A', '$ 40.--', 'Ranger Estacas Combinada Unilado', '290C.jpg', 39, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(890, 'Calaveras Autos', '1120A', '$ 500.-', 'Tsuru III Sport Cristal / Negro *SOLO IZQUIERDA*', '756EU PAG.jpg', 46, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(891, 'Calaveras Autos', '767A', '$ 648.-', 'Tsuru II Guayin 88 - 91 L-R', '767A-1.jpg', 46, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(894, 'Cuartos Punta Autos', '890EU', '$ 117.-', 'Tsuru 92-93 Transparente SOLO \"RH\"', '890A.jpg', 50, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(895, 'Consulte Precio Con Vendedor', 'FIRN1200', 'Nissan', 'Intercalavera Sentra 96 - 00', 'intercalavera sentra.jpg', 56, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(897, 'Calaveras Camionetas', '39862-1', 'CONSULTAR PRECIO', 'Saveiro 10 - 16 Derecha', '39862-1.jpg', 57, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(899, 'Cuartos Fascia', '840EU', '$ 306.**', 'Golf/Jetta A3 Tipo Europa L-R', '840EUR.jpg', 59, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(900, 'Cuartos Fascia', '839EU', '$ 205.-', 'Pantalla Golf / Jetta A3 Tipo Europa L-R ', '839EUR.jpg', 59, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(902, 'Cuarto Punta Camionetas', '822A', '$ 209.-', 'Combi Ambar L-R / 821A Mica $ 30.-', '822A.jpg', 60, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(904, 'Plafones de LED', '1060-1', '$ 145.**', 'Lampara Luz de Placa 3 LED Con Bisera Luz Ambar, Azul, Blanca y Roja 12V', '1060-1.jpg', 3, 'blanco.png', 'amarilo.png', 'naranja.png', 'azul.png', 'ninguno.png'),
(910, 'Jinetes de Tapa de Caja', '1186', 'CONSULTAR PRECIO', 'Chevrolet PU 07 - 13', '1186.jpg', 75, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(911, 'CON SU VENDEDOR ', '1177', 'CONSULTAR PRECIO', 'Chevrolet PU 03 - 06', '1177.jpg', 75, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(912, 'CON SU VENDEDOR ', '1185', 'CONSULTAR PRECIO', 'Chevrolet PU 99 - 02', '1185.jpg', 75, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(913, 'Plafones de LED', '1137A', '$ 150.-', 'Eliptico Ayco 12 LED M/V (12/24V)', '1137A.jpg', 1, 'blanco.png', 'amarilo.png', 'naranja.png', 'azul.png', 'verde.png'),
(914, 'CON SU VENDEDOR ', '1171', 'CONSULTAR PRECIO', 'Chevrolet PU 89 - 91', '1171 N.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(917, 'CON SU VENDEDOR ', '1184', 'CONSULTAR PRECIO', 'Chevrolet PU 92 - 98', '1184.jpg', 75, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(927, 'Plafones de Leds', '1067-2', '$ 357.--', 'Calavera Jeep C/16 Leds Alternante', '1067-1.jpg', 2, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(932, 'Plafones de Leds', '8002T-1', '$ 503.--', '4\" C/39 Leds Estrobo P/Rem. Cromado', '8002T-1.jpg', 4, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(934, 'Plafones de LED', '1138A', '$ 115.-', 'Eliptico AYCO 4 LED 12V', '1138A ROJO.jpg', 1, 'blanco.png', 'amarilo.png', 'naranja.png', 'azul.png', 'verde.png'),
(935, 'Plafones de Leds', '8008C-1', '$ 300.--', 'Ovalado C/24 Leds Fijo P/Rem. Cromado', '8017A.jpg', 2, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(937, 'Zepelines', '499LED', '$ 460.-', 'ABS Crom. REATSA 9 LED *Baja - Alta* 12V', '499LED.jpg', 14, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(939, 'Plafones de LED', '1138A-1', '$ 130.-', 'Eliptico AYCO 4 LED M/V (12/24V)', '1138A-1 AMBAR.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(942, 'Plafones de LED', '1139 ', '$ 80.- ', 'Bisel Cromado Para Lateral Eliptico', '1139.jpg', 1, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(943, 'Plafones de LED', '8013A', '$ 107.-', 'Lampara Toldo KW 4 LED 12V', '8013A1.jpg', 1, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(944, 'Plafones de LED', '8013A-1', '$ 112.-', 'Lampara Toldo KW 4 LED 24V', '8013A-1.jpg', 1, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(945, 'Plafones de LED', '8013AZ', '$ 107.-', 'Lampara Toldo KW 4 LED Azul 12V', '8013AZ.jpg', 1, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'azul.png', 'ninguno.png'),
(946, 'Plafones de LED', '8013AZ-1', '$ 112.-', 'Lampara Toldo KW 4 LED Azul 24V', '8013AZ-1.jpg', 1, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'azul.png', 'ninguno.png'),
(947, 'Plafones de LED', '8013C', '$ 107.-', 'Lampara Toldo KW 4 LED Blanco 12V', '8013C.jpg', 1, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(948, 'Plafones de LED', '8013C-1', '$ 112.-', 'Lampara Toldo KW 4 LED Blanco 24V', '8013C-1.jpg', 1, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(949, 'Plafones de LED', '8013R', '$ 107.-', 'Lampara Toldo KW 4 LED 12V', '8013R.jpg', 1, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(950, 'Plafones de LED', '8013R-1', '$ 112.-', 'Lampara Toldo KW 4 LED 24V', '8013R-1.jpg', 1, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(951, 'Plafones de LED - De Embutir', '1071-3', '$ 985.-', 'Tipo JEEP 36 LED Aro Angel y Estrobo M/V (12/24V)', '1071-.jpg', 78, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(952, 'Plafones de LED', '445o ', '$ 470.-', 'Calavera Jeep 9 LED Estrobo 12V', '445o Estrobo.jpg', 78, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(953, 'Plafones de LED', '1067-1', '$ 383.-', 'Calavera Tipo Jeep 16 LED Fija 12V', '1067-1.jpg', 78, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(954, 'Plafones de LED', '1067-2', '$ 430.-', 'Calavera Tipo Jeep 16 LED Alternante 12V ', '1067-2.jpg', 78, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(955, 'Plafones de LED', '1067-3', '$ 430.-', 'Calavera Tipo Jeep 16 LED Estrobo 12V', '1067-3.jpg', 78, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(957, 'Plafones de LED', '1038-1', '$ 360.-', 'Calavera Ovalada Panaled AYCO 9 LED Fija M/V (12/24V)', '1038-1 ROJO.jpg', 78, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(958, 'Plafones de LED', '1038-2', '$ 391.-', 'Calavera Ovalada Panaled AYCO 9 LED Estrobo M/V (12/24V)', '1038-2 AMBAR.jpg', 78, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(960, 'Plafones de LED', '1030A', '$ 109.**', 'Lampara de Navegacion Autobus DINA Luz Ambar y Luz Roja 12 V', '1030A.jpg', 78, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(961, 'Plafones de LED', '1020A', '$ 433.**', 'Stop Para Autobus C/12 LED 12V ', '1020A.jpg', 78, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(962, 'Plafones de LED', '8005A', '$ 285.-', 'Stop Para Autobus 8 LED M/V (12/24V)', '8005A.jpg', 78, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(966, 'Plafones de LED - Redondos', '1068-1A', '$ 95.-', '1\" Grument 1 LED Ambar M/V (12/24V) TECNOLAMP', '1068-1A 2.jpg', 79, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(967, 'Plafones de LED', '1068-1R', '$ 95.-', '1\" Grument 1 LED Rojo M/V (12/24V) TECNOLAMP', '1068-1R TECNO.jpg', 79, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(969, 'Plafones de LED', '423LED', '$ 103.-', '2\" 3 LED Con Hule M/V (12/24V)', '423LED A.jpg', 79, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(970, 'Plafones de LED', '423LED-1', '$ 103.-', '2\" 3 Led P/Remachar M/V (12/24V)', '423LED-1.gif', 79, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(971, 'Plafones de LED', '489LED', '$ 106.-', '2.5\" 3 LED C/Hule M/V (12/24V)', '489LED A.jpg', 79, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(972, 'Plafones de LED', '489LED-1', '$ 106.-', '2.5\" 3 LED P/Remachar M/V (12/24V)', '489LED-1.gif', 79, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(973, 'Plafones de LED', '8007A', '$ 145.**', '3\" Bosh Mini 6 LED Fijo M/V (12/24V)', '8007A AAMBAR.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(974, 'Plafones de LED', '8007A-1', '$ 177.-', '3\" Bosh Mini 6 LED Estrobo M/V (12/24V)', '8007A-1 RROJO.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(975, '4\" 10 LED Fijo C/Hule 12V', '8000A', '$ 249.-', '8000RM/V 12/24V $ 300.-', '8000 GIF.gif', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(976, 'Plafones de LED', '8002A', '$ 776.**', '4\" 60 LED Letrero ALTO P/Remachar Cromado 12 V', '8002AGIF.gif', 79, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(977, 'Plafones de LED', '8002H', '$ 410.-', '4\" Ojo de Angel y 7 LED Estrobo 12V', '8002HGIF.gif', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(978, 'Plafones de LED', '8002T-1', '$ 578.-', '4\"  39 LED Estrobo P/Remachar Cromado 12 V', '8002T-1GIF.gif', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(979, 'Plafones de LED', '8003A', '$ 236.**', '4\" 10 LED Fijo P/Remachar 12V', '8003A AMBAR.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(980, 'Plafones de LED', '8003A-1', '$ 355.-', '4\"  10 LED Fijo P/Remachar Cromado  M/V (12/24V)', '8003A-1 BLANCO.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(981, 'Plafones de LED', '8004A', '$ 395.-', '4\" 19 LED Estrobo P/Remachar 12V', '8004A AMBAR.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(982, 'Plafones de LED', '8004A-1', '$ 395.-', '4\" 19 LED Estrobo P/Remachar Cromado 12V', '8004A-1 BLANCO.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(983, 'Plafones de LED', '8006A', '$ 320.**', '4\" 19 LED Fijo P/Remachar 12V', '8006A ROJO.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(984, 'Plafones de LED', '8006A-1', '$ 340.**', '4\" 19 LED Fijo P/Remachar Cromado 12V', '8006A-1 AMBAR.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(986, 'Plafones de LED', '8009A', '$ 210.-', '4\" 8 LED Giratorio Lagrima P/Remachar 12V', '8009A AMBAR.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(987, 'Plafones de LED', '8009A-1', '$ 210.*-', '4\" 8 LED Estrobo Luna P/Remachar 12V', '8009A-1 ROJO.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(988, 'Plafones de LED', '8010A', '$ 293.**', '4\" 10 LED Estrobo C/Hule 12V', '8010 GIF.gif', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(989, 'Plafones de LED', '8011A', '$ 779.**', '4\" 56 LED Flecha Estrobo P/Remachar Cromado 12V', '8011A AMBAR.jpg', 79, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(990, 'Plafones de LED', '8012A', '$ 280.**', '4\" 7 LED Giratorio P/Remachar 12V', '8012A BLANCO.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(991, 'Plafones de LED', '8012C', '$ 308.**', '4\" 7 LED Giratorio P/Remachar Cromado 12V', '8012C AMBAR.jpg', 79, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(993, 'Plafones de LED', '8020A', '$ 400.-', '4\" 12 LED Estrobo Cromado M/V (12/24V)', '8020A AMBAR.jpg', 79, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(994, 'Plafones de LED - Ovalados', '436LED', '$ 124.**', '6\" 3 LED Fijo Base Negra P/Remachar 12V', '436LED.jpg', 80, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(995, 'Plafones de LED', '436LED-1', '$ 180.-', '6\" 3 LED Estrobo Base Cromada Plastica P/Remachar 12V', '436LED-1.jpg', 80, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(996, 'Plafones de LED', '8008A', '$ 350.-', '6\" 24 LED Fijo C/Hule 12V', '8008A AMBAR.jpeg', 80, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(997, 'Plafones de LED', '8008A-1', '$ 350.-', '6\" 24 Led Fijo P/Remachar 12V', '8008A-1 BLANCO.jpg', 80, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(998, 'Plafones de LED', '8008C-1', '$ 375.-', '6\" 24 LED Fijo P/Remachar Cromado 12V', '8008C-1 ROJO.jpeg', 80, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(999, 'Plafones de LED', '8017A', '$ 395.-', '6\" 24 LED Estrobo P/Remachar Cromado 12V', '8017A AMBAR.jpeg', 80, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1000, 'Plafones de LED', '8008C-124V', '$ 365.**', '6\" 24 LED Fijo P/Remachar Cromado 24V', '8008C-1.jpg', 80, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1006, 'CON SU VENDEDOR ', '1179', 'CONSULTAR PRECIO', 'Tornado 04 - 11 Linea Anterior', '1179.jpg', 75, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1008, 'CON SU VENDEDOR ', '1176', 'CONSULTAR PRECIO', 'Dodge Ram 02 - 08', '1176.jpg', 75, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1009, 'CON SU VENDEDOR ', '1188', 'CONSULTAR PRECIO', 'Ford Lobo FX4 04 - 08', '1188.jpg', 75, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1010, 'CON SU VENDEDOR ', '1187', 'CONSULTAR PRECIO', 'Ford Lobo 04 - 08', '1187.jpg', 75, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1011, 'CON SU VENDEDOR ', '1178', 'CONSULTAR PRECIO', 'Ford Lobo 97 -  03', '1178.jpg', 75, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1015, 'Plafones de LED  / Planos', '044', '$ 370.-', 'Luz Plana 4\" 36 LED Ambar 12V     ', '044.jpg', 81, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1016, 'PLANOS TECNOLAMP', '045', '$ 370.-', 'Luz Plana 4\" 36 LED Blanco 12V', '045.jpg', 81, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1018, 'PLANOS TECNOLAMP', '046', '$ 370.-', 'Luz Plana 4\" 36 LED Rojo 12V', '046.jpg', 81, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1020, 'PLANOS FIRO', '064', '$ 593.-', 'Luz Plana 6\"  36 LED Ambar M/V 12/24V', '064.jpg', 81, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1021, 'PLANOS FIRO', '065', '$ 593.-', 'Luz Plana 6\" 36 LED Blanco M/V 12/24V', '065.jpg', 81, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1024, 'Plafones de LED', '8013V', '$ 107.-', 'Lampara Toldo KW 4 LED Blanco 24V', '8013V.jpg', 1, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'verde.png'),
(1025, 'Calaveras Camionetas', '663E', '$ 320.- ', 'Dodge PU 81 - 93 Filo Negro IAPSA L-R', '663EI.jpg', 27, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1026, 'Calaveras Camionetas', '756LED-1', '$ 1,045.-', 'Calavera Nissan Estacas 54 LED Con EStrobo M/V (12/24V) ', '756LED-1.jpg', 47, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1027, 'De Sobreponer', '756LED-1', '$ 1,045.-', 'Calavera Nissan Estacas 54 LED Estrobo M/V (12/24V)', '756LED-1.jpg', 3, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1029, 'PLANOS FIRO', '066', '$ 593.-', 'Luz Plana 6\" 36 LED Rojo M/V 12/24V ', '066.jpg', 81, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1032, 'PLANOS FIRO', '084', '$ 528.- ', 'Luz Plana 9\" 24 LED Ambar 12V', '084.jpg', 81, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1033, 'Luz Plana 9\" 24 LED Blanco 12V ', '085', '$ 528.-', '08524V A 24V  $ 494.-', '085.jpg', 81, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1034, 'PLANOS FIRO', '086', '$ 528.-', 'Luz Plana 9\" 24 LED Rojo 12V ', '086.jpg', 81, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1036, 'PLANOS TECNOLAMP', '014', '$ 119.-', 'Luz Plana 1\"x 4\" 3 LED Ambar M/V (12/24V) ', '014 TECNOLAMP.jpg', 81, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1037, 'PLANOS FIRO', '015', '$ 119.-', 'Luz Plana 1\"x 4\" 3 LED Blanco M/V (12/24V)', '015 TECNOLAMP.jpg', 81, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1038, 'PLANOS TECNOLAMP', '016', '$ 119.-', 'Luz Plana 1\"x 4\" 3 LED Rojo M/V (12/24V)', '016 TECNOLAMP.jpg', 81, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1053, 'KIT LED CONVERSION', 'EXCLUSIVE 70w', '$ 1,275.-', 'KIT EXCLUSIVE ILLUME Medidas H4, H13 y 9007/9004.', 'KIT ILLUME EXLUSIVE.jpg', 83, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1055, 'PLANOS FIRO', '024', '$ 292.-', 'Luz Plana 2.5\" 12 LED Ambar 12V', '024.jpg', 81, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1056, 'PLANOS FIRO', '025', '$ 292.-', 'Luz Plana 2.5\" 12 LED Blanco 12V ', '025.jpg', 81, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1057, 'PLANOS FIRO', '026', '$ 292.-', 'Luz Plana 2.5\" 12 LED Rojo 12V ', '026.jpg', 81, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1058, 'CON SU VENDEDOR ', '1164', 'CONSULTAR PRECIO', 'Dodge Neon 00 - 05', '1164 N.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1059, 'Cubiertas de Tablero', '1165', '$ 1,200.**', 'Dodge PT Cruiser 01 - 05', '1165 N.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1060, 'Cubiertas de Tablero', '1161', '$ 2,033.**', 'Dodge Ram 03 - 08 Completo', '1161 N.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1061, 'Cubiertas de Tablero ', '1160', '$ 1,513.**', 'Dodge Ram 98 - 02', '1160 N.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1062, 'CON SU VENDEDOR ', '1159', 'CONSULTAR PRECIO', 'Dodge Ram 94 - 97 ', '1159 N.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1064, 'CON SU VENDEDOR ', '1182', 'CONSULTAR PRECIO', 'Ford Lobo 97 - 03', '1182.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1067, 'CON SU VENDEDOR ', '1193', 'CONSULTAR PRECIO', 'Nissan Tsuru II 88 - 91', '1193.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1068, 'CON SU VENDEDOR ', '1162', 'CONSULTAR PRECIO', 'Dodge Ram 98 - 02 ', '1162.jpg', 69, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1069, 'CON SU VENDEDOR ', '1172', 'CONSULTAR PRECIO', 'Dodge Ram 94 - 97', '1172.jpg', 69, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1070, 'CON SU VENDEDOR ', '1183', 'CONSULTAR PRECIO', 'Ford Lobo 97 - 03', '1183.jpg', 69, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1071, 'CON SU VENDEDOR ', '1181', 'CONSULTAR PRECIO', 'Jaladeras Jetta A4 (Juego)', '1181.jpg', 69, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1074, 'PLANOS FIRO', '444', '$ 528.-', 'Luz Plana 4.8\" 30 LED Ambar 12V', '444.jpg', 81, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1077, 'PLANOS FIRO', '448 ', '$ 404.-', 'Luz Plana 4.8\" 30 LED Azul 12V', '448.jpg', 81, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'azul.png', 'ninguno.png'),
(1082, 'CON SU VENDEDOR ', '1180', 'CONSULTAR PRECIO', 'Nissan Tsuru I 84 - 87', '1180.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1087, 'Faros LED ', 'FEC60125', '', 'Faro 15 LED 36W Fijo y Estrobo 4\" x 3\" Blanco-Ambar 12V', 'FEC60125 AMBAR.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1088, 'Faros LED ', 'FEC60124', '$ 430.-', 'Faro 15 LED 36W Fijo y Estrobo 4\" x 3\" Blanco-Azul 12V', 'FEC60124.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1089, 'KIT ILLUME ', 'EXLUSIVE 70w', '$ 1,150.-', 'KIT EXCLUSIVE 70w ILLUME Medidas H1, H7, H11, 9005, 9006.', 'KIT ILLUME EXLUSIVE.jpg', 83, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1097, 'Faros de LED ', 'FEC60131', '$', 'Faro Trabajo 9 LED 27 W Redondo 4\" Luz Fija y Estrobo', 'CIRCLE27W.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1098, 'Faros de LED ', 'FEC60130', '$ ', 'Faro Trabajo 9 LED 27 W Cuadrado 4\" Luz Fija y Estrobo', 'SQUARE27W.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1100, 'Faros de LED ', 'FIC74943', '$ ', 'Unidad Grande Cuadrada 9 LED con Luz Diurna, Alta y Baja 55W', 'FIC74943.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1101, 'Faros de LED ', 'EVO-5016-1', '$ 260.**', 'Unidad Grande Cuadrada 15 LED Con Arillo Blanco 12V', 'EVO-5016-1 ENCENDIDO.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1102, 'Faros de LED ', 'FIC76939', '$ ', 'Unidad Grande Cuadrada 15 LED, Alta y Baja 35W', 'FIC76939GIF.gif', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1103, 'Faros de LED ', 'FIC76938', '$ ', 'Unidad Chica Cuadrada 15 LED, Alta y Baja 35W', 'FIC76938GIF.gif', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1104, 'Faros de LED ', 'FIC76963', '$ ', 'Unidad Chica Cuadrada 9 LED con Luz Diurna, Alta y Baja 55W', 'FIC76963.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1105, 'Faros de LED ', 'FIC76970', '$ ', 'Unidad Chica Cuadrada 15 LED, Luz Baja AMBAR y Luz Alta BLANCA', 'FIC76970GIF.gif', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1106, 'Faros de LED ', 'FIC76940', '$ ', 'Unidad Redonda 5.5\" 12 LED Alta y Baja ', 'FIC76940-1.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1107, 'Faros de LED ', 'REX600 ', '$ ', 'Faro Trabajo 6 LED 18 W Rectangular 6 x 1.5\"', '80003.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1108, 'Faros de LED ', '80002', '$ ', 'Faro 4 LED 3\" Redondo Pieza', '80002.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1112, 'Faros de LED ', 'FNC80009', '$ ', 'Faro 4 LED Luz y Estrobo con Ojo de Angel Azul 3\" Redondo Pieza', 'FNC80009.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1114, 'Faros de LED ', 'FNC80010', '$ ', 'Faro 4 LED Luz y Estrobo con Ojo de Angel Rojo 3\" Redondo Pieza', 'FNC80010.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1117, 'TORRETAS', 'FDC52938', '$ ', 'Torreta 24 LED 24 W 8 Pasos 6\" x 10\" x 3\" Ambar 12/24V', 'FDC52938.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1118, 'TORRETAS', 'FDC52939', '$ ', 'Torreta 20 LED 24 W 8 Pasos 6\" x 12\" x 3\" Ambar 12/24V', 'FDC52939.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1120, 'TORRETAS', 'FDC52942', '$ ', 'Torreta 24 LED 72 W 9 Pasos 9\" x 13\" x 2\" Cristal Luz Ambar 12/24V', 'FDC52942.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1121, 'TORRETAS', 'GTL1001', '$ ', 'Torreta 40 LED 3 Pasos, Con iman y ventosa, Estrobo 12/24V', 'GTL1001.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1122, 'TORRETAS', 'GTL1002', '$ ', 'Torreta 60 LED 3 Pasos, Con iman, Estrobo 12/24V', 'GTL1002.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1123, 'TORRETAS', 'GTL1003', '$ ', 'Torreta 80 LED 3 Pasos Para Fijar, Estrobo 12/24V', 'GTL1003.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1126, 'TORRETAS', 'GTL1004', '$ ', 'Torreta 30 LED, Para Fijar, Estrobo 12/24V ', 'GTL1004.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1132, 'Varios de LED', 'GTL1005', '$ ', 'Torreta 80 LED 3 Pasos, Con iman, Ventosa y Para Fijar, Estrobo 12/24V', 'GTL1005.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1133, 'Varios de LED', 'GTL1006', '$ ', 'Torreta 40 LED 3 Pasos, Con iman, Ventosa, Estrobo 12/24V', 'GTL1006.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1135, 'Plafones de LED', '8014A', '$ 85.-', 'Iriza 3 Led M/V (12/24V)', '8014A.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1136, 'CON SU VENDEDOR ', '1194', 'CONSULTAR PRECIO', 'Dodge Ram 09 - 15 ', '1194.jpg', 75, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1137, 'Plafones de LED', '8015A', '$ 128.-', 'AYCO 2 LED M/V (12/24V)', '8015A.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1138, 'Calaveras Camionetas', '756A', '$ 230.- ', 'Nissan Estacas 94 - 07 Sin Arnes Unilado', '756A1.jpg', 47, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1142, 'TORRETAS', 'GTL1008', '$ ', 'Torreta 14 LED, Con iman, Blanca Luz Ambar, Estrobo 12/24V', 'GTL1008.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1146, 'Micas Calaveras Autos', '674A', '$ 220.-', 'Volare 78 - 80 Roja SOLO \"LH\"', '674A HAE.jpg', 28, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1147, 'Calaveras Camionetas', '722A ', '$ 128.-', 'Datsun Estaquitas 68 - 93 Unilado / 721A Mica $ 45.-', '722AL.jpg', 47, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1148, 'Calaveras Camionetas', '938A', '$ 1,584.-', 'NP300 16 - 20 L-R', '938AI.jpg', 47, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1149, 'Calaveras Camionetas', '871C', '$ 390.-', 'D21 02-07 / D22 08-15 Cristal L-R', '871CI.jpg', 47, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1150, 'Calaveras Camionetas', '871A', '$ 390.-', 'D21 94-01 Nacional L-R ', '871AI.jpg', 47, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1153, 'Micas Cuartos', '755A', '$ 22.-', 'Mica Lateral Datsun PU 73-80 SOLO AMBAR', '933A.jpg', 52, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1154, 'CON SU VENDEDOR ', '1195', 'CONSULTAR PRECIO', 'S-10 98 - 04', '1195.jpg', 69, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1157, 'Plafones de LED', '1136A', '$ 230.-', 'Tortuga 15 LED Fijo (Baja y Alta) 12V', '1136A.jpg', 1, 'blanco.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1158, 'Plafones de LED', '1141A', '$ 240.-', '12 LED Fijo (Baja y Alta) Con Bisel Cromado 12V ', '1141A.1.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1159, 'Faros de LED ', 'FNC80011', '$ ', 'Faro 4 LED Luz y Estrobo con Ojo de Angel Blanco 3\" Redondo Pieza', 'FNC80011 (2).jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1160, 'CON SU VENDEDOR ', '1197', 'CONSULTAR PRECIO', 'Chevrolet Cavalier 95 - 99', '1197.jpg', 69, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1161, 'Faros de LED ', 'FNC80037', '$ ', 'Faro 4 LED 12 W Ojo de Angel Rojo y Estrobo Redondo 4\"', 'FNC80037 ROJO.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1162, 'Faros de LED ', 'FNC80038', '$ ', 'Faro 4 LED 12 W Ojo de Angel Azul y Estrobo Redondo 4\"', 'FNC80038 AZUL.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1163, 'Faros de LED ', 'FNC80039', '$ ', 'Faro 4 LED 12 W Ojo de Angel Blanco y Estrobo Redondo 4\"', 'FNC80038 BLANCO.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1164, 'FAROS DE LED ', 'FEC10011', '$ ', 'Faro Trabajo 2 LED 36 W 2000 LM Ovalado 2.5 x 4\"', 'FEC10011.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1166, 'Faros de LED ', 'FEC60069', '$ ', 'Faro Trabajo 2 LED 20 W Ovalado 2.5 x 4\" Ambar', 'FEC60069.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1171, 'Faros de LED ', 'CIRCLE27W', '$ ', 'Faro Trabajo 9 LED 27 W Redondo 4\" 12/24 V', 'CIRCLE27W.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1172, 'Faros de LED ', 'SQUARE27W', '$ ', 'Faro Trabajo 9 LED 27 W Cuadrado 4\" 12/24 V', 'FEC60093 JGO.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1184, 'BARRAS LED', 'CURVA5000', '$ ', 'Barra 96 LED 300 Watts 127 cms ( 50 Pulgadas ) M/V (12/24V)', 'CURVA5000.jpg', 85, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1185, 'BARRAS LED', 'SUPERECO520', '$ ', 'Barra 100 LED 240 Watts 132 cms (52 Pulgadas) M/V (12/24V)', 'SUPERECO520.jpg', 85, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1186, 'BARRAS LED', 'SUPERECO420', '$', 'Barra 80 LED 240 Watts 106.1 cms (42 Pulgadas) M/V (12/24V)', 'SUPERECO420.jpg', 85, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1187, 'BARRAS LED', 'SUPERECO310', '$ ', 'Barra 60 LED 180 Watts 80.7 cms (31 Pulgadas) M/V (12/24V)', 'SUPERECO310.jpg', 85, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1188, 'BARRAS LED', 'SUPERECO210', '$ ', 'Barra 40 LED 120 Watts 55.3 cms ( 21 Pulgadas ) M/V (12/24V)', 'SUPERECO210.jpg', 85, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1189, 'BARRAS LED', 'SUPERECO140', '$ ', 'Barra 24 LED 72 Watts 34.7 cms ( 14 Pulgadas ) M/V (12/24V)', 'SUPERECO140.123.jpg', 85, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1190, 'BARRAS LED', 'SUPERECO70', '$ ', 'Barra 12 LED 36 Watts 19.3 cms ( 7 Pulgadas ) M/V (12/24V)', 'SUPERECO70.jpg', 85, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1193, 'Plafones de LED', '1005A', '$ 275.-', 'Lateral Salp KW T660 9 LED (Baja y Alta) 12V', '1005AGIF.gif', 1, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1194, 'Plafones de LED', '1010-1', '$ 170.-', 'Tipo Camper 5 LED Fijo y Estrobo 12V', '1010-12.jpg', 1, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1195, 'FAROS DE LED', 'FEC60031', '$ ', 'Faro Trabajo 9 LED 27 W Redonda 4\" Ojo de Angel Rojo', 'FEC60031.jpg', 82, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1196, 'FAROS DE LED', 'FEC60028', '$ ', 'Faro Trabajo 9 LED 27 W Cuadrado 4\" Ojo de Angel Rojo', 'FEC60028.jpg', 82, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1197, 'FAROS DE LED', 'FEC60030', '$ ', 'Faro Trabajo 9 LED 27 W Redonda 4\" Ojo de Angel Azul', 'FEC60030.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'azul.png', 'ninguno.png'),
(1198, 'FAROS DE LED', 'FEC60027', '$ ', 'Faro Trabajo 9 LED 27 W Cuadrado 4\" Ojo de Angel Azul', 'FEC60027.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'azul.png', 'ninguno.png'),
(1199, 'FAROS DE LED', 'FEC60032', '$ ', 'Faro Trabajo 9 LED 27 W Redonda 4\" Ojo de Angel Blanco', 'FEC60032.jpg', 82, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1200, 'FAROS DE LED', 'FEC60029', '$ ', 'Faro Trabajo 9 LED 27 W Cuadrado 4\" Ojo de Angel Blanco', 'FEC60029.jpg', 82, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1201, 'FAROS DE LED', 'FEC10063', '$ ', 'Proyector Luz y Estrobo Lupa 15 W Redonda 2\"', 'FEC10063.jpg', 82, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1208, 'Zepelines', '495LED', '$ 247.**', 'Punta Zepelin 9 LED *Baja - Alta* 12V', '495A.jpg', 14, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1212, 'Direccionales LED', 'GPL0019', '$ ', 'Cuadrada Chica Cromada 14 LED Estrobo MV/V (12/24V)', 'GPL0019.jpg', 86, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1213, 'Direccionales LED', 'GPL1009', '$', 'Redonda 4\" Cromada 36 LED Estrobo M/V 12/24V', 'GPL1009.jpg', 86, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1214, 'Direccionales LED', 'GPL0016L', '$ ', 'Cuadrada Grande Cromada 24 LED y GEL con Estrobo M/V (12/24V) LH', 'GPL0016L.jpg', 86, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1215, 'Direccionales LED', 'GPL0016R', '$ ', 'Cuadrada Grande Cromada 24 LED y GEL con Estrobo M/V (12/24V) RH', 'GPL0016R.jpg', 86, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1225, 'PLANOS FIRO', '434', '$ 520.-', 'Luz Plana 4\" Ambar 30 LED Cuadrado 12V', '434.jpg', 81, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1226, 'PLANOS FIRO', '435', '$ 520.-', 'Luz Plana 4\" Blanco 30 LED Cuadrado 12V', '435.jpg', 81, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1227, 'Plafones de LED', '436', '$ 459.**', 'Luz Plana 4\" Rojo 30 LED Cuadrado 12V', '436.jpg', 81, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1229, 'CON SU VENDEDOR ', '1167', 'CONSULTAR PRECIO', 'Nissan Tsuru III 92 - 12', '1167.jpg', 68, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1231, 'Planos 3 Funciones', '3201-1', '$ ', 'Luz Plana 6\" Ovalado 32 LED Cuarto y Stop más Direcional M/V (12/24V)', '3201-1.jpg', 87, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1232, 'Planos 3 Funciones', '3202-1', '$ ', 'Luz Plana 6\" Ovalado 32 LED Cuarto y Stop más Reversa M/V (12/24V)', '3202-1.jpg', 87, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1233, 'Planos 3 Funciones', '2801-1', '$ ', 'Luz Plana 4\" Redondo 29 LED Cuarto y Stop más Direccional M/V (12/24V)', '2801-1.jpg', 87, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1234, 'Planos 3 Funciones', '2802-1', '$ ', 'Luz Plana 4\" Redondo 29 LED Cuarto y Stop más Reversa M/V (12/24V)', '2802-1.jpg', 87, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1235, 'Plafones de LED', '445o-1', '$ 430.-', 'Calavera Jeep 9 LED Fija 12V', '445o-1.jpg', 78, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1236, 'Luz Stop de Cabina', '586A', '$ 1,143.-', 'CHEVROLET PU / CHEYENNE 07 - 13 ', '586A-3.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1237, 'Luz Stop de Cabina', '584A', '$ 1,470.-', 'FORD LOBO 09 - 13', '584A-3.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1238, 'Luz Stop de Cabina', '007C', '$ 1,122.-', 'FORD LOBO 04 - 08 *COMPLETO*', '007C.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1239, 'Luz Stop de Cabina', '007', '$ 750.-', 'FORD LOBO 04 - 08 *MICA*', '007.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1240, 'Luz Stop de Cabina', '583A', '$ 1,470.-', 'FORD LOBO 98 - 03', '583A - 2.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1241, 'Luz Stop de Cabina', '582A', '$ 1,257.-', 'FORD RANGER 05 - 12 / COURIER 00 - 12', '582A-3.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1242, 'Luz Stop de Cabina', '581A', '$ 1,143.-', 'FORD RANGER 93 - 04', '581A-3.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1243, 'Luz Stop de Cabina', '585A', '$ 2,095.-', 'NISSAN NP300   2016 - 2022 con 6 LED 12V', '585A-3.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1252, 'Calaveras Universales / De LED', '1071-3', '$ 985.-', 'Tipo JEEP 36 LED Aro Angel y Estrobo M/V (12/24V)', '1071-.jpg', 89, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1253, 'Calaveras Universales / De LED', '1067-1', '$ 383.-', 'Calavera Tipo Jeep 16 LED Fija 12V', '1067-1.jpg', 89, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1255, 'Calaveras Universales / De LED', '1067-2', '$ 430.**', 'Calavera Tipo Jeep 16 LED Alternante 12V', '1067-2.jpg', 89, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1256, 'Calaveras Universales / De LED', '1067-3', '$ 430.**', 'Calavera Tipo Jeep 16 LED Estrobo 12V', '1067-3.jpg', 89, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1257, 'Calaveras Universales / De LED', '445o-1', '$ 430.- ', 'Calavera Jeep 9 LED Fija 12V', '445o-1.jpg', 89, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1258, 'Calaveras Universales / De LED', '445o', '$ 470.-', 'Calavera Jeep 9 LED Estrobo 12V', '445o Estrobo.jpg', 89, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1264, 'CALAVERAS CAMIONETAS', '258A', '$ 785.- ', 'NISSAN PU 85-86 Americana Filo Negro L-R', '258AI.jpg', 47, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1265, 'Plafones de LED', '474LED', '$ 226.-', 'Tipo KW 8 LED Alternante 12V', '474LED A1.jpg', 1, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1266, 'CON SU VENDEDOR ', '1190', 'CONSULTAR PRECIO', 'Ford PU 92 - 96', '1190.jpg', 69, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1267, 'Luz Stop de Cabina', '590A', '$ 1,122.- ', 'CHEVROLET TORNADO 04 - 11 con 10 LED 12V', '590A.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1268, 'Luz Stop de Cabina', '587A', '$ 1,020.-', 'DODGE RAM 09 - 20', '587A2.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1269, 'Luz Stop de Cabina', '589A', '$ 1,500.-', 'CHEVROLET CHEYENNE 99 - 06', '589A2.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1270, 'Luz Stop de Cabina', '602A', '$ 1,700.-', 'CHEVROLET CHEYENNE 14 - 22', '602A2.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1271, 'Luz Stop de Cabina', '603A', '$ 2,338.- ', 'FORD LOBO 14 - 22 con 10 LED', '603A.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1272, 'Plafones de LED', '1070-1', '$ 599.-', 'Eliptica AYCO 28 LED Fijo 12V', '1070-1 ROJO.jpg', 78, 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1273, 'CALAVERAS CAMIONETAS', '532A', '$ 210.-', 'Ford PU 92 - 96 RECORD L-R', '532I.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1274, 'Tapicerias de Puerta', '1198', 'CONSULTAR PRECIO', 'Juego de Tapicerias de Puerta Beetle 98-05 ', '1198.jpg', 67, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1275, 'Direccionales LED', 'GPL0020L', '$ ', 'Cuadrada Grande Cromada 54 LED con Estrobo M/V (12/24V) LH', 'GPL0020L.jpg', 86, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1276, 'Direccionales LED', 'GPL0020R', '$ ', 'Cuadrada Grande Cromada 54 LED con Estrobo M/V (12/24V) RH', 'GPL0020R.jpg', 86, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1277, 'Direccionales LED', 'GPL0075', '$ ', 'Rectangular 20 LED Con Estrobo 9x9x4 cms M/V (12/24V)', 'GPL0075.jpg', 86, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1278, 'Direccionales LED', 'FEC76240', '$  ', 'Cuadrada Grande Cromada 29 LED con Estrobo 12V LH', 'FEC76240.jpg', 86, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1279, 'Direccionales LED', 'FEC76239', '$ ', 'Cuadrada Grande Cromada 29 LED con Estrobo 12V RH', 'FEC76239.jpg', 86, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1280, 'KIT LED EVOLUM', 'MASTER', '$ 550.-', 'KIT MASTER EVOLUM Medidas H4, H13, 9004 Y 9007.', 'KIT MASTER EVOLUM.jpg', 83, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1281, 'KIT EVOLUM', 'MASTER ', '$ 500.- ', 'KIT MASTER EVOLUM Medidas H1, H3, H7, H11, 9005, 9006, 5202 Y 880', 'KIT MASTER EVOLUM.jpg', 83, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png');
INSERT INTO `productos` (`id_producto`, `nombre`, `serie`, `precio`, `descripcion`, `foto`, `categoria`, `imagen_blanco`, `imagen_amarillo`, `imagen_naranja`, `imagen_azul`, `imagen_verde`) VALUES
(1282, 'KIT EVOLUM', 'FLAME', '$ 600.- ', 'KIT FLAME EVOLUM Medidas H1, H3, H4,  H7, H11, H13, 9004, 9005, 9006, 9007 5202 Y 880', 'KIT EVOLUM FLAME.jpg', 83, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1283, 'KIT EVOLUM', 'BARRACUDA ', '$ 350.- ', 'KIT BARRACUDA EVOLUM Medidas H4, H13, 9004 Y 9007.', 'KIT EVOLUM BARRACUDA.jpg', 83, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1284, 'KIT EVOLUM', 'BARRACUDA ', '$ 300.- ', 'KIT BARRACUDA EVOLUM Medidas H1, H3, H7, H11, 9005, 9006, 5202 Y 880', 'KIT EVOLUM BARRACUDA.jpg', 83, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1285, 'KIT EVOLUM', 'MONSTER', '$ 500.- ', 'KIT MONSTER EVOLUM Medidas H4, H13, 9004 Y 9007.', 'KIT EVOLUM MONSTER.jpg', 83, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1286, 'KIT EVOLUM', 'MONSTER', '$ 450.- ', 'KIT MONSTER EVOLUM Medidas H1, H3, H7, H11, 9005, 9006, 5202 Y 880', 'KIT EVOLUM MONSTER.jpg', 83, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1287, 'Plafones de LED', '8365', '$ 500.-', 'PLAFON CUADRADO 15 LED CON HULE SELLADO 12V ', '8365.jpg', 78, 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1288, 'Plafones de LED', '04424V', '$ 593.- ', 'Luz Plana 4\" 30 LED Ambar M/V 12/24V', '044MV.jpg', 81, 'ninguno.png', 'amarilo.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1289, 'Plafones de LED', '04524V ', '$ 593.- ', 'Luz Plana 4\" 30 LED Blanco M/V 12/24V', '045MV.jpg', 81, 'blanco.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1290, 'Plafones de LED', '04624V', '$ 593.- ', 'Luz Plana 4\" 30 LED Rojo M/V 12/24V', '046MV.jpg', 81, 'ninguno.png', 'ninguno.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(1291, 'TORRETAS', 'WL431PRO', '$ ', 'Torreta 8 LED, Para Fijar, Blanca Luz Ambar, Estrobo 12/24V', 'WL431PRO.jpg', 84, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1292, 'Direccionales LED', 'GPL1000', '$ ', 'Cuadrada Chica Cromada 32 LED Estrobo 12/24V', 'GPL1000.jpg', 86, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1293, 'Luz Stop de Cabina', '595', '$ 1,150.- ', 'CHEVROLET CHEYENNE 92 - 98 ', '595-1.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1294, 'Luz Stop de Cabina', '596', '$ 1,500.- ', 'DODGE RAM 04 - 08', '596-1.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1295, 'Luz Stop de Cabina', '597', '$ 1,500.- ', 'TOYOTA TACOMA 05 - 15', '597-1.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1296, 'Luz Stop de Cabina', '598', '$ 1,870.- ', 'FORD RANGER 13 - 22', '598-1.jpg', 71, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1297, 'CALAVERAS CAMIONETAS', '530A', '$ 180.- ', 'Ford PU 80 - 86 RECORD L-R', '530EL.jpg', 37, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1298, 'CALAVERAS CAMIONETAS', '664A', '$ 340', 'Dodge PU 81 - 93 Filo Cromado RECORD L-R', '664ED.jpg', 27, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1299, 'CALAVERAS CAMIONETAS', '663A', '$ 180.-', 'Dodge PU 81 - 93 Filo Negro RECORD L-R', '663ED.jpg', 27, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(1300, 'Minibuses, Dina y Mercedes', '366C', '$ 160.- ', 'Bisel DINA / FAMSA 90-94 Cromado RECORD L-R', '366C-2.jpg', 9, 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_promociones`
--

CREATE TABLE `productos_promociones` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `serie` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `precio` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `imagen_blanco` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_amarillo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_naranja` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_azul` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen_verde` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_promociones`
--

INSERT INTO `productos_promociones` (`id_producto`, `nombre`, `serie`, `precio`, `descripcion`, `foto`, `imagen_blanco`, `imagen_amarillo`, `imagen_naranja`, `imagen_azul`, `imagen_verde`) VALUES
(43, 'Ford', '780A', '99.-', 'Cuarto Punta Ranger 93 - 97 L-R', '780AI.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(44, 'Ford', '781A', '176.-', 'Calavera Ranger 93 - 97 L-R', '781AI.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(48, 'Nissan', '872A', '180.-', 'Calavera Nissan 86 - 97 Americana Tipo Original L - R', '872AD.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(52, 'Ford', '979C ', '358.-', 'Calavera Lobo / F-150 04-09 Tres Colores L-R', '979CD.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(53, 'Ford', '992A', '336.-', 'Calavera Ranger 05 - 09 L - R', '992AD.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(57, 'Chevrolet', '615A', '209.-', 'Calavera Chevrolet PU 92 - 98 L-R', '615AD.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(59, 'Calaveras Universales', '445A', '38.-', 'Dina Grande B/Plastico Economica \"minimo 25 piezas\"', '445A.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(60, 'Zepelines', '474o', '30.-', 'Lampara Toldo KW Sellado Tecnolamp  \'\'Minimo 25 Piezas\'\'', '474OT.jpg', 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(61, 'Plafones de Embutir', '423o', '21.-', '2\'\' Sellado C/Hule 12V TECNOLAMP \'\'Minimo 25 Piezas\'\'', '423oR.jpg', 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(62, 'Plafones de Embutir', '489o', '26.-', '2 1/2\'\' Sellado C/Hule 12V TECNOLAMP  \'\'Minimo 25 Piezas\'\'', '489oR.jpg', 'ninguno.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(63, 'Plafones de Embutir', '471o', '42.-', '4\" Sellado C/Hule 12V TECNOLAMP \'\'Minimo 25 Piezas\'\'', '471o Rojo.jpeg', 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(68, 'Nissan', '756LED-1', '410.-', 'Calavera Nissan Estacas 54 LED con Estrobo M/V (12/24V)', '756LED-1.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(82, 'Calaveras Led Universales', '1067-1', '140.-', 'Calavera Tipo Jeep 16 LED \"Fija\" 12V', '1067-1.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(83, 'Calaveras Led Universales', '1067-2', '155.-', 'Calavera Tipo Jeep 16 Led \"Movimiento\" 12V', '1067-2.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(84, 'Calaveras Led Universales', '1067-3', '160.-', 'Calavera Tipo Jeep 16 Led \"Estrobo\" 12V', '1067-3.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(91, 'FAROS LED', 'S48W', '77.59', 'Faro 16 LED 48W CUADRADO 4\" M/V (12/24V)', 'S48W.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(124, 'Plafones ', '471A-1', '42.-', '4\" Sellado P/Remachar 12V TECNOLAMP \'\'Minimo 25 Piezas\'\'', '471A-1 Rojo.jpg', 'blanco.png', 'amarilo.png', 'naranja.png', 'ninguno.png', 'ninguno.png'),
(131, 'Calaveras LED Universales', '1071-3', '390.- ', 'Tipo JEEP 36 LED Aro Angel y Estrobo M/V (12/24V)', '1071-.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(132, 'FAROS LED', 'GFP0038', '129.32', 'Unidad Chica Cuadrada 15 LED con soporte M/V (12/24V)', 'GFP0038 NUEVA.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(134, 'FAROS LED', 'GFP0039', '129.32', 'Unidad Grande Cuadrada 15 LED, Alta y Baja M/V (12/24V)', 'EVO-5016 NUEVA.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(136, 'DIRECCIONALES LED', 'FEC76239', '295.-', 'Direccional 29 LED Cuadrada Grande 1 Tornillo Cromada Estrobo Derecha 12V', 'FEC76239.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(137, 'DIRECCIONALES LED', 'FEC76240', '295.-', 'Direccional 29 LED Cuadrada Grande 1 Tornillo Cromada Estrobo Izquierda 12V', 'FEC76240.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(138, 'FAROS LED', 'EVO-5016-1', '199.14', 'Unidad Grande Cuadrada 15 LED con Arillo Blanco M/V (12/24V)', 'EVO-5016-1 NUEVA.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(140, 'Calaveras Camionetas', '1144A', '666.-', 'Chev PU / Cheyenne / Silverado 07-13 L-R', '1144AI.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(141, 'Luz Stop de Cabina', '581A', '499.-', 'FORD RANGER 93 - 04', '581A-3.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(142, 'Luz Stop de Cabina', '582A', '499.-', 'FORD RANGER 05 - 12 / COURIER 00 - 12', '582A-3.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(143, 'Luz Stop de Cabina', '583A', '582.-', 'FORD LOBO 98 - 03', '583A - 2.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(144, 'Luz Stop de Cabina', '584A', '582.-', 'FORD LOBO 09 - 13', '584A-3.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(145, 'Luz Stop de Cabina', '585A', '830.-', 'NISSAN NP300 16 - 20 Con 6 LED 12V', '585A-3.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(146, 'Luz Stop de Cabina', '586A', '435.-', 'CHEVROLET PU / CHEYENNE 07 - 13', '586A-3.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(147, 'CALAVERAS CAMIONETAS', '938A', '610.-', 'NISSAN NP300   16 - 20 L - R', '938AD.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(148, 'Luz Stop de Cabina', '590A', '445.-', 'CHEVROLET TORNADO 04 - 11 con 10 LED', '590A.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(149, 'Luz Stop de Cabina', '587A', '445.-', 'DODGE RAM 09 - 20', '587A2.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(150, 'Luz Stop de Cabina', '589A', '595.-', 'CHEVROLET CHEYENNE 99 - 06', '589A2.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(151, 'Luz Stop de Cabina', '602A', '740.-', 'CHEVROLET CHEYENNE 14 - 22', '602A2.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(152, 'Luz Stop de Cabina', '603A', '920.-', 'FORD LOBO 14 - 22 con 10 LED 12V', '603A.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(154, 'Luz Stop de Cabina', '007 ', '295.-', 'FORD LOBO 04 - 08 *MICA*', '007.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(155, 'Luz Stop de Cabina', '007C', '445.-', 'FORD LOBO 04 - 08 ', '007C.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(156, 'Luz Stop de Cabina', '598', '715.- ', 'FORD RANGER 13 - 22', '598-1.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(157, 'Luz Stop de Cabina', '597', '575.- ', 'TOYOTA TACOMA  05 - 15', '597-1.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(158, 'Luz Stop de Cabina', '596', '575.- ', 'DODGE RAM 04 - 08', '596-1.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png'),
(159, 'Luz Stop de Cabina', '595', '435.-', 'CHEVROLET CHEYENNE 92 - 98', '595-1.jpg', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png', 'ninguno.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id_usuario` int(11) NOT NULL,
  `user` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`id_usuario`, `user`, `pass`) VALUES
(1, 'clientes', 'abril2024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_categorias`
--

CREATE TABLE `sub_categorias` (
  `id_subcategoria` int(11) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sub_categorias`
--

INSERT INTO `sub_categorias` (`id_subcategoria`, `nombre`, `categoria`) VALUES
(1, 'Laterales', 5),
(3, 'De Sobreponer', 5),
(5, 'Plafones de Embutir', 6),
(6, 'Plafones de Sobreponer', 7),
(7, 'Plafones Laterales', 8),
(8, 'Plafones de Luz Interior', 9),
(9, 'Minibus, Dina y Mercedes', 10),
(10, 'Direccionales', 11),
(11, 'De Foco Cambiable', 12),
(12, 'Charros', 15),
(13, 'Reflejantes', 16),
(14, 'Zepelines', 17),
(15, 'Mazda', 18),
(17, 'Calaveras Autos', 19),
(18, 'Calaveras Camionetas', 19),
(19, 'Micas Calaveras Camionetas', 19),
(21, 'Cuartos Frontales Camionetas', 19),
(22, 'Cuartos Punta Autos', 19),
(23, 'Cuartos Punta Camionetas', 19),
(24, 'Cuartos Laterales', 19),
(25, 'Varios', 19),
(26, 'Calaveras Autos', 20),
(27, 'Calaveras Camionetas', 20),
(28, 'Micas Calaveras Autos', 20),
(29, 'Micas Calaveras Camionetas', 20),
(30, 'Cuartos Fascia/Frontales Autos ', 20),
(32, 'Cuartos Punta Camionetas', 20),
(33, 'Laterales', 20),
(34, 'Biseles', 20),
(37, 'Calaveras Camionetas', 21),
(38, 'Micas Calaveras Autos', 21),
(39, 'Micas Calaveras Camionetas', 21),
(40, 'Cuartos Frontales Autos - Camionetas', 21),
(41, 'Cuartos Punta Autos', 21),
(42, 'Cuartos Punta Camionetas', 21),
(44, 'Laterales', 21),
(45, 'Varios', 21),
(46, 'Calaveras Autos', 22),
(47, 'Calaveras Camionetas', 22),
(48, 'Micas Calaveras Camionetas', 22),
(49, 'Cuartos Defensa/Frontales Autos', 22),
(50, 'Cuartos Punta Autos', 22),
(51, 'Cuartos Punta Camionetas', 22),
(52, 'Micas Cuartos', 22),
(53, 'Laterales', 22),
(54, 'Luz Interior', 22),
(56, 'Varios', 22),
(57, 'Calaveras Autos', 23),
(58, 'Micas Calaveras Autos', 23),
(59, 'Cuartos Defensa/Fascia Autos', 23),
(60, 'Cuartos Punta Autos', 23),
(61, 'Micas Cuartos', 23),
(62, 'Laterales', 23),
(63, 'Biseles', 23),
(64, 'Espejos', 23),
(65, 'Varios', 23),
(67, 'Tapicerias de Puerta', 24),
(68, 'Cubiertas de Tablero', 25),
(69, 'Frentes de Tablero', 26),
(70, 'Rejillas Exteriores', 27),
(71, 'Luz Stop de Cabina', 28),
(72, 'Chevrolet', 29),
(73, 'Dodge', 29),
(74, 'Ford', 29),
(75, 'Jinetes de Tapa de Caja', 30),
(78, 'De Embutir', 5),
(79, 'Redondos', 5),
(80, 'Ovalados', 5),
(81, 'Planos ', 5),
(82, 'Faros de LED ', 5),
(83, 'LED conversion kit', 5),
(84, 'Varios de LED y Torretas', 5),
(85, 'Barras LED', 5),
(86, 'Direccionales LED', 5),
(87, 'Planos 3 Funciones', 5),
(89, 'De LED', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `user`, `pass`) VALUES
(1, 'admin', 'autgargdl');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `productos_promociones`
--
ALTER TABLE `productos_promociones`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `sub_categorias`
--
ALTER TABLE `sub_categorias`
  ADD PRIMARY KEY (`id_subcategoria`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `mes`
--
ALTER TABLE `mes`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1301;

--
-- AUTO_INCREMENT de la tabla `productos_promociones`
--
ALTER TABLE `productos_promociones`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `sub_categorias`
--
ALTER TABLE `sub_categorias`
  MODIFY `id_subcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
