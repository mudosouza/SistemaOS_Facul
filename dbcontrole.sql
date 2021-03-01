-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Maio-2020 às 14:04
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbcontrole`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbclientes`
--

CREATE TABLE `tbclientes` (
  `idcli` int(11) NOT NULL,
  `nomecli` varchar(50) CHARACTER SET utf8 NOT NULL,
  `endcli` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `fonecli` varchar(50) CHARACTER SET utf8 NOT NULL,
  `emailcli` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbclientes`
--

INSERT INTO `tbclientes` (`idcli`, `nomecli`, `endcli`, `fonecli`, `emailcli`) VALUES
(1, 'fernando souza', 'Rua um dosi3', '99999', '14@Gmail.com'),
(2, 'fagundes', 'Rua um dosi3', '995564', 'd@Gmail.com'),
(3, 'jose de souza', 'Rua pedro ', '142', '14dd@Gmail.com'),
(4, 'felipe jose ', 'Rua um dosi3', '9999', '14dd@Gmail.com'),
(6, 'felipe', 'Rua um dosi3', '56.655', '14dd@Gmail.com'),
(8, 'jose fernando', '122ddd', '545', '21126'),
(9, 'maria do espririto santo', 'rua pedro alfredo ', '96365', 'maria@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbos`
--

CREATE TABLE `tbos` (
  `os` int(11) NOT NULL,
  `data_os` timestamp NOT NULL DEFAULT current_timestamp(),
  `situacao` varchar(20) CHARACTER SET utf8 NOT NULL,
  `tipo` varchar(15) CHARACTER SET utf8 NOT NULL,
  `equipamento` varchar(150) CHARACTER SET utf8 NOT NULL,
  `defeito` varchar(150) CHARACTER SET utf8 NOT NULL,
  `serviço` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `tacnico` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `idcli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbos`
--

INSERT INTO `tbos` (`os`, `data_os`, `situacao`, `tipo`, `equipamento`, `defeito`, `serviço`, `tacnico`, `valor`, `idcli`) VALUES
(2, '2020-05-24 13:05:44', 'Entregue Ok', 'OS', 'desktop', 'tela azul', 'foi feita uma formatação ', 'João', '160.00', 6),
(3, '2020-05-24 14:04:05', 'Orçamento REPROVADO', 'Orçamento', 'notebook ', 'se desliga sosinho', 'benzeu e voltou a funcionar ', 'Fernando', '630.00', 8),
(4, '2020-05-24 19:39:08', 'Aguardando Peças', 'OS', 'desktop ', 'não liga ', 'troca de memoria ', 'Fernado', '150.00', 4),
(5, '2020-05-24 19:43:06', 'Aguardando Aprovação', 'OS', 'teste', 'ta ruim', 'ainda nao foi feito ', 'Fernado', '30.00', 1),
(6, '2020-05-25 12:26:43', 'Na Bancada ', 'Orçamento', 'computade de mesa ', 'HD ruim ', 'foi feita uma troca de HD', 'Fernando', '390.00', 8),
(7, '2020-05-26 09:40:45', 'Na Bancada ', 'Orçamento', 'notebook', 'não liga', 'troca de fonte', 'zé', '95.30', 1),
(8, '2020-05-26 09:41:02', 'Na Bancada ', 'Orçamento', 'notebook', 'não liga', 'troca de fonte', 'zé', '95.30', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbusuarios`
--

CREATE TABLE `tbusuarios` (
  `iduser` int(11) NOT NULL,
  `usuario` varchar(50) CHARACTER SET utf8 NOT NULL,
  `fone` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `login` varchar(15) CHARACTER SET utf8 NOT NULL,
  `senha` varchar(15) CHARACTER SET utf8 NOT NULL,
  `perfil` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tbusuarios`
--

INSERT INTO `tbusuarios` (`iduser`, `usuario`, `fone`, `login`, `senha`, `perfil`) VALUES
(1, 'fernando souza', '81 99994-9999', 'joseassis', '123456', 'admin'),
(2, 'Administrador', '5555-5555', 'admin', 'admin', 'admin'),
(3, 'Fernando souza', '99987-7201', 'fernando', '5813', 'admin'),
(4, 'alice gabriele', '81 99994-9999', 'alicebr', '123456', 'user'),
(5, 'fabiana souza', '81 99994-9999', 'fabiana', '303030', 'user'),
(6, 'maria', '9656463', 'maria', '123', 'admin'),
(7, 'joão ', '98965', 'joao', '123', 'admin');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbclientes`
--
ALTER TABLE `tbclientes`
  ADD PRIMARY KEY (`idcli`);

--
-- Índices para tabela `tbos`
--
ALTER TABLE `tbos`
  ADD PRIMARY KEY (`os`),
  ADD KEY `idcli` (`idcli`);

--
-- Índices para tabela `tbusuarios`
--
ALTER TABLE `tbusuarios`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbclientes`
--
ALTER TABLE `tbclientes`
  MODIFY `idcli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tbos`
--
ALTER TABLE `tbos`
  MODIFY `os` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbos`
--
ALTER TABLE `tbos`
  ADD CONSTRAINT `tbos_ibfk_1` FOREIGN KEY (`idcli`) REFERENCES `tbclientes` (`idcli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
