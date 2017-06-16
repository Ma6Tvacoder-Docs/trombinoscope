-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 09 Janvier 2017 à 14:46
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `trombinoschool`
--

-- --------------------------------------------------------

--
-- Structure de la table `bouche`
--

CREATE TABLE IF NOT EXISTS `bouche` (
  `id_bouche` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `img_bouche` varchar(20) NOT NULL,
  PRIMARY KEY (`id_bouche`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=367 ;

--
-- Contenu de la table `bouche`
--

INSERT INTO `bouche` (`id_bouche`, `nom`, `img_bouche`) VALUES
(1, 'Patrick', 'bouche-00.png'),
(2, 'Jean-Yves', 'bouche-01.png'),
(3, 'Eric', 'bouche-02.png'),
(4, 'Abdelkrim', 'bouche-03.png'),
(5, 'Laurianne', 'bouche-04.png'),
(6, 'Laurelinne', 'bouche-05.png'),
(7, 'Houda', 'bouche-06.png'),
(8, 'Jeremy', 'bouche-07.png'),
(9, 'Tibile', 'bouche-08.png'),
(10, 'Thomas', 'bouche-09.png'),
(11, 'Yanis', 'bouche-10.png'),
(12, 'Myhed', 'bouche-11.png'),
(13, 'Kevin', 'bouche-12.png');

-- --------------------------------------------------------

--
-- Structure de la table `ensemble`
--

CREATE TABLE IF NOT EXISTS `ensemble` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(200) NOT NULL,
  `ensemble` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `ensemble`
--

INSERT INTO `ensemble` (`id`, `nom`, `ensemble`) VALUES
(2, 'Eric', 'face-04.png,eyes-04.png,nez-03.png,bouche-04.png'),
(3, 'Patrick', 'face-00.png,eyes-00.png,nez-00.png,bouche-00.png'),
(10, 'Abdelkrim', 'face-03.png,eyes-03.png,nez-03.png,bouche-03.png'),
(11, 'Thomas', 'face-09.png,eyes-09.png,nez-09.png,bouche-09.png');

-- --------------------------------------------------------

--
-- Structure de la table `nez`
--

CREATE TABLE IF NOT EXISTS `nez` (
  `id_nez` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `img_nez` varchar(20) NOT NULL,
  PRIMARY KEY (`id_nez`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=275 ;

--
-- Contenu de la table `nez`
--

INSERT INTO `nez` (`id_nez`, `nom`, `img_nez`) VALUES
(1, 'Patrick', 'nez-00.png'),
(2, 'Jean-Yves', 'nez-01.png'),
(3, 'Eric', 'nez-02.png'),
(4, 'Abdelkrim', 'nez-03.png'),
(5, 'Laurianne', 'nez-04.png'),
(6, 'Laurelinne', 'nez-05.png'),
(7, 'Houda', 'nez-06.png'),
(8, 'Jeremy', 'nez-07.png'),
(9, 'Tibile', 'nez-08.png'),
(10, 'Thomas', 'nez-09.png'),
(11, 'Yanis', 'nez-10.png'),
(12, 'Myhed', 'nez-11.png'),
(13, 'Kevin', 'nez-12.png');

-- --------------------------------------------------------

--
-- Structure de la table `visage`
--

CREATE TABLE IF NOT EXISTS `visage` (
  `id_visage` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `img_visage` varchar(20) NOT NULL,
  PRIMARY KEY (`id_visage`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=274 ;

--
-- Contenu de la table `visage`
--

INSERT INTO `visage` (`id_visage`, `nom`, `img_visage`) VALUES
(1, 'Patrick', 'face-00.png'),
(2, 'Jean-Yves', 'face-01.png'),
(3, 'Eric\r\n', 'face-02.png'),
(4, 'Abdelkrim', 'face-03.png'),
(5, 'Laurianne', 'face-04.png'),
(6, 'Laurelinne', 'face-05.png'),
(7, 'Houda', 'face-06.png'),
(8, 'Jeremy', 'face-07.png'),
(9, 'Tibile', 'face-08.png'),
(10, 'Thomas', 'face-09.png'),
(11, 'Yanis', 'face-10.png'),
(12, 'Myhed', 'face-11.png'),
(13, 'Kevin', 'face-12.png');

-- --------------------------------------------------------

--
-- Structure de la table `yeux`
--

CREATE TABLE IF NOT EXISTS `yeux` (
  `id_yeux` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `img_yeux` varchar(20) NOT NULL,
  PRIMARY KEY (`id_yeux`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=274 ;

--
-- Contenu de la table `yeux`
--

INSERT INTO `yeux` (`id_yeux`, `nom`, `img_yeux`) VALUES
(1, 'Patrick', 'eyes-00.png'),
(2, 'Jean-Yves\r\n', 'eyes-01.png'),
(3, 'Eric', 'eyes-02.png'),
(4, 'Abdelkrim', 'eyes-03.png'),
(5, 'Laurianne', 'eyes-04.png'),
(6, 'Laurelinne', 'eyes-05.png'),
(7, 'Houda', 'eyes-06.png'),
(8, 'Jeremy', 'eyes-07.png'),
(9, 'Tibile', 'eyes-08.png'),
(10, 'Thomas', 'eyes-09.png'),
(11, 'Yanis', 'eyes-10.png'),
(12, 'Myhed', 'eyes-11.png'),
(13, 'Kevin', 'eyes-12.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
