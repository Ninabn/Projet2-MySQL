-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 20 jan. 2021 à 08:56
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `olfp`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `etudiant_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8 NOT NULL,
  `prenom` varchar(100) CHARACTER SET utf8 NOT NULL,
  `age` int(11) NOT NULL,
  `dateDeNaissance` date NOT NULL,
  `dateDuJour` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sexe` tinyint(1) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `departement` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`etudiant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`etudiant_id`, `nom`, `prenom`, `age`, `dateDeNaissance`, `dateDuJour`, `sexe`, `email`, `departement`) VALUES
(1, 'TOUSETOCK', 'Michael', 46, '1975-01-20', '2021-01-19 14:40:05', 0, 'michael@moi.com', 'ISERE'),
(2, 'COOL', 'Sophie', 37, '1984-02-23', '2021-01-19 14:45:11', 1, 'sophie@hotmail.fr', 'ARDECHE'),
(3, 'PALMER', 'Laura', 46, '1974-01-20', '2021-01-19 14:48:24', 1, 'laura@laposte.net', 'CORSE SUD'),
(4, 'SUPERCOOL', 'Michelle', 19, '2001-01-20', '2021-01-19 14:50:03', 1, 'Michelle@laposte.net', 'ISERE'),
(5, 'JAVADCRIPT', 'Laurent', 39, '1981-01-20', '2021-01-19 14:51:27', 0, 'laurent@google.it', 'GARD'),
(6, 'NODEJS', 'Laetitia', 16, '2004-01-20', '2021-01-19 16:06:09', 1, 'laetitia@gmail.com', 'LOIRE'),
(7, 'JAVA', 'Johnatan', 55, '1965-01-20', '2021-01-19 16:09:17', 0, 'jonhnatan@google.fr', 'LOIRE'),
(8, 'HTML', 'Anita', 32, '1988-01-20', '2021-01-19 16:10:30', 1, 'anita@laposte.net', 'MEUSE'),
(9, 'TAPIN', 'Jean', 78, '1942-01-20', '2021-01-19 16:11:40', 0, 'jean@google.fr', 'MEUSE'),
(10, 'CUBASE', 'Lucie', 31, '1989-01-20', '2021-01-19 16:14:21', 1, 'lucie@gmail.com', 'SAVOIE'),
(11, 'ADOBE', 'Bob', 61, '1959-01-20', '2021-01-19 16:15:38', 0, 'bob@google.com', 'SAVOIE'),
(12, 'VLC', 'Albin', 21, '1999-01-20', '2021-01-19 16:16:56', 0, 'albin@hotmail.com', 'VOSGES'),
(13, 'POWERISO', 'Clementine', 34, '1986-01-20', '2021-01-19 16:18:12', 1, 'clementin@google.it', 'AIN'),
(14, 'C#', 'Anthony', 39, '1982-01-20', '2021-01-19 16:20:54', 0, 'anthony@google.com', 'CORSE'),
(15, 'ALACOOL', 'Jane', 49, '1971-01-20', '2021-01-19 16:22:27', 1, 'jane@google.fr', 'LOIRE'),
(16, 'PYTHON', 'Marcel', 78, '1942-01-20', '2021-01-19 16:23:47', 0, 'marcel@hotmail.fr', 'NORD'),
(17, 'PDO', 'Sabine', 33, '1987-01-20', '2021-01-19 16:24:56', 1, 'sabine@google.uk', 'NORD'),
(18, 'UNITY', 'Léon', 47, '1973-01-20', '2021-01-19 16:26:00', 0, 'leon@unity.com', 'NIEVRE'),
(19, 'RUBY', 'Leila', 35, '1985-01-20', '2021-01-19 16:27:05', 1, 'leila@gmail.fr', 'NIEVRE'),
(20, 'RAILS', 'Moustapha', 58, '1962-01-20', '2021-01-19 16:30:00', 0, 'moustapha@google.fr', 'NORD'),
(21, 'KOTLIN', 'Aicha', 76, '1944-01-20', '2021-01-19 16:31:49', 1, 'aicha@laposte.net', 'VOSGES'),
(22, 'CSS', 'Lola', 86, '1944-01-20', '2021-01-19 16:32:36', 1, 'lola@laposte.net', 'LOIRE'),
(23, 'TWIG', 'Emilie', 46, '1974-01-20', '2021-01-19 16:33:10', 1, 'emilie@gmail.uk', 'SAVOIE'),
(24, 'NOSQL', 'Laura', 54, '1966-01-02', '2021-01-19 16:35:39', 1, 'laura@cool.fr', 'ISERE');

-- --------------------------------------------------------

--
-- Structure de la table `matieres`
--

DROP TABLE IF EXISTS `matieres`;
CREATE TABLE IF NOT EXISTS `matieres` (
  `matiere_id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(200) NOT NULL,
  PRIMARY KEY (`matiere_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matieres`
--

INSERT INTO `matieres` (`matiere_id`, `nom`) VALUES
(1, 'Mathématiques'),
(2, 'Litérature'),
(3, 'Science');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;





--Afficher tous les étudiants dont le nom est palmer.
--SELECT * FROM etudiants WHERE nom = 'PALMER'


--Afficher tous les étudiants qui sont des femmes.
--SELECT * FROM etudiants WHERE sexe = 'Femme'

--Afficher tous les étudiants qui habite un département qui commence par la lettre N.
--SELECT * FROM etudiants WHERE departement LIKE 'N%'

--Afficher tous les étudiants dont l'email contient le mot google.
--SELECT * FROM etudiants WHERE email LIKE '%google%'

--Afficher tous les étudiants trié par département par ordre alphabétique.
--SELECT * FROM etudiants ORDER BY departement

--PLUS TARD « LE CRUD (Create, Read, Update, Delete) des étudiants »
-- SELECT sexe, COUNT(1) AS Frequency FROM etudiants GROUP BY sexe 

--Afficher l'age des étudiants
--SELECT age FROM etudiants

--Afficher la moyenne d'age des étudiants
--SELECT AVG(age) FROM etudiants

--Afficher la matière principale des étudiants
--SELECT id_matieres FROM etudiants

--Afficher les données de l'étudiants numéro 9
--SELECT * FROM `etudiants` WHERE etudiant_id = 9