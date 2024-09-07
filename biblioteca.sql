-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-05-2021 a las 13:46:05
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca_mvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autor`
--

CREATE TABLE `autor` (
  `id` int(11) NOT NULL,
  `autor` varchar(150) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autor`
--

INSERT INTO `autor` (`id`, `autor`, `imagem`, `estado`) VALUES
(1, 'José Antonio Santos', 'logo.png', 1),
(2, 'William Stallings', '20210514132528.jpg', 1),
(3, 'Paulo Henrique de Souza', 'logo.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracao` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracao` (`id`, `nome`, `telefone`, `endereço`, `email`, `foto`) VALUES
(1, 'Augusto Santos', '925491523', 'Jacarei - São Paulo', 'augustoprada@gmail.com', 'logo.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_permisos`
--

CREATE TABLE `permissoes` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_permisao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_permisos`
--

INSERT INTO `detalhe_permisao` (`id`, `id_usuario`, `id_permisao`) VALUES
(5, 2, 1),
(6, 2, 2),
(7, 2, 3),
(8, 2, 5),
(9, 2, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `id` int(11) NOT NULL,
  `editorial` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`id`, `editorial`, `estado`) VALUES
(1, 'Ninguna', 1),
(2, 'Toribio anyarin', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudante` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `profissao` varchar(255) NOT NULL,
  `endereco` text NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudante` (`id`, `codigo`, `dni`, `nome`, `profissao`, `endereco`, `telefone`, `estado`) VALUES
(1, '12345', '74589745', 'Augusto Prada', 'Analista de sistemas', 'Jacarei', '925491523', 1),
(2, '6789', '9779879', 'Ana Beatriz Gomes Prada', 'Analista de Banco de Dados', 'São José dos Campos', '987978456', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `livro` (
  `id` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `quantidade` int(11) NOT NULL,
  `id_autor` int(11) NOT NULL,
  `id_editorial` int(11) NOT NULL,
  `ano_edicao` date NOT NULL,
  `id_materia` int(11) NOT NULL,
  `num_pagina` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `livro` (`id`, `titulo`, `cantidad`, `id_autor`, `id_editorial`, `anio_edicion`, `id_materia`, `num_pagina`, `descripcion`, `imagen`, `estado`) VALUES
(1, 'Hacking Ético: Ferramentas e Técnicas para o Teste de Penetração', 50, 1, 1, '2021-05-08', 1, 1335, 'si', 'logo.png', 1),
(2, 'Segurança da Informação e Cibersegurança', 69, 1, 1, '2021-05-08', 2, 1478, 'Domina javascript', '20210514132615.jpg', 1),
(3, 'Análise e Resposta a Incidentes de Segurança: Um Guia Prático', 23, 1, 1, '2021-05-08', 1, 258, 'anaconda', 'logo.png', 1),
(4, 'Criptografia e Segurança de Redes', 23, 1, 1, '2021-05-14', 1, 569, '', '20210514132757.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int(11) NOT NULL,
  `materia` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `materia`, `estado`) VALUES
(1, 'Cybersegurança', 1),
(2, 'Engenharia de Software', 1),
(3, 'Dados', 1),
(4, 'Segurança da Informação', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisoes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisoes` (`id`, `nome`, `tipo`) VALUES
(1, 'Livros', 1),
(2, 'Autor', 2),
(3, 'Editorial', 3),
(4, 'Usuarios', 4),
(5, 'Configuracao', 5),
(6, 'Estudantes', 6),
(7, 'Materias', 7),
(8, 'Relatórios', 8),
(9, 'Emprestimos', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamo`
--

CREATE TABLE `emprestimos` (
  `id` int(11) NOT NULL,
  `id_estudante` int(11) NOT NULL,
  `id_livro` int(11) NOT NULL,
  `ficha_emprestimo` date NOT NULL,
  `ficha_devolucao` date NOT NULL,
  `quantidade` int(11) NOT NULL,
  `observacao` text NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prestamo`
--

INSERT INTO `emprestimos` (`id`, `id_estudante`, `id_livro`, `ficha_emprestimo`, `ficha_devolucao`, `quantidade`, `observacao`, `estado`) VALUES
(1, 1, 1, '2021-05-11', '2021-05-11', 5, '', 0),
(2, 1, 2, '2021-05-11', '2021-05-11', 15, '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `dica` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nome`, `dica`, `estado`) VALUES
(1, 'admin', 'Angel sifuentes', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1),
(2, 'angel', 'Vida Informatico', '519ba91a5a5b4afb9dc66f8805ce8c442b6576316c19c6896af2fa9bda6aff71', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracao`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_permisos`
--
ALTER TABLE `detalhe_permisoes` 
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_permisao` (`id_permisao`);

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_autor` (`id_autor`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_editorial` (`id_editorial`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisoes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `prestamo`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudante` (`id_estudante`),
  ADD KEY `id_livro` (`id_livro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autor`
--
ALTER TABLE `autor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle_permisos`
--
ALTER TABLE `detalhe_permisoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `livro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `prestamo`
--
ALTER TABLE `emprestimos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_permisos`
--
ALTER TABLE `detalhe_permisoes`
  ADD CONSTRAINT `detalle_permisos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `detalle_permisos_ibfk_2` FOREIGN KEY (`id_permisao`) REFERENCES `permisoes` (`id`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`id_autor`) REFERENCES `autor` (`id`),
  ADD CONSTRAINT `livro_ibfk_2` FOREIGN KEY (`id_editorial`) REFERENCES `editorial` (`id`),
  ADD CONSTRAINT `livro_ibfk_3` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`);

--
-- Filtros para la tabla `prestamo`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `prestamo_ibfk_1` FOREIGN KEY (`id_estudante`) REFERENCES `estudante` (`id`),
  ADD CONSTRAINT `prestamo_ibfk_2` FOREIGN KEY (`id_livro`) REFERENCES `livro` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
