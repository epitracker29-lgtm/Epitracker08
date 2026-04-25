-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2026 at 02:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"students_db\",\"table\":\"students\"},{\"db\":\"statistiques\",\"table\":\"abgrcs_users\"},{\"db\":\"statistiques\",\"table\":\"abgrcs_options\"},{\"db\":\"statistiques\",\"table\":\"table_02\"},{\"db\":\"statistiques\",\"table\":\"table_01\"},{\"db\":\"epitracker\",\"table\":\"user\"},{\"db\":\"statistiques\",\"table\":\"localisations_sexe\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2026-04-25 12:38:53', '{\"Console\\/Mode\":\"show\",\"ThemeDefault\":\"pmahomme\",\"NavigationWidth\":200,\"lang\":\"en_GB\",\"Console\\/Height\":0}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `statistiques`
--
CREATE DATABASE IF NOT EXISTS `statistiques` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `statistiques`;

-- --------------------------------------------------------

--
-- Table structure for table `abgrcs_options`
--

CREATE TABLE `abgrcs_options` (
  `option_id` int(11) UNSIGNED NOT NULL,
  `option_var` varchar(50) DEFAULT 'public',
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `abgrcs_options`
--

INSERT INTO `abgrcs_options` (`option_id`, `option_var`, `option_value`) VALUES
(1, 'abgrcs_login_logo', 'logo.jpg'),
(2, 'abgrcs_login_background', 'backend.jpg'),
(3, 'abgrcs_website_title', 'EPITRACKER'),
(4, 'abgrcs_website_description', 'Epitracker '),
(5, 'company_name', 'EPITRACKER'),
(6, 'company_address', 'khmis miliana'),
(7, 'company_phone', '00000000 / 0000000000'),
(8, 'company_email', 'epitracker@gmail.com'),
(10, 'company_currency', '€');

-- --------------------------------------------------------

--
-- Table structure for table `abgrcs_users`
--

CREATE TABLE `abgrcs_users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_nom` varchar(250) DEFAULT NULL,
  `user_prenom` varchar(250) DEFAULT NULL,
  `user_login` varchar(100) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_type` enum('admin','gerant','vendeuse') NOT NULL,
  `user_img` varchar(250) DEFAULT 'user_default.jpg',
  `user_added_date` datetime DEFAULT NULL,
  `user_status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `abgrcs_users`
--

INSERT INTO `abgrcs_users` (`user_id`, `user_nom`, `user_prenom`, `user_login`, `user_password`, `user_email`, `user_type`, `user_img`, `user_added_date`, `user_status`) VALUES
(1, 'EPITR', 'ACKER', 'LABDI HOURIA', 'f7d2ede0ee0cb1ded60a813ec20a4f3d', 'labdihouria50@gmail.com', 'admin', 'user_1.jpg', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `table_id` int(11) UNSIGNED NOT NULL,
  `table_type` varchar(50) DEFAULT 'public',
  `table_nom` text DEFAULT NULL,
  `table_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`table_id`, `table_type`, `table_nom`, `table_description`) VALUES
(2, 'table_02', 'localisation par sexe 2014', 'Résumé des Données\r\nCas Totaux\r\nFemmes : 37 cas (100%)\r\nHommes : 66 cas (100%)\r\nTotal : 103 cas (100%)\r\nObservations Clés\r\nTypes de Cancer avec la Plus Haute Incidence chez les Femmes :\r\nCancer du Sein : 8 cas (22%)\r\nCancer du Col Uterin : 8 cas (22%)\r\nCancer du Foie : 2 cas (5%)\r\nTypes de Cancer avec la Plus Haute Incidence chez les Hommes :\r\nCancer de la Prostate : 50 055 cas (7%)—ce chiffre semble anormalement élevé et nécessite probablement des clarifications.\r\nCancer du Poumon (Bronches) : 6 cas (9%)\r\nCancer de l\'Estomac : 13 cas (20%)\r\nDistribution par Sexe :\r\nCancer du Sein est exclusivement présent chez les femmes, soulignant la nécessité d\'une sensibilisation et d\'un dépistage ciblés.\r\nCancer de la Prostate est exclusif aux hommes, mettant en avant l\'importance d\'initiatives de santé spécifiques pour les hommes.\r\nCancers avec une Incidence Faible :\r\nPharynx, Rectum et Anus : Très peu de cas dans les deux sexes.\r\nCancer de la Thyroïde : 1 cas chez les femmes et aucun chez les hommes, indiquant une faible prévalence.\r\nCancers sans Cas chez les Femmes :\r\nLe cancer de la prostate et quelques autres (comme le rectum et l\'anus) n\'ont pas de représentation parmi les patientes féminines.\r\nDistribution en Pourcentage :\r\nLes pourcentages reflètent la proportion de cas par rapport au total pour chaque sexe, fournissant des indications sur les cancers plus communs dans chaque démographie.\r\nAnalyse Comparative\r\nDistribution Générale :\r\nLes femmes représentent 36 % des cas totaux, tandis que les hommes représentent 64 %. Cela suggère une prévalence plus élevée de cancer chez les hommes dans cet ensemble de données.\r\nDomination de Certains Cancers :\r\nLe chiffre du Cancer de la Prostate se démarque significativement ; s\'il est exact, cela pourrait indiquer un problème de santé majeur nécessitant des recherches et des interventions ciblées.\r\nRecommandations\r\nInitiatives de Santé Ciblées :\r\nAugmenter les campagnes de sensibilisation pour les cancers du sein et du col de l\'utérus chez les femmes.\r\nPour les hommes, la sensibilisation au cancer de la prostate est cruciale, surtout compte tenu du nombre élevé signalé.\r\nVérification des Données :\r\nLe chiffre du cancer de la prostate semble être une anomalie. Une enquête plus approfondie est nécessaire pour comprendre son contexte et son exactitude.\r\nDépistage Régulier :\r\nEncourager des dépistages réguliers pour les cancers du sein et de la prostate, car ce sont les cancers les plus fréquents dans leurs sexes respectifs.\r\nRecherche et Ressources :\r\nAllouer des ressources pour enquêter sur les cancers à faible incidence afin de comprendre les facteurs de risque potentiels ou les obstacles au diagnostic.\r\nConclusion\r\nLes données fournissent une vue d\'ensemble complète de l\'incidence des cancers par localisation et sexe, mettant en évidence des tendances significatives et des domaines nécessitant de l\'attention. Comprendre ces schémas peut conduire à des stratégies de santé publique efficaces et améliorer les efforts de prévention et de traitement du cancer. '),
(3, 'table_03', 'Estimation de la population d\'année 2014', 'Résumé des Données\r\nCas Totaux\r\nFemmes : 37 cas (100%)\r\nHommes : 66 cas (100%)\r\nTotal : 103 cas (100%)\r\nObservations Clés\r\nTypes de Cancer avec la Plus Haute Incidence chez les Femmes :\r\nCancer du Sein : 8 cas (22%)\r\nCancer du Col Uterin : 8 cas (22%)\r\nCancer du Foie : 2 cas (5%)\r\nTypes de Cancer avec la Plus Haute Incidence chez les Hommes :\r\nCancer de la Prostate : 50 055 cas (7%)—ce chiffre semble anormalement élevé et nécessite probablement des clarifications.\r\nCancer du Poumon (Bronches) : 6 cas (9%)\r\nCancer de l\'Estomac : 13 cas (20%)\r\nDistribution par Sexe :\r\nCancer du Sein est exclusivement présent chez les femmes, soulignant la nécessité d\'une sensibilisation et d\'un dépistage ciblés.\r\nCancer de la Prostate est exclusif aux hommes, mettant en avant l\'importance d\'initiatives de santé spécifiques pour les hommes.\r\nCancers avec une Incidence Faible :\r\nPharynx, Rectum et Anus : Très peu de cas dans les deux sexes.\r\nCancer de la Thyroïde : 1 cas chez les femmes et aucun chez les hommes, indiquant une faible prévalence.\r\nCancers sans Cas chez les Femmes :\r\nLe cancer de la prostate et quelques autres (comme le rectum et l\'anus) n\'ont pas de représentation parmi les patientes féminines.\r\nDistribution en Pourcentage :\r\nLes pourcentages reflètent la proportion de cas par rapport au total pour chaque sexe, fournissant des indications sur les cancers plus communs dans chaque démographie.\r\nAnalyse Comparative\r\nDistribution Générale :\r\nLes femmes représentent 36 % des cas totaux, tandis que les hommes représentent 64 %. Cela suggère une prévalence plus élevée de cancer chez les hommes dans cet ensemble de données.\r\nDomination de Certains Cancers :\r\nLe chiffre du Cancer de la Prostate se démarque significativement ; s\'il est exact, cela pourrait indiquer un problème de santé majeur nécessitant des recherches et des interventions ciblées.\r\nRecommandations\r\nInitiatives de Santé Ciblées :\r\nAugmenter les campagnes de sensibilisation pour les cancers du sein et du col de l\'utérus chez les femmes.\r\nPour les hommes, la sensibilisation au cancer de la prostate est cruciale, surtout compte tenu du nombre élevé signalé.\r\nVérification des Données :\r\nLe chiffre du cancer de la prostate semble être une anomalie. Une enquête plus approfondie est nécessaire pour comprendre son contexte et son exactitude.\r\nDépistage Régulier :\r\nEncourager des dépistages réguliers pour les cancers du sein et de la prostate, car ce sont les cancers les plus fréquents dans leurs sexes respectifs.\r\nRecherche et Ressources :\r\nAllouer des ressources pour enquêter sur les cancers à faible incidence afin de comprendre les facteurs de risque potentiels ou les obstacles au diagnostic.\r\nConclusion\r\nLes données fournissent une vue d\'ensemble complète de l\'incidence des cancers par localisation et sexe, mettant en évidence des tendances significatives et des domaines nécessitant de l\'attention. Comprendre ces schémas peut conduire à des stratégies de santé publique efficaces et améliorer les efforts de prévention et de traitement du cancer. Si vous avez d\'autres questions ou besoin d\'une analyse supplémentaire, n\'hésitez pas à demander !\r\n\r\nAnalyse this on too in frenche Groupe d’âge masculin féminin\r\n0-4 43271 41212\r\n5-6 36609 34953\r\n10-14 42371 40149\r\n15-19 49537 48152\r\n20-24 50285 48783\r\n25-29 43110 41638\r\n30-34 32818 32159\r\n35-39 26928 27563\r\n40-44 23016 23241\r\n45-49 17043 17693\r\n50-54 15582 15132\r\n55-59 12440 11425\r\n60-64 8528 7911\r\n65-69 7654 6991\r\n70-74 5966 5781\r\n75 et plus 7967 7564\r\nTotale 423125 410617\r\n\r\n\r\nAssistant\r\n\r\nPoe\r\nBien sûr ! Voici l\'analyse des données sur la répartition par groupe d\'âge entre les hommes et les femmes.\r\n\r\nRésumé des Données\r\nTotal par Sexe\r\nMasculin : 423 125\r\nFéminin : 410 617\r\nTotal : 833 742\r\nAnalyse par Groupe d\'Âge\r\nGroupes d\'Âge avec la Plus Haute Population :\r\n15-19 ans : 49 537 hommes et 48 152 femmes.\r\n20-24 ans : 50 285 hommes et 48 783 femmes.\r\nCes tranches d\'âge montrent une population relativement élevée, particulièrement chez les hommes.\r\nGroupes d\'Âge avec la Plus Basse Population :\r\n70-74 ans : 5 966 hommes et 5 781 femmes.\r\n65-69 ans : 7 654 hommes et 6 991 femmes.\r\nCes groupes montrent une diminution progressive de la population.\r\nDistribution par Sexe :\r\nLes hommes représentent une proportion légèrement plus élevée dans presque tous les groupes d\'âge, sauf dans les tranches d\'âge supérieures (55-59 et plus).\r\nÀ partir de 60 ans, la population féminine commence à se rapprocher de la population masculine, soulignant la longévité souvent plus élevée des femmes.\r\nTendances Générales :\r\nJeunes Adultes (15-29 ans) : Les hommes sont plus nombreux, ce qui peut refléter des tendances socioculturelles.\r\nSeniors (65 ans et plus) : La population féminine reste relativement élevée, ce qui est cohérent avec les données sur l\'espérance de vie.\r\nObservations Clés\r\nÉquilibre des Sexes : Bien que les hommes soient en légère majorité (423 125 contre 410 617), cet écart diminue avec l\'âge.\r\nLongévité : Les femmes semblent avoir une espérance de vie plus longue, ce qui est visible dans les groupes d\'âge supérieurs.\r\nPrécautions de Santé : Cette répartition peut informer les politiques de santé publique, en soulignant le besoin de programmes adaptés aux jeunes adultes et aux personnes âgées.\r\nConclusion\r\nLes données montrent une répartition de la population par âge et sexe, avec des implications pour les stratégies de santé publique et les ressources nécessaires. Les hommes sont plus nombreux dans les classes d\'âge plus jeunes, tandis que les femmes dominent dans les groupes d\'âge plus avancés. Des initiatives ciblées peuvent être développées pour répondre aux besoins spécifiques de chaque groupe démographique. '),
(4, 'table_01', 'Localisation de cancer par grade 2014', 'Résumé des Données Total par Grade\r\nGrade I - Bien différencié : 4 cas (4%)\r\nGrade II - Intermédiaire : 2 cas (2%)\r\nGrade III - Faiblement différencié : 1 cas (1%)\r\nGrade IV - Indifférencié : 1 cas (1%)\r\nInconnu : 95 cas (93%)\r\nTotal : 103 cas (100%)\r\nAnalyse par Localisation\r\nCancers avec Cas Identifiés par Grade :\r\nPharynx : 0 cas dans les grades 1 à 4, 1 cas inconnu.\r\nŒsophage : 1 cas de grade II (50%) et 1 inconnu.\r\nEstomac : 1 cas de grade I (25%), 1 cas de grade III (100%), et 15 cas inconnus.\r\nFoie : 4 cas inconnus.\r\nSein : 1 cas de grade I (25%) et 11 cas inconnus.\r\nCerveau : 1 cas de grade II (50%) et 4 cas inconnus.\r\nCancers avec Aucune Identification par Grade :\r\nLa majorité des cancers (comme le rectum, l\'anus, et le pancréas) n\'ont pas de cas identifiés dans les grades I à IV, mais présentent des cas inconnus.\r\nPrévalence des Cas Inconnus :\r\nLa catégorie \"Inconnu\" représente une part significative des données avec 95 cas, soit 93 % du total. Cela souligne un manque de classification des cas, ce qui peut compliquer l\'analyse et le suivi.\r\nObservations Clés\r\nDistribution des Grades :\r\nLa grande majorité des cas ne sont pas classés (93 %), ce qui limite la capacité à évaluer la gravité et l\'évolution des cancers.\r\nCancers avec Identification :\r\nLes cancers de l\'œsophage et de l\'estomac sont les seuls à avoir une identification par grade, ce qui indique qu\'il pourrait y avoir un besoin d\'amélioration dans la collecte ou l\'enregistrement des données pour d\'autres types de cancers.\r\nCancers de Sexe Féminin :\r\nLe cancer du sein a un certain nombre de cas identifiés, mais encore une majorité est inconnue, ce qui pourrait impacter les efforts de dépistage et de recherche.\r\nRecommandations\r\nAmélioration de la Collecte de Données :\r\nIl est crucial d\'améliorer les mécanismes de collecte de données pour assurer que les cas soient correctement classifiés selon leur grade.\r\nSensibilisation et Formation :\r\nFormer le personnel médical à l\'importance de la classification des cancers et de l\'enregistrement des grades pour une meilleure gestion des cas.\r\nRecherche et Suivi :\r\nMener des études pour comprendre les raisons des cas inconnus et établir des protocoles pour mieux suivre les patients.\r\nConclusion\r\nLes données montrent une prévalence élevée de cas inconnus dans le registre du cancer, limitant la capacité à analyser efficacement l\'incidence et la gravité des différents types de cancer. Cela souligne l\'importance d\'une meilleure collecte et classification des données pour améliorer la prise en charge des patients et les initiatives de santé publique.'),
(5, 'table_01', 'localisation de cancer par tranche d\'age  2014', 'Résumé des Données\r\nTotal par Tranche d\'Âge\r\n0 - 9 ans : 4 cas (4%)\r\n10 - 19 ans : 4 cas (4%)\r\n20 - 29 ans : 4 cas (4%)\r\n30 - 39 ans : 3 cas (3%)\r\n40 - 49 ans : 14 cas (14%)\r\n50 - 59 ans : 20 cas (20%)\r\n60 - 69 ans : 21 cas (21%)\r\n70 - 79 ans : 20 cas (20%)\r\n80 - 89 ans : 10 cas (10%)\r\n90 - 99 ans : 3 cas (3%)\r\nTotal : 103 cas (100%)\r\nAnalyse par Localisation\r\nCancers les Plus Fréquemment Diagnostiqués :\r\nSein : 12 cas (12%), surtout dans la tranche d\'âge 40-49 ans (6 cas, 43%).\r\nEstomac : 17 cas (17%), avec une distribution notable dans les tranches d\'âge 50-59 et 60-69 ans.\r\nBronches : 8 cas (8%), répartis assez uniformément dans plusieurs tranches d\'âge.\r\nCancers avec Moins de Cas :\r\nAnus et Colonne : Un seul cas enregistré, essentiellement chez les adultes plus âgés.\r\nThyroïde et Uterus : Chacun avec 1 cas, montrant une faible incidence.\r\nDistribution par Âge :\r\nLa tranche d\'âge 50-59 ans est la plus touchée, représentant 20% des cas, suivie de près par les 60-69 ans avec 21%.\r\nLes cas sont relativement rares chez les jeunes enfants (0-9 ans) et les adolescents (10-19 ans).\r\nTendances Générales :\r\nL\'incidence des cancers semble augmenter avec l\'âge, avec une concentration plus élevée dans les tranches d\'âge plus avancées.\r\nObservations Clés\r\nPrévalence par Âge : Les cancers sont plus fréquents chez les adultes d\'âge moyen et les personnes âgées, ce qui est cohérent avec les données sur l\'incidence du cancer en général.\r\nType de Cancer : Les cancers du sein et de l\'estomac sont prédominants, attirant l\'attention sur la nécessité de programmes de sensibilisation et de dépistage ciblés pour ces types.\r\nRecommandations\r\nProgrammes de Dépistage :\r\nRenforcer les campagnes de dépistage pour les cancers du sein et de l\'estomac, particulièrement chez les femmes âgées de 40 à 69 ans.\r\nSensibilisation :\r\nInformer sur les signes et symptômes des cancers les plus fréquents pour encourager un diagnostic précoce.\r\nRecherche :\r\nMener des études pour explorer les raisons de l\'incidence accrue des cancers dans les tranches d\'âge supérieures et identifier des facteurs de risque potentiels.\r\nConclusion\r\nLes données montrent une tendance à l\'augmentation de l\'incidence du cancer avec l\'âge, avec des types de cancer spécifiques nécessitant une attention particulière. Il est essentiel de développer des initiatives de santé publique et des programmes de sensibilisation pour mieux gérer et prévenir ces cancers. ');

-- --------------------------------------------------------

--
-- Table structure for table `table_01`
--

CREATE TABLE `table_01` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_id` int(11) UNSIGNED NOT NULL,
  `etat` varchar(50) DEFAULT NULL,
  `grade_1` int(11) DEFAULT NULL,
  `grade_1_percent` int(2) DEFAULT NULL,
  `grade_2` int(11) DEFAULT NULL,
  `grade_2_percent` int(2) DEFAULT NULL,
  `grade_3` int(11) DEFAULT NULL,
  `grade_3_percent` int(2) NOT NULL,
  `grade_4` int(11) NOT NULL,
  `grade_4_percent` int(2) NOT NULL,
  `inconnu` int(11) NOT NULL,
  `inconnu_percent` int(2) NOT NULL,
  `total` int(11) NOT NULL,
  `total_percent` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `table_01`
--

INSERT INTO `table_01` (`id`, `table_id`, `etat`, `grade_1`, `grade_1_percent`, `grade_2`, `grade_2_percent`, `grade_3`, `grade_3_percent`, `grade_4`, `grade_4_percent`, `inconnu`, `inconnu_percent`, `total`, `total_percent`) VALUES
(1, 1, 'PHARYNX', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0),
(2, 1, 'ŒSOPHAGE', 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 2, 0),
(3, 1, 'ESTOMAC', 1, 1, 0, 0, 1, 100, 0, 0, 15, 0, 17, 0),
(4, 1, 'COLON', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0),
(5, 1, 'RECTUM', 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 3, 0),
(6, 1, 'ANUS', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0),
(7, 1, 'FOIE', 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 4, 0),
(8, 1, 'VES. BILIAIRE', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0),
(9, 1, 'PANCREAS', 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 6, 0),
(10, 1, 'APP. DIGESTIF', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0),
(11, 1, 'GLOTTE', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0),
(12, 1, 'BRONCHES', 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 8, 0),
(13, 1, 'OS membres', 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 3, 0),
(14, 1, 'SANG', 0, 0, 0, 0, 0, 0, 1, 100, 8, 0, 9, 0),
(15, 1, ' SEIN', 1, 1, 0, 0, 0, 0, 0, 0, 11, 0, 12, 0),
(16, 1, 'COL UTERIN', 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 8, 0),
(17, 1, 'UTERUS', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0),
(18, 1, ' OVAIRE', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(19, 1, ' PROSTATE', 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 5, 0),
(20, 1, ' VESSIE', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0),
(21, 1, 'CERVEAU', 0, 0, 1, 1, 0, 0, 0, 0, 4, 0, 5, 0),
(22, 1, 'THYROIDE', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0),
(23, 1, 'GGL LYMPHATIQUE', 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0),
(24, 1, 'SITE INCONNU', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0),
(25, 1, 'Autres', 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 4, 0),
(29, 1, 'qqqq', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 4, 'PHARYNX', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1),
(34, 25, 'PHARYNX', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(35, 26, 'PHARYNX', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 5, 5),
(37, 27, 'colon ', 2, 2, 1, 1, 4, 4, 2, 2, 2, 2, 11, 11),
(38, 27, 'reins ', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 2, 2),
(43, 2, 'PHARYNX', 2, 2, 1, 1, 1, 1, 0, 0, 1, 1, 4, 4),
(44, 2, 'reins', 2, 2, 1, 1, 0, 0, 0, 0, 0, 0, 3, 3),
(45, 2, 'estamac', 3, 3, 0, 0, 0, 0, 0, 0, 1, 1, 4, 4),
(46, 28, 'OESOPHAGE', 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, 4, 'OESOPHAGE', 0, 0, 1, 50, 0, 0, 0, 0, 1, 1, 2, 2),
(48, 4, 'estamac', 1, 25, 0, 0, 1, 100, 0, 0, 15, 16, 17, 17),
(49, 4, 'colon ', 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2),
(50, 4, 'rectum', 1, 25, 0, 0, 0, 0, 0, 0, 2, 2, 3, 3),
(51, 4, 'anus ', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1),
(52, 4, 'foie ', 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4),
(53, 4, 'vésicule biliaire ', 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `table_02`
--

CREATE TABLE `table_02` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_id` int(11) UNSIGNED NOT NULL,
  `etat` varchar(50) DEFAULT NULL,
  `femme` int(11) DEFAULT NULL,
  `femme_percent` int(2) DEFAULT NULL,
  `homme` int(11) DEFAULT NULL,
  `homme_percent` int(2) DEFAULT NULL,
  `total` int(11) NOT NULL,
  `total_percent` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `table_02`
--

INSERT INTO `table_02` (`id`, `table_id`, `etat`, `femme`, `femme_percent`, `homme`, `homme_percent`, `total`, `total_percent`) VALUES
(1, 2, 'pharynx ', 0, 0, 1, 2, 1, 1),
(2, 2, 'oesophage ', 1, 3, 1, 1, 2, 2),
(3, 2, 'estomac ', 4, 11, 14, 20, 17, 17),
(4, 2, 'colon', 1, 3, 1, 2, 2, 2),
(5, 2, 'rectum', 0, 0, 3, 5, 3, 3),
(6, 2, 'anus ', 0, 0, 1, 2, 1, 1),
(7, 2, 'foie ', 2, 5, 2, 3, 4, 4),
(8, 2, 'vésicule biliaire ', 2, 5, 0, 0, 0, 2),
(9, 2, 'pancréas ', 1, 3, 5, 8, 6, 6),
(10, 2, 'app. degestif', 2, 5, 0, 0, 2, 2),
(11, 2, 'glotte ', 0, 0, 1, 2, 1, 1),
(12, 2, 'bronches ', 2, 5, 6, 9, 8, 8),
(13, 2, 'os membres ', 0, 0, 3, 5, 3, 3),
(14, 2, 'sang', 0, 0, 9, 14, 9, 9),
(15, 2, 'sein ', 8, 22, 4, 6, 12, 12),
(16, 2, 'col.uterin ', 8, 22, 0, 0, 8, 8),
(17, 2, 'uterus', 1, 3, 0, 0, 1, 1),
(18, 2, 'ovaires', 1, 3, 0, 0, 1, 1),
(19, 2, 'prostate ', 0, 0, 5, 7, 5, 5),
(20, 2, 'vessie', 0, 0, 2, 3, 2, 2),
(21, 2, 'UTERUS', 1, 3, 0, 0, 1, 1),
(22, 2, 'VES. BILIAIRE', 2, 5, 0, 0, 2, 2),
(23, 2, 'VESSIE', 0, 0, 2, 3, 2, 2),
(24, 2, 'SITE INCONNU', 1, 3, 0, 0, 1, 1),
(25, 2, 'Autres', 2, 5, 2, 3, 4, 4),
(27, 0, 'PHARYNX', 0, 0, 1, 2, 1, 1),
(28, 0, 'PHARYNX', 0, 0, 1, 2, 1, 1),
(29, 0, 'PHARYNX', 0, 0, 1, 2, 1, 1),
(30, 0, 'PHARYNX', 0, 0, 1, 2, 1, 1),
(31, 0, 'PHARYNX', 2, 2, 3, 3, 5, 5),
(32, 0, 'PHARYNX', 1, 1, 1, 1, 2, 2),
(33, 31, 'colon ', 2, 2, 7, 7, 9, 9),
(34, 31, 'OESOPHAGE', 5, 5, 0, 0, 5, 5),
(35, 31, 'reins ', 8, 8, 2, 2, 10, 10),
(36, 2, 'cerveau ', 0, 0, 5, 8, 5, 5),
(37, 2, 'thyroide', 1, 3, 0, 1, 1, 1),
(38, 2, 'GG lymphatique', 0, 0, 2, 3, 2, 2),
(39, 2, 'site inconnu ', 1, 3, 0, 0, 1, 1),
(40, 2, 'autres ', 2, 5, 2, 3, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `table_03`
--

CREATE TABLE `table_03` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_id` int(11) UNSIGNED NOT NULL,
  `group_age` varchar(5) DEFAULT NULL,
  `femme` int(11) DEFAULT NULL,
  `homme` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `table_03`
--

INSERT INTO `table_03` (`id`, `table_id`, `group_age`, `femme`, `homme`) VALUES
(1, 3, '0-4', 43271, 41212),
(2, 3, '5-9', 36609, 34953),
(3, 3, '10-14', 42371, 40149),
(4, 3, '15-19', 49537, 48152),
(5, 3, '20-24', 50285, 48783),
(6, 3, '25-29', 43110, 41638),
(7, 3, '30-34', 32818, 32159),
(8, 3, '35-39', 26928, 27563),
(9, 3, '40-44', 23016, 23241),
(10, 3, '45-49', 17043, 17693),
(11, 3, '50-54', 15582, 15132),
(12, 3, '55-59', 12440, 11425),
(13, 3, '60-64', 8528, 7911),
(14, 3, '65-69', 7654, 6991),
(15, 3, '70-74', 5966, 5781),
(16, 3, '75-99', 7967, 7564),
(19, 0, '0 - 0', 2147483647, 2147483647),
(20, 0, '0 - 0', 0, 0),
(21, 0, '02-03', 68782, 21546897),
(22, 0, '0 - 0', 0, 0),
(23, 0, '', 0, 0),
(24, 0, '05-10', 100, 150),
(25, 0, '74', 4, 4),
(26, 0, '05-10', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `table_04`
--

CREATE TABLE `table_04` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `0-9` int(11) DEFAULT NULL,
  `10-19` int(11) DEFAULT NULL,
  `20-29` int(11) DEFAULT NULL,
  `30-39` int(11) DEFAULT NULL,
  `40-49` int(11) DEFAULT NULL,
  `50-59` int(11) NOT NULL,
  `60-69` int(11) NOT NULL,
  `70-79` int(11) NOT NULL,
  `80-89` int(11) NOT NULL,
  `90-99` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `total_percent` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `table_04`
--

INSERT INTO `table_04` (`id`, `table_id`, `type`, `0-9`, `10-19`, `20-29`, `30-39`, `40-49`, `50-59`, `60-69`, `70-79`, `80-89`, `90-99`, `total`, `total_percent`) VALUES
(1, 4, 'ANUS', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(2, 4, 'APP. DIGESTIF', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 1),
(3, 4, 'BRONCHES', 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 8, 8),
(4, 4, 'CERVEAU', 0, 1, 1, 0, 0, 3, 0, 0, 0, 0, 5, 5),
(5, 4, 'COL UTERIN', 0, 0, 0, 0, 1, 3, 1, 2, 1, 0, 8, 8),
(6, 4, 'COLON', 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 2, 2),
(7, 4, 'ESTOMAC', 0, 0, 0, 1, 1, 5, 4, 4, 1, 1, 17, 17),
(8, 4, 'FOIE', 0, 0, 0, 0, 1, 0, 2, 1, 0, 0, 4, 4),
(9, 4, 'GGL LYMPHATIQUE', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 2),
(10, 4, 'GLOTTE', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1),
(11, 4, 'OESOPHAGE', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 2),
(12, 4, 'OS membres', 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 3, 3),
(13, 4, 'OVAIRE', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1),
(14, 4, 'PANCREAS', 0, 0, 1, 0, 0, 1, 1, 2, 1, 0, 6, 6),
(15, 4, 'PHARYNX', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1),
(16, 4, 'PROSTATE', 0, 0, 0, 0, 0, 1, 1, 0, 2, 1, 5, 5),
(17, 4, 'RECTUM', 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 3, 3),
(18, 4, 'SANG', 2, 2, 0, 0, 0, 0, 2, 3, 0, 0, 9, 9),
(19, 4, 'SEIN', 0, 0, 0, 0, 6, 3, 2, 0, 1, 0, 12, 12),
(20, 4, 'THYROIDE', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(21, 4, 'UTERUS', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(22, 4, 'VES. BILIAIRE', 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 2, 2),
(23, 4, 'VESSIE', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 2),
(24, 4, 'SITE INCONNU', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1),
(25, 4, 'Autres', 0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 4, 4),
(27, 0, 'ANUS', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(28, 0, 'ANUS', 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 2, 2),
(29, 5, 'ANUS', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1),
(30, 5, 'APP degestif', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 2),
(31, 5, 'bronches ', 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 8, 8),
(32, 5, 'cerveau ', 0, 1, 1, 0, 0, 3, 0, 0, 0, 0, 5, 5),
(33, 5, 'col utérin ', 0, 0, 0, 0, 1, 3, 1, 2, 1, 0, 8, 8),
(34, 5, 'colon ', 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 2, 2),
(35, 5, 'Estomac ', 0, 0, 0, 1, 1, 5, 4, 4, 1, 1, 17, 17),
(36, 5, 'Fois ', 0, 0, 0, 0, 1, 0, 2, 1, 0, 0, 4, 4),
(37, 5, 'GGL Lymphatique ', 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 2),
(38, 5, 'Glotte ', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1),
(39, 5, 'Œsophage ', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 2, 2),
(40, 5, 'Os membres ', 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 3, 3),
(41, 5, 'Ovaires ', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1),
(42, 5, 'Pancréat', 0, 0, 1, 0, 0, 1, 1, 2, 1, 0, 6, 6),
(43, 5, 'pharynxe', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1),
(44, 5, 'prostate ', 0, 0, 0, 0, 0, 1, 1, 0, 2, 1, 5, 5),
(45, 5, 'Rectum ', 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 3, 3),
(46, 5, 'Sang', 2, 2, 0, 0, 0, 0, 2, 3, 0, 0, 9, 9),
(47, 5, 'Sein ', 0, 0, 0, 0, 6, 3, 2, 0, 1, 0, 12, 12),
(48, 5, 'Thyroid', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1),
(49, 5, 'Utérus ', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `table_05`
--

CREATE TABLE `table_05` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_id` int(11) UNSIGNED NOT NULL,
  `nom_et_eprenom` varchar(250) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `numero_telephone` varchar(20) DEFAULT NULL,
  `numero_de_la_famille` varchar(250) DEFAULT NULL,
  `type_de_cancer` varchar(50) DEFAULT NULL,
  `etats_de_trt` varchar(250) NOT NULL,
  `date_dentre` varchar(20) NOT NULL,
  `les_rendivaux` varchar(250) NOT NULL,
  `les_medicaments` varchar(250) NOT NULL,
  `les_radios` varchar(250) NOT NULL,
  `les_analyse` varchar(250) NOT NULL,
  `les_seances` varchar(250) NOT NULL,
  `les_maladies_chroniques` varchar(250) NOT NULL,
  `metastasique` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `table_05`
--

INSERT INTO `table_05` (`id`, `table_id`, `nom_et_eprenom`, `date`, `numero_telephone`, `numero_de_la_famille`, `type_de_cancer`, `etats_de_trt`, `date_dentre`, `les_rendivaux`, `les_medicaments`, `les_radios`, `les_analyse`, `les_seances`, `les_maladies_chroniques`, `metastasique`) VALUES
(1, 0, 'sd', '14', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1'),
(2, 30, 'ze', '14', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `table_06`
--

CREATE TABLE `table_06` (
  `id` int(11) UNSIGNED NOT NULL,
  `table_id` int(11) UNSIGNED NOT NULL,
  `type_de_cancer` varchar(300) DEFAULT NULL,
  `effectif` varchar(300) DEFAULT NULL,
  `remarque` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abgrcs_options`
--
ALTER TABLE `abgrcs_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `abgrcs_users`
--
ALTER TABLE `abgrcs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `member_login` (`user_login`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `table_01`
--
ALTER TABLE `table_01`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_02`
--
ALTER TABLE `table_02`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_03`
--
ALTER TABLE `table_03`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_04`
--
ALTER TABLE `table_04`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_05`
--
ALTER TABLE `table_05`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `table_06`
--
ALTER TABLE `table_06`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abgrcs_options`
--
ALTER TABLE `abgrcs_options`
  MODIFY `option_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `abgrcs_users`
--
ALTER TABLE `abgrcs_users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `table_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `table_01`
--
ALTER TABLE `table_01`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `table_02`
--
ALTER TABLE `table_02`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `table_03`
--
ALTER TABLE `table_03`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `table_04`
--
ALTER TABLE `table_04`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `table_05`
--
ALTER TABLE `table_05`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `table_06`
--
ALTER TABLE `table_06`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `students_db`
--
CREATE DATABASE IF NOT EXISTS `students_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `students_db`;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
