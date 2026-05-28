-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28/05/2026 às 03:13
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtos`
--
CREATE DATABASE IF NOT EXISTS `produtos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `produtos`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `categoria`, `descricao`) VALUES
(1, 'Eletrônicos', 'Produtos tecnológicos'),
(2, 'Livros', 'Descrição do Livro'),
(3, 'Brinquedos', 'Descrição do Brinquedo'),
(4, 'Móveis', 'Descrição do Móveis'),
(5, 'Esportes', 'Descrição do Esporte');

-- --------------------------------------------------------

--
-- Estrutura para tabela `loja`
--

CREATE TABLE `loja` (
  `idproduto` int(11) NOT NULL,
  `idcategoria` int(11) DEFAULT NULL,
  `nomeproduto` varchar(100) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `qtde` int(11) NOT NULL,
  `datacad` date DEFAULT NULL,
  `ativo` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `loja`
--

INSERT INTO `loja` (`idproduto`, `idcategoria`, `nomeproduto`, `preco`, `qtde`, `datacad`, `ativo`) VALUES
(2, 1, 'Mouse eletrônico', 59.90, 27, '2026-05-27', b'1'),
(3, 5, 'Bola de Basquete', 99.90, 18, '2026-06-27', b'1'),
(4, 4, 'Sofá', 4999.90, 67, '2026-05-27', b'1'),
(5, 2, 'O Príncipe', 129.90, 9, '2026-05-27', b'1'),
(6, 3, 'Carrinho de Controle remoto', 79.90, 12, '2026-05-27', b'1'),
(7, 2, 'Harry Potter', 79.90, 16, '2026-05-27', b'1'),
(8, 1, 'Notebook', 1699.90, 31, '2026-05-27', b'1'),
(9, 3, 'Quebra-Cabeça', 89.90, 28, '2026-05-27', b'1'),
(10, 4, 'Mesa', 599.90, 11, '2026-05-27', b'1'),
(11, 3, 'Boneco Batman', 129.90, 6, '2026-05-27', b'1');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices de tabela `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `loja`
--
ALTER TABLE `loja`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `loja`
--
ALTER TABLE `loja`
  ADD CONSTRAINT `loja_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
