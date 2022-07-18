-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : database:3306
-- Généré le : mar. 28 juin 2022 à 13:11
-- Version du serveur : 5.7.38
-- Version de PHP : 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vgreen`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

CREATE TABLE `appartient` (
  `pro_id` int(99) NOT NULL,
  `sousRubrique_nom` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `attribuer`
--

CREATE TABLE `attribuer` (
  `cli_id` int(99) NOT NULL,
  `com_id` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `cli_id` int(99) NOT NULL,
  `cli_prenom` varchar(255) DEFAULT NULL,
  `cli_nom` varchar(255) NOT NULL,
  `cli_tel` char(10) NOT NULL,
  `cli_adresse` varchar(50) NOT NULL,
  `cli_couriel` char(50) DEFAULT NULL,
  `cli_CodePostal` char(10) NOT NULL,
  `cli_ville` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`cli_id`, `cli_prenom`, `cli_nom`, `cli_tel`, `cli_adresse`, `cli_couriel`, `cli_CodePostal`, `cli_ville`) VALUES
(1, 'margaux', 'acloque', '123456789', 'Zaap des Koalaks', 'adresse@gmail.com', '80650', 'vignacourt'),
(2, 'gregory', 'maréchal', '123456789', 'Zaap de Tainela', 'adresse@gmail.com', '123980', 'Liege'),
(3, '', 'eunjung', '123456789', '123 Rue de Picardie', 'adresse@gmail.com', '12300', 'vignacourt'),
(4, 'des', 'ralys', '798062751', 'Quelque part en France', 'adresse@gmail.com', '80000', 'sufokia'),
(5, 'boku', 'no pico', '7092006', 'Japon-Tokyo', 'adresse@gmail.com', '100001', 'tokyo'),
(6, 'itz', 'l\'immortel', '123980', 'dans un enclot à tainela', 'adresse@gmail.com', '987456', 'tainela'),
(7, '', 'quinella', '709883951', 'ïle des wabbits', 'adresse@gmail.com', '80650', 'vignacourt');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `comm_id` int(99) NOT NULL,
  `adresse_facturation` varchar(255) DEFAULT NULL,
  `adress_livraison` varchar(255) DEFAULT NULL,
  `comm_quantite` char(3) DEFAULT NULL,
  `hors_taxe` char(5) DEFAULT NULL,
  `tva` char(3) DEFAULT NULL,
  `ttc` decimal(9,6) DEFAULT NULL,
  `comm_date` datetime DEFAULT NULL,
  `cli_id` int(99) NOT NULL,
  `pro_id` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`comm_id`, `adresse_facturation`, `adress_livraison`, `comm_quantite`, `hors_taxe`, `tva`, `ttc`, `comm_date`, `cli_id`, `pro_id`) VALUES
(1, '12 Rue de Rochechouart', '12 Rue de Rochechouart', '999', '12', '12', '12.000000', NULL, 1, 1),
(2, '12 Rue de Rochechouart', '12 Rue de Rochechouart', '999', '12', '12', '12.000000', NULL, 1, 1),
(3, '99243 Luettgen Summi', '99243 Luettgen Summi', '999', '12', '12', '12.000000', NULL, 1, 1),
(4, '99243 Luettgen Summi', '8597 Evie Gardens', '999', '12', '12', '12.000000', NULL, 1, 1),
(5, '99243 Luettgen Summi', '3886 Sylvan Flats', '999', '12', '12', '12.000000', NULL, 1, 1),
(6, '99243 Luettgen Summi', '3886 Sylvan Flats', '999', '12', '12', '12.000000', NULL, 1, 1),
(7, '99243 Luettgen Summi', '3886 Sylvan Flats', '999', '12', '12', '12.000000', NULL, 1, 1),
(8, '99243 Luettgen Summi', '3886 Sylvan Flats', '999', '12', '12', '12.000000', NULL, 1, 1),
(9, '99243 Luettgen Summi', '3886 Sylvan Flats', '999', '12', '12', '12.000000', NULL, 1, 1),
(10, '99243 Luettgen Summi', '3886 Sylvan Flats', '999', '12', '12', '12.000000', NULL, 1, 1),
(11, '99243 Luettgen Summi', '3886 Sylvan Flats', '999', '12', '12', '12.000000', NULL, 1, 1),
(12, '99243 Luettgen Summi', '3886 Sylvan Flats', '999', '12', '12', '12.000000', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `commercial`
--

CREATE TABLE `commercial` (
  `com_id` int(99) NOT NULL,
  `com_prenom` varchar(255) DEFAULT NULL,
  `com_nom` varchar(255) NOT NULL,
  `com_tel` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commercial`
