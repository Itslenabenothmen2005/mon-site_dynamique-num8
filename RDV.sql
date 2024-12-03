-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 18 mars 2024 à 13:58
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
-- Base de données : `gestion_rdv`
--

-- --------------------------------------------------------

--
-- Structure de la table `consultation`
--

CREATE TABLE `consultation` (
  `Matricule` varchar(8) NOT NULL,
  `Code` varchar(8) NOT NULL,
  `DateRDV` date NOT NULL,
  `HeureRDV` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `consultation`
--

INSERT INTO `consultation` (`Matricule`, `Code`, `DateRDV`, `HeureRDV`) VALUES
('M1111', 'P100', '2024-03-19', '16:14:00'),
('M2222', 'P100', '2024-03-20', '20:10:11');

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `Matricule` varchar(8) NOT NULL,
  `NomPrenom` varchar(50) NOT NULL,
  `Tel_Med` varchar(8) NOT NULL,
  `Spécialité` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`Matricule`, `NomPrenom`, `Tel_Med`, `Spécialité`) VALUES
('M1111', 'Mounir ben Ali', '98111222', 'Gastrologue'),
('M2222', 'Salma Cherif', '22555666', 'Cardiologue'),
('M3333', 'Adnen Brahim', '22111333', 'Médecin Généraliste '),
('M4444', 'Ahlem dridi', '55444111', 'Ophtalmologue'),
('M5555', 'Sami Ben Saleh', '23235566', 'Dentiste'),
('M6666', 'Zaineb Lahmar', '99333111', 'Anesthésiste');

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `Code` varchar(8) NOT NULL,
  `NomPrenom` varchar(50) NOT NULL,
  `DateNais` date NOT NULL,
  `Genre` char(1) NOT NULL,
  `Tel_Pat` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`Code`, `NomPrenom`, `DateNais`, `Genre`, `Tel_Pat`) VALUES
('P100', 'Fatma Rhaim', '1980-07-15', 'F', '22444111'),
('P200', 'Salem ben Fredj', '2000-12-05', 'M', '22333111'),
('P300', 'Ahmed Youssef', '1990-10-07', 'M', '52511556');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`Matricule`,`Code`,`DateRDV`,`HeureRDV`),
  ADD KEY `fk1` (`Code`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`Matricule`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
