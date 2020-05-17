-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 17 mai 2020 à 23:24
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projetjavaee`
--

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

DROP TABLE IF EXISTS `plat`;
CREATE TABLE IF NOT EXISTS `plat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `typeplat` int(11) NOT NULL,
  `id_restaurant` int(11) NOT NULL,
  `prix` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `plat`
--

INSERT INTO `plat` (`id`, `nom`, `typeplat`, `id_restaurant`, `prix`) VALUES
(1, 'tomates mozza', 1, 8, 5),
(2, 'antipasti de poivrons grillés', 1, 8, 7),
(3, 'nem', 2, 8, 15),
(4, 'salade', 1, 3, 5),
(5, 'entree de burger King', 1, 3, 6),
(6, 'Steakhouse', 2, 3, 11),
(7, 'Double Steakhouse', 2, 3, 13),
(8, 'Burger', 2, 3, 8),
(9, 'Glace', 3, 3, 3),
(10, 'Dessert du buger King', 3, 3, 5),
(11, 'Burger Raclette', 2, 3, 15);

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `restaurant`
--

INSERT INTO `restaurant` (`id`, `nom`, `adresse`, `type`) VALUES
(8, 'Restaurant Italien', '70 rue de l\'Italie', 1),
(2, 'Restaurant Chinois', '1 rue de Chine', 2),
(3, 'Burger King', '5 rue du Burger King', 3);

-- --------------------------------------------------------

--
-- Structure de la table `type_plat`
--

DROP TABLE IF EXISTS `type_plat`;
CREATE TABLE IF NOT EXISTS `type_plat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_plat`
--

INSERT INTO `type_plat` (`id`, `nom`) VALUES
(1, 'entree'),
(2, 'plat'),
(3, 'dessert');

-- --------------------------------------------------------

--
-- Structure de la table `type_restaurant`
--

DROP TABLE IF EXISTS `type_restaurant`;
CREATE TABLE IF NOT EXISTS `type_restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type_restaurant`
--

INSERT INTO `type_restaurant` (`id`, `nom`) VALUES
(1, 'Italien'),
(2, 'Chinois'),
(3, 'Fast Food');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