--

INSERT INTO `commercial` (`com_id`, `com_prenom`, `com_nom`, `com_tel`) VALUES
(1, 'jean jack', 'baptiste', '123456'),
(2, 'jean jack', 'baptiste', '123456'),
(3, 'jean kevin', 'raoul', '123456'),
(4, 'barnabé', 'ducul', '123456'),
(5, 'yvon', 'bienveillant', '123456'),
(6, 'claude', 'gaulois', '123456'),
(7, 'philippe', 'pinet', '123456');

-- --------------------------------------------------------

--
-- Structure de la table `fait_partie_de`
--

CREATE TABLE `fait_partie_de` (
  `rub_nom` char(50) NOT NULL,
  `sousRubrique_nom` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `four_nom` char(255) NOT NULL,
  `four_CodePostal` char(10) NOT NULL,
  `four_ville` varchar(255) DEFAULT NULL,
  `four_courriel` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`four_nom`, `four_CodePostal`, `four_ville`, `four_courriel`) VALUES
('AFPA', '80000', 'Amiens', 'adrese@gmail.com'),
('ENI', '123458', 'Amiens', 'adrese@gmail.com'),
('eunjung', '80650', 'vignacourt', 'adresse@gmail.com'),
('Liegoise', '80001', 'Amiens', 'adrese@gmail.com'),
('Maximo', '80030', 'Amiens', 'adrese@gmail.com'),
('Menpway', '80000', 'Amiens', 'adrese@gmail.com'),
('NoN', '123456', 'tainela', 'email@gmail.com'),
('Promeo', '80002', 'Amiens', 'adrese@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `livrer`
--

CREATE TABLE `livrer` (
  `pro_id` int(99) NOT NULL,
  `comm_id` int(99) NOT NULL,
  `liv_id` int(99) NOT NULL,
  `liv_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `pro_id` int(99) NOT NULL,
  `pro_nom` varchar(255) NOT NULL,
  `pro_quantite` char(3) DEFAULT NULL,
  `pro_prix` decimal(9,6) NOT NULL,
  `pro_descrption` varchar(255) DEFAULT NULL,
  `pro_photo` varchar(255) DEFAULT NULL,
  `four_nom` char(255) NOT NULL,
  `pro_ref` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`pro_id`, `pro_nom`, `pro_quantite`, `pro_prix`, `pro_descrption`, `pro_photo`, `four_nom`, `pro_ref`) VALUES
(1, 'c\'est de la merde', '17', '24.900000', 'vraiment minable', NULL, 'NoN', 'rejeton'),
(2, 'c\'est de la merde', '17', '24.900000', 'vraiment minable', NULL, 'NoN', 'rejeton'),
(3, 'claqué au sol', '17', '24.900000', 'ngez', NULL, 'NoN', 'rejeton'),
(4, 'tasse à pied', '17', '24.900000', ',e,zn,goi', NULL, 'NoN', 'rejeton'),
(5, 'gobelet naze', '17', '24.900000', 'gnieronge', NULL, 'NoN', 'rejeton'),
(6, 'masagrand', '17', '24.900000', 'gnzeoingezn', NULL, 'NoN', 'rejeton'),
(7, 'relou de service', '17', '24.900000', 'gneoizngoieni', NULL, 'NoN', 'rejeton'),
(8, 'chepa', '17', '24.900000', 'ropg,opergg,e', NULL, 'NoN', 'rejeton');

-- --------------------------------------------------------

--
-- Structure de la table `reference`
--

CREATE TABLE `reference` (
  `pro_ref` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reference`
--

INSERT INTO `reference` (`pro_ref`) VALUES
('galon'),
('gobelet'),
('itézed'),
('playmobile'),
('rejeton'),
('tasse'),
('verre');

-- --------------------------------------------------------

--
-- Structure de la table `rubrique`
--

CREATE TABLE `rubrique` (
  `rub_nom` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sous_rubrique`
--

CREATE TABLE `sous_rubrique` (
  `sousRubrique_nom` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD PRIMARY KEY (`pro_id`,`sousRubrique_nom`),
  ADD KEY `sousRubrique_nom` (`sousRubrique_nom`);

--
-- Index pour la table `attribuer`
--
ALTER TABLE `attribuer`
  ADD PRIMARY KEY (`cli_id`,`com_id`),
  ADD KEY `com_id` (`com_id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cli_id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`comm_id`),
  ADD KEY `cli_id` (`cli_id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Index pour la table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`com_id`);

--
-- Index pour la table `fait_partie_de`
--
ALTER TABLE `fait_partie_de`
  ADD PRIMARY KEY (`rub_nom`,`sousRubrique_nom`),
  ADD KEY `sousRubrique_nom` (`sousRubrique_nom`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`four_nom`);

--
-- Index pour la table `livrer`
--
ALTER TABLE `livrer`
  ADD PRIMARY KEY (`pro_id`,`comm_id`),
  ADD KEY `comm_id` (`comm_id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `four_nom` (`four_nom`),
  ADD KEY `pro_ref` (`pro_ref`);

--
-- Index pour la table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`pro_ref`);

--
-- Index pour la table `rubrique`
--
ALTER TABLE `rubrique`
  ADD PRIMARY KEY (`rub_nom`);

--
-- Index pour la table `sous_rubrique`
--
ALTER TABLE `sous_rubrique`
  ADD PRIMARY KEY (`sousRubrique_nom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `cli_id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `comm_id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `com_id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `pro_id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `appartient`
--
ALTER TABLE `appartient`
  ADD CONSTRAINT `appartient_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `produit` (`pro_id`),
  ADD CONSTRAINT `appartient_ibfk_2` FOREIGN KEY (`sousRubrique_nom`) REFERENCES `sous_rubrique` (`sousRubrique_nom`);

--
-- Contraintes pour la table `attribuer`
--
ALTER TABLE `attribuer`
  ADD CONSTRAINT `attribuer_ibfk_1` FOREIGN KEY (`cli_id`) REFERENCES `client` (`cli_id`),
  ADD CONSTRAINT `attribuer_ibfk_2` FOREIGN KEY (`com_id`) REFERENCES `commercial` (`com_id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`cli_id`) REFERENCES `client` (`cli_id`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `produit` (`pro_id`);

--
-- Contraintes pour la table `fait_partie_de`
--
ALTER TABLE `fait_partie_de`
  ADD CONSTRAINT `fait_partie_de_ibfk_1` FOREIGN KEY (`rub_nom`) REFERENCES `rubrique` (`rub_nom`),
  ADD CONSTRAINT `fait_partie_de_ibfk_2` FOREIGN KEY (`sousRubrique_nom`) REFERENCES `sous_rubrique` (`sousRubrique_nom`);

--
-- Contraintes pour la table `livrer`
--
ALTER TABLE `livrer`
  ADD CONSTRAINT `livrer_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `produit` (`pro_id`),
  ADD CONSTRAINT `livrer_ibfk_2` FOREIGN KEY (`comm_id`) REFERENCES `commande` (`comm_id`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `produit_ibfk_1` FOREIGN KEY (`four_nom`) REFERENCES `fournisseur` (`four_nom`),
  ADD CONSTRAINT `produit_ibfk_2` FOREIGN KEY (`pro_ref`) REFERENCES `reference` (`pro_ref`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
