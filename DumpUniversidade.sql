-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: universidade
-- ------------------------------------------------------
-- Server version	5.7.15-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos` (
  `cpf` varchar(11) NOT NULL,
  `ra` varchar(10) NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `ra` (`ra`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `pessoas` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES ('11111111111','ra111'),('22222222222','ra222'),('33333333333','ra333'),('44444444444','ra444'),('55555555555','ra555'),('66666666666','ra666'),('77777777777','ra777'),('88888888888','ra888'),('99999999999','ra999');
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alunos_turmas`
--

DROP TABLE IF EXISTS `alunos_turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alunos_turmas` (
  `cpf` varchar(11) NOT NULL,
  `turma_id` int(11) NOT NULL,
  PRIMARY KEY (`cpf`,`turma_id`),
  KEY `turma_id` (`turma_id`),
  CONSTRAINT `alunos_turmas_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `alunos` (`cpf`),
  CONSTRAINT `alunos_turmas_ibfk_2` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`turma_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos_turmas`
--

LOCK TABLES `alunos_turmas` WRITE;
/*!40000 ALTER TABLE `alunos_turmas` DISABLE KEYS */;
/*!40000 ALTER TABLE `alunos_turmas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aulas`
--

DROP TABLE IF EXISTS `aulas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aulas` (
  `aula_id` int(11) NOT NULL AUTO_INCREMENT,
  `conteudo` text,
  `dt_aula` date NOT NULL,
  `turma_id` int(11) NOT NULL,
  PRIMARY KEY (`aula_id`),
  KEY `turma_id` (`turma_id`),
  CONSTRAINT `aulas_ibfk_1` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`turma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aulas`
--

LOCK TABLES `aulas` WRITE;
/*!40000 ALTER TABLE `aulas` DISABLE KEYS */;
INSERT INTO `aulas` VALUES (1,'Assunto 1','2016-09-21',1);
/*!40000 ALTER TABLE `aulas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disciplinas` (
  `disciplina_codigo` varchar(10) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `ch_total` int(10) unsigned NOT NULL,
  PRIMARY KEY (`disciplina_codigo`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disciplinas`
--

LOCK TABLES `disciplinas` WRITE;
/*!40000 ALTER TABLE `disciplinas` DISABLE KEYS */;
INSERT INTO `disciplinas` VALUES ('ENG-','Introdução à Engenharia da Computação',30),('ENG-000','Sociologia',60),('ENG-001','Tópicos Especiais de Telecomunicações',60),('ENG-111','Inglês Instrumental',30),('ENG-120','Geometria Análitica e de Vetores',60),('ENG-121','Álgebra Linear',60),('ENG-122/3','Cálculo Diferencial e Integral I',75),('ENG-123/3','Cálculo Diferencial e Integral II',60),('ENG-130','Algoritmos e Programação de Computadores I',60),('ENG-131','Algoritmos e Programação de Computadores II',60),('ENG-132','Lógica Aplicada a Computação',60),('ENG-133','Desenho Técnico Por Computador',60),('ENG-170','Circuitos Digitais',60),('ENG-171','Física Geral e Experimental I',60),('ENG-220','Cálculo Numérico',60),('ENG-221/3','Cálculo Diferencial e Integral III',60),('ENG-222','Equações Diferenciais',60),('ENG-230','Estrutura de Dados',60),('ENG-232','Arquitetura e Organização de Computadores I',60),('ENG-233','Arquitetura e Organização de Computadores II',60),('ENG-235','Banco de Dados',60),('ENG-250','Metodologia da Pesquisa Científica',60),('ENG-270','Química Geral e Experimental',60),('ENG-271','Física Geral e Experimental II',60),('ENG-272','Física Geral e Experimental III',60),('ENG-273','Mecânica Geral',60),('ENG-320','Estatística e Probabilidade',60),('ENG-331','Engenharia de Software',60),('ENG-332','Linguagens Formais e Autômatos',60),('ENG-334','Sistemas Operacionais',60),('ENG-335','Redes de Computadores I',60),('ENG-370','Circuitos Elétricos I',60),('ENG-371','Eletrônica I',60),('ENG-372','Resistência dos Materiais',60),('ENG-373','Fenômenos de Transporte',30),('ENG-374','Análise de Sinais e Sistemas',60),('ENG-375','Processamento Digital de Sinais',60),('ENG-434','Redes de Computadores II',60),('ENG-435','Inteligência Artificial',60),('ENG-436','Sistemas Concorrentes e Distribuídos',60),('ENG-451','Empreendedorismo',60),('ENG-460','Ciências Sociais e Jurídicas',30),('ENG-470','Circuitos Elétricos II',60),('ENG-471','Prototipação de Circuitos Digitais',60),('ENG-472','Controle I',60),('ENG-474','Princípios de Comunicações',60),('ENG-475','Interface Homem x Máquina',60),('ENG-500','Contabilidade Geral',60),('ENG-540','Economia',60),('ENG-550','Tecnologias de Gestão em Administração',60),('ENG-551','Gestão Ambiental e Desenvolvimento Sustentável',60),('ENG-570','Engenharia de Sistemas Embarcados',60),('ENG-571','Automação Industrial',60),('ENG-581','Estágio Supervisionado I',30),('ENG-582','Estágio Supervisionado II',30),('ENG-590','Trabalho Científico de Formatura I',30),('ENG-591','Trabalho Científico de Formatura II',30);
/*!40000 ALTER TABLE `disciplinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faltas`
--

DROP TABLE IF EXISTS `faltas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faltas` (
  `falta_id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_falta` date DEFAULT NULL,
  `faltou` tinyint(4) DEFAULT '0',
  `cpf` varchar(11) NOT NULL,
  `turma_id` int(11) NOT NULL,
  PRIMARY KEY (`falta_id`),
  KEY `cpf` (`cpf`),
  KEY `turma_id` (`turma_id`),
  CONSTRAINT `faltas_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `alunos` (`cpf`),
  CONSTRAINT `faltas_ibfk_2` FOREIGN KEY (`turma_id`) REFERENCES `turmas` (`turma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faltas`
--

LOCK TABLES `faltas` WRITE;
/*!40000 ALTER TABLE `faltas` DISABLE KEYS */;
INSERT INTO `faltas` VALUES (1,'2016-09-21',1,'11111111111',1);
/*!40000 ALTER TABLE `faltas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periodos`
--

DROP TABLE IF EXISTS `periodos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periodos` (
  `periodo_id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(20) NOT NULL,
  `dt_inicial` date NOT NULL,
  `dt_final` date NOT NULL,
  PRIMARY KEY (`periodo_id`),
  UNIQUE KEY `descricao` (`descricao`),
  UNIQUE KEY `dt_inicial` (`dt_inicial`),
  UNIQUE KEY `dt_final` (`dt_final`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periodos`
--

LOCK TABLES `periodos` WRITE;
/*!40000 ALTER TABLE `periodos` DISABLE KEYS */;
INSERT INTO `periodos` VALUES (1,'2016.2','2016-02-01','2016-06-15');
/*!40000 ALTER TABLE `periodos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pessoas` (
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES ('11111111111','Bruce Dickson','M'),('22222222222','Dr. Brown','M'),('33333333333','Mc Fly','M'),('44444444444','Joana Dark','F'),('45347782447','Simon S. Haykin','M'),('55555555555','Bob Marley','M'),('57262772368','Earl Swokowski','M'),('66666666666','Ana Belle','F'),('73259736166','Andrew Tanenbaum','M'),('77777777777','Donatelo','M'),('88854957291','Bjarne Stroustrup','M'),('88888888888','Pato Donald','M'),('92983611302','Peter Chen','M'),('95618153971','Albert Einstein','M'),('99999999999','Logan Wolverine','M');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pre_requisitos`
--

DROP TABLE IF EXISTS `pre_requisitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pre_requisitos` (
  `pre_requisito_codigo` varchar(10) NOT NULL,
  `disciplina_codigo` varchar(10) NOT NULL,
  PRIMARY KEY (`pre_requisito_codigo`,`disciplina_codigo`),
  KEY `disciplina_codigo` (`disciplina_codigo`),
  CONSTRAINT `pre_requisitos_ibfk_1` FOREIGN KEY (`pre_requisito_codigo`) REFERENCES `disciplinas` (`disciplina_codigo`),
  CONSTRAINT `pre_requisitos_ibfk_2` FOREIGN KEY (`disciplina_codigo`) REFERENCES `disciplinas` (`disciplina_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pre_requisitos`
--

LOCK TABLES `pre_requisitos` WRITE;
/*!40000 ALTER TABLE `pre_requisitos` DISABLE KEYS */;
INSERT INTO `pre_requisitos` VALUES ('ENG-122/3','ENG-123/3'),('ENG-130','ENG-131'),('ENG-122/3','ENG-171'),('ENG-123/3','ENG-221/3');
/*!40000 ALTER TABLE `pre_requisitos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predios`
--

DROP TABLE IF EXISTS `predios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predios` (
  `predio_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  PRIMARY KEY (`predio_id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predios`
--

LOCK TABLES `predios` WRITE;
/*!40000 ALTER TABLE `predios` DISABLE KEYS */;
INSERT INTO `predios` VALUES (1,'Módulo 1');
/*!40000 ALTER TABLE `predios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professores`
--

DROP TABLE IF EXISTS `professores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professores` (
  `cpf` varchar(11) NOT NULL,
  `matricula` varchar(4) NOT NULL,
  `salario` decimal(10,2) unsigned NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `matricula` (`matricula`),
  CONSTRAINT `professores_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `pessoas` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professores`
--

LOCK TABLES `professores` WRITE;
/*!40000 ALTER TABLE `professores` DISABLE KEYS */;
INSERT INTO `professores` VALUES ('45347782447','0003',5500.50),('57262772368','0005',5000.00),('73259736166','0001',3000.00),('88854957291','0004',7000.00),('92983611302','0002',10000.00),('95618153971','0006',6000.00);
/*!40000 ALTER TABLE `professores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salas`
--

DROP TABLE IF EXISTS `salas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salas` (
  `sala_id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(10) NOT NULL,
  `tipo_sala` enum('TEORICA','PRATICA') DEFAULT NULL,
  `predio_id` int(11) NOT NULL,
  PRIMARY KEY (`sala_id`),
  UNIQUE KEY `uc_sala` (`numero`,`predio_id`),
  KEY `predio_id` (`predio_id`),
  CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`predio_id`) REFERENCES `predios` (`predio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salas`
--

LOCK TABLES `salas` WRITE;
/*!40000 ALTER TABLE `salas` DISABLE KEYS */;
INSERT INTO `salas` VALUES (1,'A1','TEORICA',1);
/*!40000 ALTER TABLE `salas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turmas`
--

DROP TABLE IF EXISTS `turmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turmas` (
  `turma_id` int(11) NOT NULL AUTO_INCREMENT,
  `turno` enum('MATUTINO','VESPERTINO','NOTURNO') DEFAULT NULL,
  `cpf` varchar(11) NOT NULL,
  `disciplina_codigo` varchar(10) NOT NULL,
  `periodo_id` int(11) NOT NULL,
  PRIMARY KEY (`turma_id`),
  UNIQUE KEY `cpf` (`cpf`,`disciplina_codigo`,`periodo_id`),
  KEY `disciplina_codigo` (`disciplina_codigo`),
  KEY `periodo_id` (`periodo_id`),
  CONSTRAINT `turmas_ibfk_1` FOREIGN KEY (`cpf`) REFERENCES `professores` (`cpf`),
  CONSTRAINT `turmas_ibfk_2` FOREIGN KEY (`disciplina_codigo`) REFERENCES `disciplinas` (`disciplina_codigo`),
  CONSTRAINT `turmas_ibfk_3` FOREIGN KEY (`periodo_id`) REFERENCES `periodos` (`periodo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turmas`
--

LOCK TABLES `turmas` WRITE;
/*!40000 ALTER TABLE `turmas` DISABLE KEYS */;
INSERT INTO `turmas` VALUES (1,'MATUTINO','45347782447','ENG-000',1);
/*!40000 ALTER TABLE `turmas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-21 23:49:45
