-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 01 fév. 2021 à 18:51
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionvols`
--

-- --------------------------------------------------------

--
-- Structure de la table `listereservations`
--

CREATE TABLE `listereservations` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `nombreplace` int(11) NOT NULL,
  `prixtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `listereservations`
--

INSERT INTO `listereservations` (`id`, `nom`, `prenom`, `email`, `phone`, `nombreplace`, `prixtotal`) VALUES
(1, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(2, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(3, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(4, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(5, 'Srhayar', 'Taha', 'taha@email.com', '0666666664', 19, 0),
(6, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(7, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(8, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(9, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(10, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(11, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(12, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(13, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(14, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(15, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(16, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666666', 19, 0),
(17, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(18, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(19, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(20, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(21, 'Srhayar', 'Srhayar', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(22, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(23, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 19, 0),
(24, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 0, 0),
(25, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 0, 0),
(26, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 0, 0),
(27, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 0, 0),
(28, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 0, 0),
(29, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 0, 0),
(30, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 0, 0),
(31, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 0, 0),
(32, 'Srhayar', 'Taha', 'tahasrhayar1@gmail.COM', '0666666664', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `listevols`
--

CREATE TABLE `listevols` (
  `id` int(11) NOT NULL,
  `depart` varchar(255) NOT NULL,
  `arrivee` varchar(255) NOT NULL,
  `datevol` date NOT NULL,
  `heuredepart` varchar(20) NOT NULL DEFAULT '14:00',
  `heurearrivee` varchar(20) NOT NULL DEFAULT '16:23',
  `prix` decimal(8,2) NOT NULL DEFAULT 1600.00,
  `places` int(11) NOT NULL DEFAULT 20
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `listevols`
--

INSERT INTO `listevols` (`id`, `depart`, `arrivee`, `datevol`, `heuredepart`, `heurearrivee`, `prix`, `places`) VALUES
(1, 'Safi', 'Dakhla', '2021-01-30', '14:00', '16:23', '1600.00', 20),
(2, 'Safi', 'Tanger', '2021-01-30', '14:00', '16:23', '1600.00', 20),
(3, 'Marrakech', 'Nador', '2021-01-30', '14:00', '16:23', '1600.00', 20),
(4, 'Marrakech', 'Laayoune', '2021-01-30', '14:00', '16:23', '1600.00', 20),
(5, 'Fes', 'Agadir', '2021-01-30', '14:00', '16:23', '1600.00', 20),
(6, 'Fes', 'Rabat', '2021-01-30', '14:00', '16:23', '1600.00', 20),
(7, 'Safi', 'Dakhla', '2021-01-28', '14:00', '16:23', '1600.00', 20),
(8, 'Safi', 'Dakhla', '2021-01-31', '14:00', '16:23', '1600.00', 20),
(9, 'Safi', 'Dakhla', '2021-02-10', '14:00', '16:23', '1600.00', 17),
(10, 'Safi', 'Dakhla', '2021-02-05', '14:00', '16:23', '1600.00', 0),
(11, 'Fes', 'Agadir', '2021-02-03', '14:00', '16:23', '1600.00', 20),
(12, 'Fes', 'Agadir', '2021-02-11', '14:00', '16:23', '1600.00', 20),
(13, 'Fes', 'Agadir', '2021-02-26', '14:00', '16:23', '1600.00', 20);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `listereservations`
--
ALTER TABLE `listereservations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `listevols`
--
ALTER TABLE `listevols`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `listereservations`
--
ALTER TABLE `listereservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `listevols`
--
ALTER TABLE `listevols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
