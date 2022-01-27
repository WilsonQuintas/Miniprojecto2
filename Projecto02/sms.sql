-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 15-Jan-2022 às 05:28
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sms`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `ID` int(11) NOT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `mensagem` mediumtext DEFAULT NULL,
  `data_msg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `chat`
--

INSERT INTO `chat` (`ID`, `nome`, `mensagem`, `data_msg`) VALUES
(28, 'Teumiro', 'ereere', '2022-01-10 10:04:19'),
(29, 'Kim', 'eu', '2022-01-10 10:04:39'),
(30, 'Kim', 'sd', '2022-01-10 10:04:44'),
(31, 'Joelson', 'sds', '2022-01-10 10:04:51'),
(32, 'silvio', 'swe', '2022-01-10 10:05:08'),
(33, 'Joelson', 'eere', '2022-01-10 10:05:37'),
(34, 'Stona', 'rse', '2022-01-10 10:05:44'),
(35, 'Stonai', 'rere', '2022-01-10 11:07:00'),
(36, 'Teumiro', 'dsdfs', '2022-01-10 11:07:30'),
(37, 'Stonai', 'fsd', '2022-01-11 18:20:25'),
(38, 'Joelson', 'iuiu', '2022-01-12 04:05:53'),
(39, 'Stonai', 'kjkj', '2022-01-12 04:20:07'),
(40, 'Teumiro', 'fdsfsd', '2022-01-12 04:39:30'),
(41, 'Teumiro', 'iiiu', '2022-01-12 06:13:43'),
(42, 'silvio', 'rererere', '2022-01-13 11:03:25'),
(43, 'Teumiro', '<<sasasa', '2022-01-14 05:15:51');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `tel` int(20) NOT NULL,
  `idade` int(5) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`ID`, `nome`, `senha`, `tel`, `idade`, `genero`, `email`) VALUES
(1, 'Stona', 'pc', 995343423, 20, 'M', 'hhfgdgj'),
(23, 'Joelson', '12', 995343423, 23, 'M', '+244930894353'),
(24, '', '', 0, 0, '', ''),
(25, '', '', 0, 0, '', ''),
(26, '', '', 0, 0, '', ''),
(27, 'Jussy', 'rr', 995343423, 22, 'M', '927048698'),
(28, '', '', 0, 0, '', ''),
(29, '', '', 0, 0, '', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `chat`
--
ALTER TABLE `chat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
