-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 28 oct. 2022 à 10:55
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `binomontron`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenants_groupes`
--

CREATE TABLE `apprenants_groupes` (
  `id_groupe` int NOT NULL,
  `id_apprenant` int NOT NULL,
  `date_creation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `apprenants_groupes`
--

INSERT INTO `apprenants_groupes` (`id_groupe`, `id_apprenant`, `date_creation`) VALUES
(1, 77, '2022-10-13'),
(1, 74, '2022-10-13'),
(1, 78, '2022-10-13'),
(2, 69, '2022-10-13'),
(2, 66, '2022-10-13'),
(3, 68, '2022-10-13'),
(3, 76, '2022-10-13'),
(4, 73, '2022-10-13'),
(4, 75, '2022-10-13'),
(5, 70, '2022-10-13'),
(5, 67, '2022-10-13'),
(6, 71, '2022-10-13'),
(6, 72, '2022-10-13');

-- --------------------------------------------------------

--
-- Structure de la table `groupes`
--

CREATE TABLE `groupes` (
  `id_groupe` int NOT NULL,
  `libelle` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `groupes`
--

INSERT INTO `groupes` (`id_groupe`, `libelle`) VALUES
(1, 'Groupe1'),
(2, 'Groupe2'),
(3, 'Groupe3'),
(4, 'Groupe4'),
(5, 'Groupe5'),
(6, 'Groupe6'),
(7, 'Groupe7');

-- --------------------------------------------------------

--
-- Structure de la table `liste_apprenants`
--

CREATE TABLE `liste_apprenants` (
  `id_apprenant` int NOT NULL,
  `nom_apprenant` varchar(50) NOT NULL,
  `prenom_apprenant` varchar(50) NOT NULL,
  `mail_apprenant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `liste_apprenants`
--

INSERT INTO `liste_apprenants` (`id_apprenant`, `nom_apprenant`, `prenom_apprenant`, `mail_apprenant`) VALUES
(66, 'LE GRAND', 'Kevin', 'kevin.le-grand@isen-ouest.yncrea.fr'),
(67, 'PETIARD', 'Harold', 'harold.petiard@isen-ouest.yncrea.fr'),
(68, 'SCANU', 'David', 'david.scanu@isen-ouest.yncrea.fr'),
(69, 'ANCELIN', 'Antoine', 'antoine.ancelin@isen-ouest.yncrea.fr'),
(70, 'JOURNAUX', 'Johann', 'johann.journaux@isen-ouest.yncrea.fr'),
(71, 'LEBARBIER', 'Charley', 'charley.lebarbier@isen-ouest.yncrea.fr'),
(72, 'DIABY', 'Amadou', 'amadou.diaby@isen-ouest.yncrea.fr'),
(73, 'DAUMER', 'Geoffroy', 'geoffroy.daumer@isen-ouest.yncrea.fr'),
(74, 'JULES', 'Dimitri', 'dimitri.jules@isen-ouest.yncrea.fr'),
(75, 'GUERIN', 'Basile', 'basile.guerin@isen-ouest.yncrea.fr'),
(76, 'OSWALD', 'Viacheslav', 'viacheslav.oswald@isen-ouest.yncrea.fr'),
(77, 'DUSSART', 'Ramata Soraya', 'ramata-soraya.dussart@isen-ouest.yncrea.fr'),
(78, 'ZOUITEN', 'Guinel', 'guinel.zouiten@isen-ouest.yncrea.fr');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apprenants_groupes`
--
ALTER TABLE `apprenants_groupes`
  ADD KEY `id_apprenant` (`id_apprenant`),
  ADD KEY `id_groupe` (`id_groupe`);

--
-- Index pour la table `groupes`
--
ALTER TABLE `groupes`
  ADD PRIMARY KEY (`id_groupe`),
  ADD UNIQUE KEY `id_groupes` (`id_groupe`),
  ADD UNIQUE KEY `id_groupes_2` (`id_groupe`);

--
-- Index pour la table `liste_apprenants`
--
ALTER TABLE `liste_apprenants`
  ADD PRIMARY KEY (`id_apprenant`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `groupes`
--
ALTER TABLE `groupes`
  MODIFY `id_groupe` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `liste_apprenants`
--
ALTER TABLE `liste_apprenants`
  MODIFY `id_apprenant` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `apprenants_groupes`
--
ALTER TABLE `apprenants_groupes`
  ADD CONSTRAINT `apprenants_groupes_ibfk_1` FOREIGN KEY (`id_apprenant`) REFERENCES `liste_apprenants` (`id_apprenant`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `apprenants_groupes_ibfk_2` FOREIGN KEY (`id_groupe`) REFERENCES `groupes` (`id_groupe`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
