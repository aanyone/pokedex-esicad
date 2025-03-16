-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 16 mars 2025 à 16:45
-- Version du serveur : 9.1.0
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pokedex`
--

-- --------------------------------------------------------

--
-- Structure de la table `evolutions`
--

DROP TABLE IF EXISTS `evolutions`;
CREATE TABLE IF NOT EXISTS `evolutions` (
  `idAncetre` int NOT NULL,
  `idEvolution` int NOT NULL,
  PRIMARY KEY (`idAncetre`,`idEvolution`),
  KEY `idEvolution` (`idEvolution`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `evolutions`
--

INSERT INTO `evolutions` (`idAncetre`, `idEvolution`) VALUES
(1, 2),
(2, 3),
(4, 5),
(5, 6),
(7, 8),
(8, 9),
(10, 11),
(11, 12),
(13, 14),
(14, 15),
(16, 17),
(17, 18),
(19, 20),
(21, 22),
(23, 24),
(25, 26),
(27, 28),
(29, 30),
(30, 31),
(32, 33),
(33, 34),
(35, 36),
(37, 38),
(39, 40),
(41, 42),
(43, 44),
(44, 45),
(46, 47),
(48, 49),
(50, 51),
(52, 53),
(54, 55),
(56, 57),
(58, 59),
(60, 61),
(61, 62),
(63, 64),
(64, 65),
(66, 67),
(67, 68),
(69, 70),
(70, 71),
(72, 73),
(74, 75),
(75, 76),
(77, 78),
(79, 80),
(81, 82),
(84, 85),
(86, 87),
(88, 89),
(90, 91),
(92, 93),
(93, 94),
(96, 97),
(98, 99),
(100, 101),
(102, 103),
(104, 105),
(109, 110),
(111, 112),
(116, 117),
(118, 119),
(120, 121),
(129, 130),
(133, 134),
(133, 135),
(133, 136),
(138, 139),
(140, 141),
(147, 148),
(148, 149);

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `IdPokemon` int NOT NULL AUTO_INCREMENT,
  `UrlPhoto` varchar(250) DEFAULT NULL,
  `nom` varchar(50) NOT NULL,
  `PV` int NOT NULL,
  `PtsAttaque` int NOT NULL,
  `PtsDefense` int NOT NULL,
  `PtsSpeciale` int NOT NULL,
  `PtsVitesse` int NOT NULL,
  `idType1` int NOT NULL,
  `idType2` int DEFAULT NULL,
  `DateAjout` date NOT NULL,
  PRIMARY KEY (`IdPokemon`),
  KEY `idType1` (`idType1`),
  KEY `idType2` (`idType2`)
) ENGINE=MyISAM AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`IdPokemon`, `UrlPhoto`, `nom`, `PV`, `PtsAttaque`, `PtsDefense`, `PtsSpeciale`, `PtsVitesse`, `idType1`, `idType2`, `DateAjout`) VALUES
(1, 'https://www.pokepedia.fr/images/d/db/Miniature_0001_EV.png', 'Bulbizarre', 45, 49, 49, 45, 65, 1, 6, '0000-00-00'),
(2, 'https://www.pokepedia.fr/images/6/61/Miniature_0002_EV.png', 'Herbizarre', 60, 62, 63, 60, 80, 1, 6, '0000-00-00'),
(3, 'https://www.pokepedia.fr/images/2/21/Miniature_0003_EV.png', 'Florizarre', 80, 82, 83, 80, 100, 1, 6, '0000-00-00'),
(4, 'https://www.pokepedia.fr/images/c/c1/Miniature_0004_EV.png', 'Salamèche', 39, 52, 43, 65, 50, 2, NULL, '0000-00-00'),
(5, 'https://www.pokepedia.fr/images/2/24/Miniature_0005_EV.png', 'Reptincel', 58, 64, 58, 80, 65, 2, NULL, '0000-00-00'),
(6, 'https://www.pokepedia.fr/images/4/42/Miniature_0006_EV.png', 'Dracaufeu', 78, 84, 78, 100, 85, 2, 9, '0000-00-00'),
(7, 'https://www.pokepedia.fr/images/3/3a/Miniature_0007_EV.png', 'Carapuce', 44, 48, 65, 43, 50, 3, NULL, '0000-00-00'),
(8, 'https://www.pokepedia.fr/images/3/3f/Miniature_0008_EV.png', 'Carabaffe', 59, 63, 80, 58, 65, 3, NULL, '0000-00-00'),
(9, 'https://www.pokepedia.fr/images/c/c2/Miniature_0009_EV.png', 'Tortank', 79, 83, 100, 78, 85, 3, NULL, '0000-00-00'),
(10, 'https://www.pokepedia.fr/images/a/a3/Miniature_0010_DEPS.png', 'Chenipan', 45, 30, 35, 45, 20, 4, NULL, '0000-00-00'),
(11, 'https://www.pokepedia.fr/images/2/29/Miniature_0011_DEPS.png', 'Chrysacier', 50, 20, 55, 30, 25, 4, NULL, '0000-00-00'),
(12, 'https://www.pokepedia.fr/images/c/c0/Miniature_0012_DEPS.png', 'Papilusion', 60, 45, 50, 70, 80, 4, 9, '0000-00-00'),
(13, 'https://www.pokepedia.fr/images/e/ea/Miniature_0013_DEPS.png', 'Aspicot', 40, 35, 30, 50, 20, 4, 6, '0000-00-00'),
(14, 'https://www.pokepedia.fr/images/2/29/Miniature_0014_DEPS.png', 'Coconfort', 45, 25, 50, 35, 25, 4, 6, '0000-00-00'),
(15, 'https://www.pokepedia.fr/images/d/d9/Miniature_0015_DEPS.png', 'Dardargnan', 65, 80, 40, 75, 45, 4, 6, '0000-00-00'),
(16, 'https://www.pokepedia.fr/images/c/c2/Miniature_0016_DEPS.png', 'Roucool', 40, 45, 40, 56, 35, 5, 9, '0000-00-00'),
(17, 'https://www.pokepedia.fr/images/0/07/Miniature_0017_DEPS.png', 'Roucoups', 63, 60, 55, 71, 50, 5, 9, '0000-00-00'),
(18, 'https://www.pokepedia.fr/images/d/d3/Miniature_0018_DEPS.png', 'Roucarnage', 83, 80, 75, 91, 70, 5, 9, '0000-00-00'),
(19, 'https://www.pokepedia.fr/images/b/b1/Miniature_0019_DEPS.png', 'Rattata', 30, 56, 35, 72, 25, 5, NULL, '0000-00-00'),
(20, 'https://www.pokepedia.fr/images/c/c8/Miniature_0020_DEPS.png', 'Rattatac', 55, 81, 60, 97, 50, 5, NULL, '0000-00-00'),
(21, 'https://www.pokepedia.fr/images/6/6c/Miniature_0021_DEPS.png', 'Piafabec', 40, 60, 30, 70, 31, 5, 9, '0000-00-00'),
(22, 'https://www.pokepedia.fr/images/e/ed/Miniature_0022_DEPS.png', 'Rapasdepic', 65, 90, 65, 100, 61, 5, 9, '0000-00-00'),
(23, 'https://www.pokepedia.fr/images/0/09/Miniature_0023_EV.png', 'Abo', 35, 60, 44, 55, 40, 6, NULL, '0000-00-00'),
(24, 'https://www.pokepedia.fr/images/b/bf/Miniature_0024_EV.png', 'Arbok', 60, 85, 69, 80, 65, 6, NULL, '0000-00-00'),
(25, 'https://www.pokepedia.fr/images/3/3d/Miniature_0025_EV.png', 'Pikachu', 35, 55, 30, 90, 50, 7, NULL, '0000-00-00'),
(26, 'https://www.pokepedia.fr/images/9/9f/Miniature_0026_EV.png', 'Raichu', 60, 90, 55, 100, 90, 7, NULL, '0000-00-00'),
(27, 'https://www.pokepedia.fr/images/5/55/Miniature_0027_EV.png', 'Sabelette', 50, 75, 85, 40, 30, 8, NULL, '0000-00-00'),
(28, 'https://www.pokepedia.fr/images/c/c9/Miniature_0028_EV.png', 'Sablaireau', 75, 100, 110, 65, 55, 8, NULL, '0000-00-00'),
(29, 'https://www.pokepedia.fr/images/0/07/Miniature_0029_DEPS.png', 'Nidoran ♀', 55, 47, 52, 41, 40, 6, NULL, '0000-00-00'),
(30, 'https://www.pokepedia.fr/images/1/14/Miniature_0030_DEPS.png', 'Nidorina', 70, 62, 67, 56, 55, 6, NULL, '0000-00-00'),
(31, 'https://www.pokepedia.fr/images/a/a5/Miniature_0031_DEPS.png', 'Nidoqueen', 90, 82, 87, 76, 75, 6, NULL, '0000-00-00'),
(32, 'https://www.pokepedia.fr/images/8/85/Miniature_0032_DEPS.png', 'Nidoran ♂', 46, 57, 40, 50, 40, 6, NULL, '0000-00-00'),
(33, 'https://www.pokepedia.fr/images/1/10/Miniature_0033_DEPS.png', 'Nidorino', 61, 72, 57, 65, 55, 6, NULL, '0000-00-00'),
(34, 'https://www.pokepedia.fr/images/7/79/Miniature_0034_DEPS.png', 'Nidoking', 81, 92, 77, 85, 75, 6, NULL, '0000-00-00'),
(35, 'https://www.pokepedia.fr/images/c/cf/Miniature_0035_EV.png', 'Mélofée', 70, 45, 48, 35, 60, 5, NULL, '0000-00-00'),
(36, 'https://www.pokepedia.fr/images/d/d8/Miniature_0036_EV.png', 'Mélodelfe', 95, 70, 73, 60, 85, 5, NULL, '0000-00-00'),
(37, 'https://www.pokepedia.fr/images/f/f6/Miniature_0037_EV.png', 'Goupix', 38, 41, 40, 65, 65, 2, NULL, '0000-00-00'),
(38, 'https://www.pokepedia.fr/images/e/ed/Miniature_0038_EV.png', 'Feunard', 73, 76, 75, 100, 100, 2, NULL, '0000-00-00'),
(39, 'https://www.pokepedia.fr/images/9/9e/Miniature_0039_EV.png', 'Rondoudou', 115, 45, 20, 20, 25, 5, NULL, '0000-00-00'),
(40, 'https://www.pokepedia.fr/images/e/ed/Miniature_0040_EV.png', 'Grodoudou', 140, 70, 45, 45, 50, 5, NULL, '0000-00-00'),
(41, 'https://www.pokepedia.fr/images/a/a9/Miniature_0041_DEPS.png', 'Nosferapti', 40, 45, 35, 55, 40, 9, 6, '0000-00-00'),
(42, 'https://www.pokepedia.fr/images/2/2e/Miniature_0042_DEPS.png', 'Nosferalto', 75, 80, 70, 90, 75, 9, 6, '0000-00-00'),
(43, 'https://www.pokepedia.fr/images/7/7c/Miniature_0043_EV.png', 'Mystherbe', 45, 50, 55, 30, 75, 1, 6, '0000-00-00'),
(44, 'https://www.pokepedia.fr/images/0/0f/Miniature_0044_EV.png', 'Ortide', 60, 65, 70, 40, 85, 1, 6, '0000-00-00'),
(45, 'https://www.pokepedia.fr/images/b/b1/Miniature_0045_EV.png', 'Rafflesia', 75, 80, 85, 50, 100, 1, 6, '0000-00-00'),
(46, 'https://www.pokepedia.fr/images/b/b2/Miniature_0046_DEPS.png', 'Paras', 35, 70, 55, 25, 55, 4, 1, '0000-00-00'),
(47, 'https://www.pokepedia.fr/images/2/25/Miniature_0047_DEPS.png', 'Parasect', 60, 95, 80, 30, 80, 4, 1, '0000-00-00'),
(48, 'https://www.pokepedia.fr/images/1/1d/Miniature_0048_EV.png', 'Mimitoss', 60, 55, 50, 45, 40, 4, 6, '0000-00-00'),
(49, 'https://www.pokepedia.fr/images/7/73/Miniature_0049_EV.png', 'Aéromite', 70, 65, 60, 90, 90, 4, 6, '0000-00-00'),
(50, 'https://www.pokepedia.fr/images/c/c4/Miniature_0050_EV.png', 'Taupiqueur', 10, 55, 25, 95, 45, 8, NULL, '0000-00-00'),
(51, 'https://www.pokepedia.fr/images/d/d4/Miniature_0051_EV.png', 'Triopikeur', 35, 80, 50, 120, 70, 8, NULL, '0000-00-00'),
(52, 'https://www.pokepedia.fr/images/3/38/Miniature_0052_EV.png', 'Miaouss', 40, 45, 35, 90, 40, 5, NULL, '0000-00-00'),
(53, 'https://www.pokepedia.fr/images/6/6e/Miniature_0053_EV.png', 'Persian', 65, 70, 60, 115, 65, 5, NULL, '0000-00-00'),
(54, 'https://www.pokepedia.fr/images/2/2e/Miniature_0054_EV.png', 'Psykokwak', 50, 52, 48, 55, 50, 3, NULL, '0000-00-00'),
(55, 'https://www.pokepedia.fr/images/f/f1/Miniature_0055_EV.png', 'Akwakwak', 80, 82, 78, 85, 80, 3, NULL, '0000-00-00'),
(56, 'https://www.pokepedia.fr/images/a/ab/Miniature_0056_EV.png', 'Férosinge', 40, 80, 35, 70, 35, 10, NULL, '0000-00-00'),
(57, 'https://www.pokepedia.fr/images/9/91/Miniature_0057_EV.png', 'Colossinge', 65, 105, 60, 95, 60, 10, NULL, '0000-00-00'),
(58, 'https://www.pokepedia.fr/images/6/6c/Miniature_0058_EV.png', 'Caninos', 55, 70, 45, 60, 50, 2, NULL, '0000-00-00'),
(59, 'https://www.pokepedia.fr/images/9/9c/Miniature_0059_EV.png', 'Arcanin', 90, 110, 80, 95, 80, 2, NULL, '0000-00-00'),
(60, 'https://www.pokepedia.fr/images/5/51/Miniature_0060_EV.png', 'Ptitard', 40, 50, 40, 90, 40, 3, NULL, '0000-00-00'),
(61, 'https://www.pokepedia.fr/images/8/84/Miniature_0061_EV.png', 'Têtarte', 65, 65, 65, 90, 50, 3, NULL, '0000-00-00'),
(62, 'https://www.pokepedia.fr/images/a/ab/Miniature_0062_EV.png', 'Tartard', 90, 85, 95, 70, 70, 3, NULL, '0000-00-00'),
(63, 'https://www.pokepedia.fr/images/9/9b/Miniature_0063_DEPS.png', 'Abra', 25, 20, 15, 90, 105, 11, NULL, '0000-00-00'),
(64, 'https://www.pokepedia.fr/images/d/d7/Miniature_0064_DEPS.png', 'Kadabra', 40, 35, 30, 105, 120, 11, NULL, '0000-00-00'),
(65, 'https://www.pokepedia.fr/images/4/4f/Miniature_0065_DEPS.png', 'Alakazam', 55, 50, 45, 120, 135, 11, NULL, '0000-00-00'),
(66, 'https://www.pokepedia.fr/images/9/92/Miniature_0066_DEPS.png', 'Machoc', 70, 80, 50, 35, 35, 10, NULL, '0000-00-00'),
(67, 'https://www.pokepedia.fr/images/9/90/Miniature_0067_DEPS.png', 'Machopeur', 80, 100, 70, 45, 50, 10, NULL, '0000-00-00'),
(68, 'https://www.pokepedia.fr/images/a/a6/Miniature_0068_DEPS.png', 'Mackogneur', 90, 130, 80, 55, 65, 10, NULL, '0000-00-00'),
(69, 'https://www.pokepedia.fr/images/0/03/Miniature_0069_EV.png', 'Chétiflor', 50, 75, 35, 40, 70, 1, NULL, '0000-00-00'),
(70, 'https://www.pokepedia.fr/images/e/ed/Miniature_0070_EV.png', 'Boustiflor', 65, 90, 50, 55, 85, 1, NULL, '0000-00-00'),
(71, 'https://www.pokepedia.fr/images/a/a0/Miniature_0071_EV.png', 'Empiflor', 80, 105, 65, 70, 100, 1, NULL, '0000-00-00'),
(72, 'https://www.pokepedia.fr/images/b/bc/Miniature_0072_EV.png', 'Tentacool', 40, 40, 35, 70, 100, 3, 6, '0000-00-00'),
(73, 'https://www.pokepedia.fr/images/3/31/Miniature_0073_EV.png', 'Tentacruel', 80, 70, 65, 100, 120, 3, 6, '0000-00-00'),
(74, 'https://www.pokepedia.fr/images/2/20/Miniature_0074_EV.png', 'Racaillou', 40, 80, 100, 20, 30, 8, 14, '0000-00-00'),
(75, 'https://www.pokepedia.fr/images/9/94/Miniature_0075_EV.png', 'Gravalanch', 55, 95, 115, 35, 45, 8, 14, '0000-00-00'),
(76, 'https://www.pokepedia.fr/images/a/a4/Miniature_0076_EV.png', 'Grolem', 80, 110, 130, 45, 55, 8, 14, '0000-00-00'),
(77, 'https://www.pokepedia.fr/images/f/f3/Miniature_0077_DEPS.png', 'Ponyta', 50, 85, 55, 90, 65, 2, NULL, '0000-00-00'),
(78, 'https://www.pokepedia.fr/images/0/0c/Miniature_0078_DEPS.png', 'Galopa', 65, 100, 70, 105, 80, 2, NULL, '0000-00-00'),
(79, 'https://www.pokepedia.fr/images/3/38/Miniature_0079_EV.png', 'Ramoloss', 90, 65, 65, 15, 40, 3, 11, '0000-00-00'),
(80, 'https://www.pokepedia.fr/images/4/4a/Miniature_0080_EV.png', 'Flagadoss', 95, 75, 110, 30, 80, 3, 11, '0000-00-00'),
(81, 'https://www.pokepedia.fr/images/c/c3/Miniature_0081_EV.png', 'Magnéti', 25, 35, 70, 45, 95, 7, NULL, '0000-00-00'),
(82, 'https://www.pokepedia.fr/images/a/a3/Miniature_0082_EV.png', 'Magnéton', 50, 60, 95, 70, 120, 7, NULL, '0000-00-00'),
(83, 'https://www.pokepedia.fr/images/e/e8/Miniature_0083_DEPS.png', 'Canarticho', 52, 65, 55, 60, 58, 5, 9, '0000-00-00'),
(84, 'https://www.pokepedia.fr/images/8/83/Miniature_0084_EV.png', 'Doduo', 35, 85, 45, 75, 35, 5, 9, '0000-00-00'),
(85, 'https://www.pokepedia.fr/images/5/5e/Miniature_0085_EV.png', 'Dodrio', 60, 110, 70, 100, 60, 5, 9, '0000-00-00'),
(86, 'https://www.pokepedia.fr/images/f/fe/Miniature_0086_EV.png', 'Otaria', 65, 45, 55, 45, 70, 3, NULL, '0000-00-00'),
(87, 'https://www.pokepedia.fr/images/f/ff/Miniature_0087_EV.png', 'Lamantine', 90, 70, 80, 70, 95, 3, NULL, '0000-00-00'),
(88, 'https://www.pokepedia.fr/images/f/f1/Miniature_0088_EV.png', 'Tadmorv', 80, 80, 50, 25, 40, 6, NULL, '0000-00-00'),
(89, 'https://www.pokepedia.fr/images/a/a6/Miniature_0089_EV.png', 'Grotadmorv', 105, 105, 75, 50, 65, 6, NULL, '0000-00-00'),
(90, 'https://www.pokepedia.fr/images/9/9c/Miniature_0090_EV.png', 'Kokiyas', 30, 65, 100, 40, 45, 3, NULL, '0000-00-00'),
(91, 'https://www.pokepedia.fr/images/8/8a/Miniature_0091_EV.png', 'Crustabri', 50, 95, 180, 70, 85, 3, 13, '0000-00-00'),
(92, 'https://www.pokepedia.fr/images/c/cf/Miniature_0092_EV.png', 'Fantominus', 30, 35, 30, 80, 100, 12, 6, '0000-00-00'),
(93, 'https://www.pokepedia.fr/images/9/95/Miniature_0093_EV.png', 'Spectrum', 45, 50, 45, 95, 115, 12, 6, '0000-00-00'),
(94, 'https://www.pokepedia.fr/images/1/13/Miniature_0094_EV.png', 'Ectoplasma', 60, 65, 60, 110, 130, 12, 6, '0000-00-00'),
(95, 'https://www.pokepedia.fr/images/4/4e/Miniature_0095_DEPS.png', 'Onix', 35, 45, 160, 70, 30, 8, 14, '0000-00-00'),
(96, 'https://www.pokepedia.fr/images/a/ac/Miniature_0096_EV.png', 'Soporifik', 60, 48, 45, 42, 90, 11, NULL, '0000-00-00'),
(97, 'https://www.pokepedia.fr/images/1/10/Miniature_0097_EV.png', 'Hypnomade', 85, 73, 70, 67, 115, 11, NULL, '0000-00-00'),
(98, 'https://www.pokepedia.fr/images/8/87/Miniature_0098_DEPS.png', 'Krabby', 30, 105, 90, 50, 25, 3, NULL, '0000-00-00'),
(99, 'https://www.pokepedia.fr/images/6/67/Miniature_0099_DEPS.png', 'Krabboss', 55, 130, 115, 75, 50, 3, NULL, '0000-00-00'),
(100, 'https://www.pokepedia.fr/images/b/bb/Miniature_0100_EV.png', 'Voltorbe', 40, 30, 50, 100, 55, 7, NULL, '0000-00-00'),
(101, 'https://www.pokepedia.fr/images/c/c4/Miniature_0101_EV.png', 'Electrode', 60, 50, 70, 140, 80, 7, NULL, '0000-00-00'),
(102, 'https://www.pokepedia.fr/images/2/26/Miniature_0102_EV.png', 'Noeunoeuf', 60, 40, 80, 40, 60, 1, 11, '0000-00-00'),
(103, 'https://www.pokepedia.fr/images/8/8d/Miniature_0103_EV.png', 'Noadkoko', 95, 95, 85, 55, 125, 1, 11, '0000-00-00'),
(104, 'https://www.pokepedia.fr/images/1/16/Miniature_0104_DEPS.png', 'Osselait', 50, 50, 95, 35, 40, 8, NULL, '0000-00-00'),
(105, 'https://www.pokepedia.fr/images/3/35/Miniature_0105_DEPS.png', 'Ossatueur', 60, 80, 110, 45, 50, 8, NULL, '0000-00-00'),
(106, 'https://www.pokepedia.fr/images/5/56/Miniature_0106_EV.png', 'Kicklee', 50, 120, 53, 87, 35, 10, NULL, '0000-00-00'),
(107, 'https://www.pokepedia.fr/images/8/82/Miniature_0107_EV.png', 'Tygnon', 50, 105, 79, 76, 35, 10, NULL, '0000-00-00'),
(108, 'https://www.pokepedia.fr/images/e/e6/Miniature_0108_DEPS.png', 'Excelangue', 90, 55, 75, 30, 60, 5, NULL, '0000-00-00'),
(109, 'https://www.pokepedia.fr/images/7/72/Miniature_0109_EV.png', 'Smogo', 40, 65, 95, 35, 60, 6, NULL, '0000-00-00'),
(110, 'https://www.pokepedia.fr/images/2/2a/Miniature_0110_EV.png', 'Smogogo', 65, 90, 120, 60, 85, 6, NULL, '0000-00-00'),
(111, 'https://www.pokepedia.fr/images/7/71/Miniature_0111_EV.png', 'Rhinocorne', 80, 85, 95, 25, 30, 8, 14, '0000-00-00'),
(112, 'https://www.pokepedia.fr/images/e/e7/Miniature_0112_EV.png', 'Rhinoféros', 105, 130, 120, 40, 45, 8, 14, '0000-00-00'),
(113, 'https://www.pokepedia.fr/images/e/e0/Miniature_0113_EV.png', 'Leveinard', 250, 5, 5, 50, 105, 5, NULL, '0000-00-00'),
(114, 'https://www.pokepedia.fr/images/2/28/Miniature_0114_DEPS.png', 'Saquedeneu', 65, 55, 115, 60, 100, 1, NULL, '0000-00-00'),
(115, 'https://www.pokepedia.fr/images/2/25/Miniature_0115_DEPS.png', 'Kangourex', 105, 95, 80, 90, 40, 5, NULL, '0000-00-00'),
(116, 'https://www.pokepedia.fr/images/d/da/Miniature_0116_EV.png', 'Hypotrempe', 30, 40, 70, 60, 70, 3, NULL, '0000-00-00'),
(117, 'https://www.pokepedia.fr/images/2/2e/Miniature_0117_EV.png', 'Hypocéan', 55, 65, 95, 85, 95, 3, NULL, '0000-00-00'),
(118, 'https://www.pokepedia.fr/images/5/5c/Miniature_0118_DEPS.png', 'Poissirène', 45, 67, 60, 63, 50, 3, NULL, '0000-00-00'),
(119, 'https://www.pokepedia.fr/images/1/1a/Miniature_0119_DEPS.png', 'Poissoroy', 80, 92, 65, 68, 80, 3, NULL, '0000-00-00'),
(120, 'https://www.pokepedia.fr/images/1/17/Miniature_0120_DEPS.png', 'Stari', 30, 45, 55, 85, 70, 3, NULL, '0000-00-00'),
(121, 'https://www.pokepedia.fr/images/9/9f/Miniature_0121_DEPS.png', 'Staross', 60, 75, 85, 115, 100, 3, 11, '0000-00-00'),
(122, 'https://www.pokepedia.fr/images/e/ed/Miniature_0122_DEPS.png', 'M. Mime', 40, 45, 65, 90, 100, 11, NULL, '0000-00-00'),
(123, 'https://www.pokepedia.fr/images/a/a7/Miniature_0123_EV.png', 'Insécateur', 70, 110, 80, 105, 55, 4, NULL, '0000-00-00'),
(124, 'https://www.pokepedia.fr/images/0/0c/Miniature_0124_DEPS.png', 'Lippoutou', 65, 50, 35, 95, 95, 13, 11, '0000-00-00'),
(125, 'https://www.pokepedia.fr/images/7/74/Miniature_0125_EV.png', 'Elektek', 65, 83, 57, 105, 85, 7, NULL, '0000-00-00'),
(126, 'https://www.pokepedia.fr/images/e/e9/Miniature_0126_EV.png', 'Magmar', 65, 95, 57, 93, 85, 2, NULL, '0000-00-00'),
(127, 'https://www.pokepedia.fr/images/6/65/Miniature_0127_DEPS.png', 'Scarabrute', 65, 125, 100, 85, 55, 4, NULL, '0000-00-00'),
(128, 'https://www.pokepedia.fr/images/d/d8/Miniature_0128_EV.png', 'Tauros', 75, 100, 95, 110, 70, 5, NULL, '0000-00-00'),
(129, 'https://www.pokepedia.fr/images/2/29/Miniature_0129_EV.png', 'Magicarpe', 20, 10, 55, 80, 20, 3, NULL, '0000-00-00'),
(130, 'https://www.pokepedia.fr/images/4/43/Miniature_0130_EV.png', 'Léviator', 95, 125, 79, 81, 100, 3, 9, '0000-00-00'),
(131, 'https://www.pokepedia.fr/images/d/d8/Miniature_0131_EV.png', 'Lokhlass', 130, 85, 80, 60, 95, 3, 13, '0000-00-00'),
(132, 'https://www.pokepedia.fr/images/9/91/Miniature_0132_EV.png', 'Métamorph', 48, 48, 48, 48, 48, 5, NULL, '0000-00-00'),
(133, 'https://www.pokepedia.fr/images/6/6f/Miniature_0133_EV.png', 'Evoli', 55, 55, 50, 55, 65, 5, NULL, '0000-00-00'),
(134, 'https://www.pokepedia.fr/images/5/53/Miniature_0134_EV.png', 'Aquali', 130, 65, 60, 65, 110, 3, NULL, '0000-00-00'),
(135, 'https://www.pokepedia.fr/images/4/40/Miniature_0135_EV.png', 'Voltali', 65, 65, 60, 130, 110, 7, NULL, '0000-00-00'),
(136, 'https://www.pokepedia.fr/images/6/6e/Miniature_0136_EV.png', 'Pyroli', 65, 130, 60, 65, 110, 2, NULL, '0000-00-00'),
(137, 'https://www.pokepedia.fr/images/8/80/Miniature_0137_EV.png', 'Porygon', 65, 60, 70, 40, 75, 5, NULL, '0000-00-00'),
(138, 'https://www.pokepedia.fr/images/8/84/Miniature_0138_DEPS.png', 'Amonita', 35, 40, 100, 35, 90, 14, 3, '0000-00-00'),
(139, 'https://www.pokepedia.fr/images/f/fe/Miniature_0139_DEPS.png', 'Amonistar', 70, 60, 125, 55, 115, 14, 3, '0000-00-00'),
(140, 'https://www.pokepedia.fr/images/8/83/Miniature_0140_DEPS.png', 'Kabuto', 30, 80, 90, 55, 45, 14, 3, '0000-00-00'),
(141, 'https://www.pokepedia.fr/images/0/0c/Miniature_0141_DEPS.png', 'Kabutops', 60, 115, 105, 80, 70, 14, 3, '0000-00-00'),
(142, 'https://www.pokepedia.fr/images/3/33/Miniature_0142_DEPS.png', 'Ptéra', 80, 105, 65, 130, 60, 14, 9, '0000-00-00'),
(143, 'https://www.pokepedia.fr/images/5/5e/Miniature_0143_EV.png', 'Ronflex', 160, 110, 65, 30, 65, 5, NULL, '0000-00-00'),
(144, 'https://www.pokepedia.fr/images/6/6e/Miniature_0144_EV.png', 'Artikodin', 90, 85, 100, 85, 125, 13, 9, '0000-00-00'),
(145, 'https://www.pokepedia.fr/images/7/74/Miniature_0145_EV.png', 'Electhor', 90, 90, 85, 100, 125, 7, 9, '0000-00-00'),
(146, 'https://www.pokepedia.fr/images/b/b0/Miniature_0146_EV.png', 'Sulfura', 90, 100, 90, 90, 125, 2, 9, '0000-00-00'),
(147, 'https://www.pokepedia.fr/images/7/75/Miniature_0147_EV.png', 'Minidraco', 41, 64, 45, 50, 50, 15, NULL, '0000-00-00'),
(148, 'https://www.pokepedia.fr/images/9/99/Miniature_0148_EV.png', 'Draco', 61, 84, 65, 70, 70, 15, NULL, '0000-00-00'),
(149, 'https://www.pokepedia.fr/images/4/43/Miniature_0149_EV.png', 'Dracolosse', 91, 134, 95, 80, 100, 15, 9, '0000-00-00'),
(150, 'https://www.pokepedia.fr/images/2/22/Miniature_0150_EV.png', 'Mewtwo', 106, 110, 90, 130, 154, 11, NULL, '0000-00-00'),
(151, 'https://www.pokepedia.fr/images/3/33/Miniature_0151_EV.png', 'Mew', 100, 100, 100, 100, 100, 11, NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `idType` int NOT NULL AUTO_INCREMENT,
  `nomtype` varchar(50) NOT NULL,
  PRIMARY KEY (`idType`),
  UNIQUE KEY `nomtype` (`nomtype`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `types`
--

INSERT INTO `types` (`idType`, `nomtype`) VALUES
(1, 'Plante'),
(2, 'Feu'),
(3, 'Eau'),
(4, 'Insecte'),
(5, 'Normal'),
(6, 'Poison'),
(7, 'Electrique'),
(8, 'Sol'),
(9, 'Vol'),
(10, 'Combat'),
(11, 'Psy'),
(12, 'Spectre'),
(13, 'Glace'),
(14, 'Roche'),
(15, 'Dragon'),
(16, 'acier');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
