-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 jan. 2022 à 13:55
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `api_jerome`
--

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `email`, `phone_number`) VALUES
(1, 'George', 'Fritsch', 'dConroy@Hermiston.com', '716-189-3454x807'),
(2, 'Felipa', 'Kshlerin', 'Marvin.Emmerich@gmail.com', '1-152-078-2585x399'),
(3, 'Joshua', 'Champlin', 'kSpencer@gmail.com', '09610674190'),
(4, 'Ressie', 'Crooks', 'nGerhold@Feeney.com', '1-105-342-0434'),
(5, 'Raleigh', 'Schmidt', 'Lemke.Bernice@yahoo.com', '740.601.3162'),
(6, 'Stevie', 'Mueller', 'ySawayn@yahoo.com', '1-523-775-7241x4677'),
(7, 'Osvaldo', 'Luettgen', 'Rosa.Miller@Kuhlman.info', '554.684.5246'),
(8, 'Paolo', 'Rau', 'Rodger39@Rowe.com', '09904092673'),
(9, 'Gisselle', 'Gutkowski', 'Idell.Koss@Muller.org', '352-158-9250x614'),
(10, 'John', 'Reilly', 'Gerson.Block@Kuhic.com', '(726)771-3284x24916'),
(11, 'Gus', 'Abshire', 'Alfredo.Windler@yahoo.com', '506.809.5088x49885'),
(12, 'Fiona', 'Kub', 'eKeebler@hotmail.com', '1-683-622-0213'),
(13, 'Caden', 'Corwin', 'Zemlak.Kailee@Hammes.com', '751-686-6063'),
(14, 'Zechariah', 'Parker', 'Leanna.Schroeder@hotmail.com', '1-157-833-3490x36604'),
(15, 'Aracely', 'Predovic', 'Osinski.Marianna@yahoo.com', '1-023-826-8117x195'),
(16, 'Ken', 'Nolan', 'Wilkinson.Savanna@Skiles.info', '951-398-1993x10327'),
(17, 'Daphne', 'Hackett', 'Schumm.Sincere@Gleason.net', '891-086-6399x9455'),
(18, 'Rey', 'Becker', 'rOKeefe@Brakus.info', '(176)671-8806'),
(19, 'Wilfredo', 'Turner', 'Marisol.Treutel@Rempel.com', '894.578.4966x925'),
(20, 'Savion', 'Hermann', 'Paul22@hotmail.com', '130-623-6720'),
(21, 'Marty', 'Bednar', 'Mosciski.Leif@yahoo.com', '1-495-888-9983x47950'),
(22, 'Jennyfer', 'Lockman', 'Wendell38@Gutkowski.com', '096.770.2846'),
(23, 'Reagan', 'Schulist', 'Darron35@Abbott.net', '106.173.9336x15598'),
(24, 'Jakayla', 'Senger', 'Henderson22@Homenick.info', '1-095-480-4907x14502'),
(25, 'Marta', 'Marks', 'Becker.Letha@hotmail.com', '1-707-479-6345x80986'),
(26, 'Eulah', 'Lowe', 'Roy.Koss@Kohler.com', '1-053-637-7498'),
(27, 'Trisha', 'Hodkiewicz', 'Glover.Meredith@Mertz.org', '(678)746-1889'),
(28, 'Jacky', 'Ledner', 'Rolfson.Santiago@yahoo.com', '233-470-8968x4691'),
(29, 'Rowland', 'Bernhard', 'Myrtie34@Walsh.com', '824.937.6141'),
(30, 'Ted', 'Gleichner', 'uHaley@OKeefe.com', '793.457.3746x9351'),
(31, 'Bobbie', 'Larson', 'Watsica.Bessie@yahoo.com', '422-298-3103x8170'),
(32, 'Sabina', 'Sanford', 'Ernser.Tyler@Schneider.org', '(173)757-2494'),
(33, 'Darby', 'Konopelski', 'Matteo93@hotmail.com', '842-914-7722x1783'),
(34, 'Pedro', 'McClure', 'Mariam.Kreiger@yahoo.com', '240.570.8263x7146'),
(35, 'April', 'Herman', 'Madisyn.Prohaska@gmail.com', '(297)934-6851x03728'),
(36, 'Addie', 'Bahringer', 'Destany62@Wuckert.com', '(009)413-6065x858'),
(37, 'Marlene', 'Kris', 'Stanford.Klein@Buckridge.org', '(517)437-8452'),
(38, 'Summer', 'Nienow', 'Cielo00@yahoo.com', '(288)400-2918x07680'),
(39, 'Torrey', 'Collins', 'Adrain20@gmail.com', '1-116-692-5796'),
(40, 'Ashley', 'Cummerata', 'General66@hotmail.com', '(418)040-4963x442'),
(41, 'Gretchen', 'Skiles', 'Harber.Pete@hotmail.com', '(108)747-2677x4013'),
(42, 'Adeline', 'Hessel', 'Rice.Ivy@yahoo.com', '998.365.3176'),
(43, 'Hortense', 'Kshlerin', 'Abby.Harris@yahoo.com', '09805231061'),
(44, 'Baylee', 'Koepp', 'Simone.Feil@Skiles.org', '1-628-334-4932'),
(45, 'Dasia', 'Hammes', 'Padberg.Jayden@yahoo.com', '(966)163-8229x60881'),
(46, 'Teagan', 'Erdman', 'bRaynor@hotmail.com', '453.190.9325x1304'),
(47, 'Hunter', 'Bernier', 'Christop77@Herman.com', '535.200.0423'),
(48, 'Stephania', 'Goyette', 'Cassie.Rau@Swift.com', '(546)137-1754x75166'),
(49, 'Skylar', 'McLaughlin', 'Dillan.Kirlin@hotmail.com', '03148319244'),
(50, 'Krystina', 'Jerde', 'Harris.Mikayla@gmail.com', '(196)823-2617');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220126100158', '2022-01-26 11:02:34', 67);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_81398E09E7927C74` (`email`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
