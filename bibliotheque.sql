-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 22 mai 2025 à 23:00
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `id` int(11) NOT NULL,
  `id_livre` int(11) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `date_emprunt` date DEFAULT NULL,
  `date_retour` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`id`, `id_livre`, `id_utilisateur`, `date_emprunt`, `date_retour`) VALUES
(7, 7, 9, '2025-05-18', '2025-05-19'),
(8, 7, 4, '2025-05-18', '2025-05-19'),
(9, 8, 8, '2025-05-18', NULL),
(10, 11, 5, '2025-05-19', '2025-05-19'),
(11, 13, 6, '2025-05-19', NULL),
(12, 8, 4, '2025-05-19', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `auteur` varchar(255) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `annee` int(11) DEFAULT NULL,
  `nb_exemplaires` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `auteur`, `isbn`, `annee`, `nb_exemplaires`) VALUES
(7, 'Le Petit Prince1', 'Antoine de Saint-Exupéry', '9782070612758', 1943, 5),
(8, 'L\'Étranger', 'Albert Camus', '9782070360024', 1942, 3),
(9, 'Harry Potter à l\'école des sorciers', 'J.K. Rowling', '9782070643027', 1997, 7),
(10, 'La Peste', 'Albert Camus', '9782070360420', 1947, 2),
(11, 'Les Misérables', 'Victor Hugo', '9782253004220', 1862, 4),
(12, 'Da Vinci Code', 'Dan Brown', '9782266190616', 2003, 6),
(13, '1984', 'George Orwell', '9782070368228', 1949, 5),
(14, 'La Vie Devant Soi', 'Romain Gary', '9782070363698', 1975, 3),
(15, 'Le Parfum	', 'Patrick Süskind', '9782221052421', 1985, 2),
(16, 'Les Fourmis	', 'Bernard Werber	', '9782226138250	', 1991, 4),
(17, 'Veronika décide de mourir', 'Paulo Coelho', '9782290334574', 1998, 3),
(18, 'La Fille du train', 'Paula Hawkins', '9782266259570', 2015, 2),
(19, 'Ensemble, c\'est tout', 'Anna Gavalda', '9782253115545', 2004, 4);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `numero_adhérent` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `numero_adhérent`) VALUES
(4, 'Ben Ali', 'Sami', 'ADH1001'),
(5, 'Gharbi', 'Lina', 'ADH1002'),
(6, 'Trabelsi ', 'Mourad', 'ADH1003'),
(7, 'Haddad', 'Amina', 'ADH1004'),
(8, 'Jaziri ', 'Nader', 'ADH1005'),
(9, 'Ben Youssef', 'Leïla', 'ADH1006'),
(10, 'Maalej', 'Yasmin', 'ADH1007');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_livre` (`id_livre`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`id_livre`) REFERENCES `livre` (`id`),
  ADD CONSTRAINT `emprunt_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
