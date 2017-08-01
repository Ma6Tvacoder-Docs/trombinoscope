-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 01 Août 2017 à 17:10
-- Version du serveur :  10.1.13-MariaDB
-- Version de PHP :  5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `trombinoschool`
--

-- --------------------------------------------------------

--
-- Structure de la table `bouche`
--

CREATE TABLE `bouche` (
  `id_bouche` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `img_bouche` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `ensemble` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `ensemble` varchar(256) DEFAULT NULL,
  `visage` varchar(255) NOT NULL,
  `yeux` varchar(255) NOT NULL,
  `nez` varchar(255) NOT NULL,
  `bouche` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ensemble`
--

INSERT INTO `ensemble` (`id`, `nom`, `ensemble`, `visage`, `yeux`, `nez`, `bouche`) VALUES
(2, 'Eric', 'face-04.png,eyes-04.png,nez-03.png,bouche-04.png', 'face-04.png', 'eyes-04.png', 'nez-03.png', 'bouche-04.png'),
(3, 'Patrick', 'face-00.png,eyes-00.png,nez-00.png,bouche-00.png', 'face-00.png', 'eyes-00.png', 'nez-00.png', 'bouche-00.png'),
(10, 'Abdelkrim', 'face-03.png,eyes-03.png,nez-03.png,bouche-03.png', 'face-03.png', 'eyes-03.png', 'nez-03.png', 'bouche-03.png'),
(11, 'Thomas', 'face-09.png,eyes-09.png,nez-09.png,bouche-09.png', 'face-09.png', 'eyes-09.png', 'nez-09.png', 'bouche-09.png'),
(14, 'Myhed', 'face-11.png,eyes-11.png,nez-11.png,bouche-11.png', 'face-11.png', 'eyes-11.png', 'nez-11.png', 'bouche-11.png'),
(15, 'Bruise', 'face-11.png,eyes-10.png,nez-12.png,bouche-01.png', 'face-11.png', 'eyes-10.png', 'nez-12.png', 'bouche-01.png'),
(22, 'Panyricrim', 'face-00.png,eyes-02.png,nez-01.png,bouche-03.png', 'face-00.png', 'eyes-02.png', 'nez-01.png', 'bouche-03.png'),
(23, 'Panyricrimo', 'face-00.png,eyes-02.png,nez-01.png,bouche-03.png', 'face-00.png', 'eyes-02.png', 'nez-01.png', 'bouche-03.png'),
(24, 'Pabn', 'face-03.png,eyes-08.png,nez-05.png,bouche-07.png', 'face-03.png', 'eyes-08.png', 'nez-05.png', 'bouche-07.png'),
(25, 'Test', 'face-03.png,eyes-08.png,nez-05.png,bouche-07.png', 'face-03.png', 'eyes-08.png', 'nez-05.png', 'bouche-07.png'),
(26, 'Testas', 'face-03.png,eyes-08.png,nez-04.png,bouche-07.png', 'face-03.png', 'eyes-08.png', 'nez-04.png', 'bouche-07.png'),
(27, 'Testamos', 'face-07.png,eyes-08.png,nez-04.png,bouche-02.png', 'face-07.png', 'eyes-08.png', 'nez-04.png', 'bouche-02.png'),
(28, 'Testimamas', 'face-02.png,eyes-08.png,nez-04.png,bouche-02.png', 'face-02.png', 'eyes-08.png', 'nez-04.png', 'bouche-02.png'),
(29, 'zerg', 'face-09.png,eyes-02.png,nez-08.png,bouche-09.png', 'face-09.png', 'eyes-02.png', 'nez-08.png', 'bouche-09.png');

-- --------------------------------------------------------

--
-- Structure de la table `newsletter`
--

CREATE TABLE `newsletter` (
  `IDNEWSLETTER` int(11) NOT NULL,
  `EMAILNEWSLETTER` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CONTACTNEWSLETTER` varchar(80) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `nez`
--

CREATE TABLE `nez` (
  `id_nez` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `img_nez` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `visage` (
  `id_visage` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `img_visage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `visage`
--

INSERT INTO `visage` (`id_visage`, `nom`, `img_visage`) VALUES
(1, 'Patrick', 'face-00.png'),
(2, 'Jean-Yves', 'face-01.png'),
(3, 'Eric', 'face-02.png'),
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

CREATE TABLE `yeux` (
  `id_yeux` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `img_yeux` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bouche`
--
ALTER TABLE `bouche`
  ADD PRIMARY KEY (`id_bouche`);

--
-- Index pour la table `ensemble`
--
ALTER TABLE `ensemble`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`IDNEWSLETTER`);

--
-- Index pour la table `nez`
--
ALTER TABLE `nez`
  ADD PRIMARY KEY (`id_nez`);

--
-- Index pour la table `visage`
--
ALTER TABLE `visage`
  ADD PRIMARY KEY (`id_visage`);

--
-- Index pour la table `yeux`
--
ALTER TABLE `yeux`
  ADD PRIMARY KEY (`id_yeux`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bouche`
--
ALTER TABLE `bouche`
  MODIFY `id_bouche` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `ensemble`
--
ALTER TABLE `ensemble`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `IDNEWSLETTER` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `nez`
--
ALTER TABLE `nez`
  MODIFY `id_nez` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `visage`
--
ALTER TABLE `visage`
  MODIFY `id_visage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `yeux`
--
ALTER TABLE `yeux`
  MODIFY `id_yeux` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
