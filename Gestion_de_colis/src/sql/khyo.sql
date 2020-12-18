-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 18 déc. 2020 à 09:30
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
-- Base de données : `khyo`
--

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `Id_Adresse` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `complement_adresse` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `code_postale` varchar(50) DEFAULT NULL,
  `pays` varchar(50) NOT NULL,
  `type` enum('expediteur','destinataire') DEFAULT NULL,
  PRIMARY KEY (`Id_Adresse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `type_categorie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `colis`
--

DROP TABLE IF EXISTS `colis`;
CREATE TABLE IF NOT EXISTS `colis` (
  `id_colis` int(11) NOT NULL AUTO_INCREMENT,
  `Longueur` int(11) NOT NULL,
  `largueur` int(11) NOT NULL,
  `valeur_declarer` int(11) DEFAULT NULL,
  `hauteur` int(11) NOT NULL,
  `valeur_colis` int(11) DEFAULT NULL,
  `poids_colis` decimal(15,2) NOT NULL,
  `référence_colis` varchar(50) DEFAULT NULL,
  `id_type_envoie` int(11) NOT NULL,
  `id_transporteur` int(11) NOT NULL,
  `id_tarif` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id_colis`),
  KEY `id_type_envoie` (`id_type_envoie`),
  KEY `id_transporteur` (`id_transporteur`),
  KEY `id_tarif` (`id_tarif`),
  KEY `id_categorie` (`id_categorie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_envoi` int(11) NOT NULL AUTO_INCREMENT,
  `nb_colis` int(11) NOT NULL,
  `etats_envoi` enum('envoyer','en attente','livrée') NOT NULL,
  `date_commande` date NOT NULL,
  `libelle_etats_envoi` varchar(50) DEFAULT NULL,
  `description_envoie` varchar(50) NOT NULL,
  `contenue_envoie_` varchar(50) DEFAULT NULL,
  `montant_commande` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `Id_Adresse` int(11) NOT NULL,
  PRIMARY KEY (`id_envoi`),
  KEY `id_user` (`id_user`),
  KEY `Id_Adresse` (`Id_Adresse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compose`
--

DROP TABLE IF EXISTS `compose`;
CREATE TABLE IF NOT EXISTS `compose` (
  `id_envoi` int(11) NOT NULL,
  `id_colis` int(11) NOT NULL,
  `quantité` int(11) NOT NULL,
  PRIMARY KEY (`id_envoi`,`id_colis`),
  KEY `id_colis` (`id_colis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `grille_tarifaire`
--

DROP TABLE IF EXISTS `grille_tarifaire`;
CREATE TABLE IF NOT EXISTS `grille_tarifaire` (
  `id_tarif` int(11) NOT NULL AUTO_INCREMENT,
  `tarif` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id_tarif`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `transporteur`
--

DROP TABLE IF EXISTS `transporteur`;
CREATE TABLE IF NOT EXISTS `transporteur` (
  `id_transporteur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_transporteur` varchar(50) NOT NULL,
  `ville_transporteur` varchar(50) NOT NULL,
  `code_postal_transporteur` varchar(50) NOT NULL,
  `tarif_au_km` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_transporteur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `type_envoie`
--

DROP TABLE IF EXISTS `type_envoie`;
CREATE TABLE IF NOT EXISTS `type_envoie` (
  `id_type_envoie` int(11) NOT NULL AUTO_INCREMENT,
  `libele_type_envoie` varchar(50) NOT NULL,
  PRIMARY KEY (`id_type_envoie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `_user`
--

DROP TABLE IF EXISTS `_user`;
CREATE TABLE IF NOT EXISTS `_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nom_user` varchar(50) NOT NULL,
  `prenom_user` varchar(50) NOT NULL,
  `adresse_user` varchar(50) DEFAULT NULL,
  `telephone_user` varchar(11) DEFAULT NULL,
  `mdp_user` varchar(50) NOT NULL,
  `ville_user` varchar(50) NOT NULL,
  `code_postal_user` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `_user`
--

INSERT INTO `_user` (`id_user`, `nom_user`, `prenom_user`, `adresse_user`, `telephone_user`, `mdp_user`, `ville_user`, `code_postal_user`, `email`) VALUES
(1, 'thiebaut', 'samantha', '20 promenade claude ', NULL, '', '', NULL, ''),
(2, 'dorothee', 'melica', 'rue de la ville', NULL, '', '', NULL, 'meli@hotmail.fr'),
(3, 'Joyce', 'Wu', '20 rue auber', '123', '0670143587', 'paris', '50124', 'wu@gmail.com'),
(4, 'christne', 'chen', 'rue de bobigny', '123', '0670142588', 'bobigny', '75010', 'chen@hotmail.fr'),
(5, 'dominique', 'lembert', '190 rue du fb st-denis', '123', '0142589964', 'paris', '75014', 'doudou@gmail.com'),
(6, 'Marcel', 'bragance', '20 rue du paradis', '1234', '0670143587', 'paris', '75010', 'mar@hotmail.fr'),
(7, 'Joyce', 'Wu', '20 rue auber', '0670143587', '1234', 'paris', '50124', 'wu@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
