-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 13, 2023 at 11:41 PM
-- Server version: 10.3.37-MariaDB-log-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btwijsni_smash`
--

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `collection_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`collection_id`, `user_id`, `name`) VALUES
(1, 1, 'semantic collection name');

-- --------------------------------------------------------

--
-- Table structure for table `collection_pokemon`
--

CREATE TABLE `collection_pokemon` (
  `collection_id` int(11) NOT NULL,
  `pokemon_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `collection_pokemon`
--

INSERT INTO `collection_pokemon` (`collection_id`, `pokemon_class_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `move_legality`
--

CREATE TABLE `move_legality` (
  `move_id` int(11) NOT NULL,
  `pokemon_id` int(11) NOT NULL,
  `legality_age` enum('Bank','Home') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `move_legality`
--

INSERT INTO `move_legality` (`move_id`, `pokemon_id`, `legality_age`) VALUES
(1, 1, 'Bank'),
(1, 1, 'Home'),
(1, 2, 'Bank');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `pokemon_id` int(11) NOT NULL,
  `national_dex_number` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `primary_type` enum('normal','fire','water','electric','grass','fighting','poison','ground','flying','psychic','bug','rock','ghost','dragon','dark','steel','fairy') NOT NULL,
  `secondary_type` enum('normal','fire','water','electric','grass','fighting','poison','ground','flying','psychic','bug','rock','ghost','dragon','dark','steel','fairy') DEFAULT NULL,
  `category` varchar(35) NOT NULL,
  `primary_ability` varchar(35) NOT NULL,
  `secondary_ability` varchar(35) DEFAULT NULL,
  `hidden_ability` varchar(35) DEFAULT NULL,
  `mega_ability` varchar(35) DEFAULT NULL,
  `gender_ratio` enum('0:1','7:1','3:1','1:1','1:3','1:7','1:0') DEFAULT NULL,
  `catch_rate` int(11) NOT NULL,
  `primary_egg_group` enum('monster','water 1','bug','flying','field','fairy','grass','human-like','water 3','mineral','amorphous','water 2','ditto','dragon','undiscovered') NOT NULL,
  `secondary_egg_group` enum('monster','water 1','bug','flying','field','fairy','grass','human-like','water 3','mineral','amorphous','water 2','ditto','dragon','undiscovered','none') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`pokemon_id`, `national_dex_number`, `name`, `primary_type`, `secondary_type`, `category`, `primary_ability`, `secondary_ability`, `hidden_ability`, `mega_ability`, `gender_ratio`, `catch_rate`, `primary_egg_group`, `secondary_egg_group`) VALUES
(1, 1, 'Bulbasaur', 'grass', 'poison', 'Seed', 'Overgrow', '', 'Chlorophyll', '', '7:1', 45, 'monster', 'grass'),
(2, 2, 'Ivysaur', 'grass', 'poison', 'Seed', 'Overgrow', '', 'Chlorophyll', '', '7:1', 45, 'monster', 'grass');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_class`
--

CREATE TABLE `pokemon_class` (
  `pokemon_class_id` int(11) NOT NULL,
  `pokemon_id` int(11) NOT NULL,
  `nickname` varchar(20) NOT NULL,
  `pokeball` enum('Poke Ball','Great Ball','Ultra Ball','Master Ball','Safari Ball','Fast Ball','Level Ball','Lure Ball','Heavy Ball','Love Ball','Friend Ball','Moon Ball','Sport Ball','Net Ball','Dive Ball','Nest Ball','Repeat Ball','Timer Ball','Luxury Ball','Premier Ball','Dusk Ball','Heal Ball','Quick Ball','Cherish Ball','Park Ball','Dream Ball','Beast Ball','Strange Ball','Poke Ball (Hisui)','Great Ball (Hisui)','Ultra Ball (Hisui)','Feather Ball','Wing Ball','Jet Ball','Heavy Ball (Hisui)','Leaden Ball','Gigaton Ball','Origin Ball') NOT NULL,
  `gender` enum('Male','Female','None') NOT NULL,
  `ability` varchar(32) NOT NULL,
  `hp_iv` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31') NOT NULL,
  `atk_iv` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31') NOT NULL,
  `dev_iv` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31') NOT NULL,
  `spa_iv` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31') NOT NULL,
  `spd_iv` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31') NOT NULL,
  `spe_iv` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31') NOT NULL,
  `hp_ev` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','100','101','102','103','104','105','106','107','108','109','110','111','112','113','114','115','116','117','118','119','120','121','122','123','124','125','126','127','128','129','130','131','132','133','134','135','136','137','138','139','140','141','142','143','144','145','146','147','148','149','150','151','152','153','154','155','156','157','158','159','160','161','162','163','164','165','166','167','168','169','170','171','172','173','174','175','176','177','178','179','180','181','182','183','184','185','186','187','188','189','190','191','192','193','194','195','196','197','198','199','200','201','202','203','204','205','206','207','208','209','210','211','212','213','214','215','216','217','218','219','220','221','222','223','224','225','226','227','228','229','230','231','232','233','234','235','236','237','238','239','240','241','242','243','244','245','246','247','248','249','250','251','252','253','254','255') NOT NULL,
  `atk_ev` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','100','101','102','103','104','105','106','107','108','109','110','111','112','113','114','115','116','117','118','119','120','121','122','123','124','125','126','127','128','129','130','131','132','133','134','135','136','137','138','139','140','141','142','143','144','145','146','147','148','149','150','151','152','153','154','155','156','157','158','159','160','161','162','163','164','165','166','167','168','169','170','171','172','173','174','175','176','177','178','179','180','181','182','183','184','185','186','187','188','189','190','191','192','193','194','195','196','197','198','199','200','201','202','203','204','205','206','207','208','209','210','211','212','213','214','215','216','217','218','219','220','221','222','223','224','225','226','227','228','229','230','231','232','233','234','235','236','237','238','239','240','241','242','243','244','245','246','247','248','249','250','251','252','253','254','255') NOT NULL,
  `dev_ev` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','100','101','102','103','104','105','106','107','108','109','110','111','112','113','114','115','116','117','118','119','120','121','122','123','124','125','126','127','128','129','130','131','132','133','134','135','136','137','138','139','140','141','142','143','144','145','146','147','148','149','150','151','152','153','154','155','156','157','158','159','160','161','162','163','164','165','166','167','168','169','170','171','172','173','174','175','176','177','178','179','180','181','182','183','184','185','186','187','188','189','190','191','192','193','194','195','196','197','198','199','200','201','202','203','204','205','206','207','208','209','210','211','212','213','214','215','216','217','218','219','220','221','222','223','224','225','226','227','228','229','230','231','232','233','234','235','236','237','238','239','240','241','242','243','244','245','246','247','248','249','250','251','252','253','254','255') NOT NULL,
  `spa_ev` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','100','101','102','103','104','105','106','107','108','109','110','111','112','113','114','115','116','117','118','119','120','121','122','123','124','125','126','127','128','129','130','131','132','133','134','135','136','137','138','139','140','141','142','143','144','145','146','147','148','149','150','151','152','153','154','155','156','157','158','159','160','161','162','163','164','165','166','167','168','169','170','171','172','173','174','175','176','177','178','179','180','181','182','183','184','185','186','187','188','189','190','191','192','193','194','195','196','197','198','199','200','201','202','203','204','205','206','207','208','209','210','211','212','213','214','215','216','217','218','219','220','221','222','223','224','225','226','227','228','229','230','231','232','233','234','235','236','237','238','239','240','241','242','243','244','245','246','247','248','249','250','251','252','253','254','255') NOT NULL,
  `spd_ev` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','100','101','102','103','104','105','106','107','108','109','110','111','112','113','114','115','116','117','118','119','120','121','122','123','124','125','126','127','128','129','130','131','132','133','134','135','136','137','138','139','140','141','142','143','144','145','146','147','148','149','150','151','152','153','154','155','156','157','158','159','160','161','162','163','164','165','166','167','168','169','170','171','172','173','174','175','176','177','178','179','180','181','182','183','184','185','186','187','188','189','190','191','192','193','194','195','196','197','198','199','200','201','202','203','204','205','206','207','208','209','210','211','212','213','214','215','216','217','218','219','220','221','222','223','224','225','226','227','228','229','230','231','232','233','234','235','236','237','238','239','240','241','242','243','244','245','246','247','248','249','250','251','252','253','254','255') NOT NULL,
  `spe_ev` enum('0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80','81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','100','101','102','103','104','105','106','107','108','109','110','111','112','113','114','115','116','117','118','119','120','121','122','123','124','125','126','127','128','129','130','131','132','133','134','135','136','137','138','139','140','141','142','143','144','145','146','147','148','149','150','151','152','153','154','155','156','157','158','159','160','161','162','163','164','165','166','167','168','169','170','171','172','173','174','175','176','177','178','179','180','181','182','183','184','185','186','187','188','189','190','191','192','193','194','195','196','197','198','199','200','201','202','203','204','205','206','207','208','209','210','211','212','213','214','215','216','217','218','219','220','221','222','223','224','225','226','227','228','229','230','231','232','233','234','235','236','237','238','239','240','241','242','243','244','245','246','247','248','249','250','251','252','253','254','255') NOT NULL,
  `nature` enum('Hardy','Lonely','Adamant','Naughty','Brave','Bold','Docile','Impish','Lax','Relaxed','Modest','Mild','Bashful','Rash','Quiet','Calm','Gentle','Careful','Quirky','Sassy','Timid','Hasty','Jolly','Naive','Serious') NOT NULL,
  `move1` int(11) NOT NULL,
  `move2` int(11) DEFAULT NULL,
  `move3` int(11) DEFAULT NULL,
  `move4` int(11) DEFAULT NULL,
  `originMark` enum('bluePentagon','alolaMark','gameBoyMark','poGoMark','letsGoMark','galarMark','bdspMark','legendsArceusMark','svMark','none') NOT NULL,
  `storage` enum('Bank','Home','None') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pokemon_class`
--

INSERT INTO `pokemon_class` (`pokemon_class_id`, `pokemon_id`, `nickname`, `pokeball`, `gender`, `ability`, `hp_iv`, `atk_iv`, `dev_iv`, `spa_iv`, `spd_iv`, `spe_iv`, `hp_ev`, `atk_ev`, `dev_ev`, `spa_ev`, `spd_ev`, `spe_ev`, `nature`, `move1`, `move2`, `move3`, `move4`, `originMark`, `storage`) VALUES
(1, 1, '*chlory*', 'Dive Ball', 'Female', 'chlorophyll', '31', '31', '31', '31', '31', '31', '0', '0', '0', '0', '0', '0', 'Modest', 1, NULL, NULL, NULL, 'alolaMark', 'Bank'),
(2, 2, 'Ivysaur', 'Poke Ball', 'Male', 'Overgrow', '12', '2', '21', '14', '0', '8', '100', '100', '100', '100', '100', '100', 'Calm', 1, 2, NULL, NULL, 'none', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `pokemon_moves`
--

CREATE TABLE `pokemon_moves` (
  `move_id` int(11) NOT NULL,
  `move_name` varchar(27) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pokemon_moves`
--

INSERT INTO `pokemon_moves` (`move_id`, `move_name`) VALUES
(1, 'Pound'),
(2, 'Karate Chop');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(60) NOT NULL,
  `display_name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `display_name`) VALUES
(1, 'chimichanga42', 'password123', 'Theodore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`collection_id`),
  ADD KEY `id` (`collection_id`),
  ADD KEY `collections_users` (`user_id`);

--
-- Indexes for table `collection_pokemon`
--
ALTER TABLE `collection_pokemon`
  ADD PRIMARY KEY (`collection_id`,`pokemon_class_id`),
  ADD KEY `pokemon_class_link` (`pokemon_class_id`);

--
-- Indexes for table `move_legality`
--
ALTER TABLE `move_legality`
  ADD PRIMARY KEY (`move_id`,`pokemon_id`,`legality_age`) USING BTREE;

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`pokemon_id`),
  ADD UNIQUE KEY `national_dex_number` (`national_dex_number`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `pokemon_id` (`pokemon_id`);

--
-- Indexes for table `pokemon_class`
--
ALTER TABLE `pokemon_class`
  ADD PRIMARY KEY (`pokemon_class_id`) USING BTREE,
  ADD KEY `pokemon_class_id` (`pokemon_class_id`),
  ADD KEY `class_to_pokemon` (`pokemon_id`),
  ADD KEY `class_to_move1` (`move1`),
  ADD KEY `class_to_move2` (`move2`),
  ADD KEY `class_to_move3` (`move3`),
  ADD KEY `class_to_move4` (`move4`);

--
-- Indexes for table `pokemon_moves`
--
ALTER TABLE `pokemon_moves`
  ADD PRIMARY KEY (`move_id`),
  ADD KEY `move_id` (`move_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `collection_id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `pokemon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pokemon_class`
--
ALTER TABLE `pokemon_class`
  MODIFY `pokemon_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pokemon_moves`
--
ALTER TABLE `pokemon_moves`
  MODIFY `move_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collections`
--
ALTER TABLE `collections`
  ADD CONSTRAINT `collections_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `collection_pokemon`
--
ALTER TABLE `collection_pokemon`
  ADD CONSTRAINT `collection_link` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`collection_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pokemon_class_link` FOREIGN KEY (`pokemon_class_id`) REFERENCES `pokemon_class` (`pokemon_class_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `move_legality`
--
ALTER TABLE `move_legality`
  ADD CONSTRAINT `pokemon_link` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`pokemon_id`);

--
-- Constraints for table `pokemon_class`
--
ALTER TABLE `pokemon_class`
  ADD CONSTRAINT `class_to_move1` FOREIGN KEY (`move1`) REFERENCES `pokemon_moves` (`move_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `class_to_move2` FOREIGN KEY (`move2`) REFERENCES `pokemon_moves` (`move_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `class_to_move3` FOREIGN KEY (`move3`) REFERENCES `pokemon_moves` (`move_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `class_to_move4` FOREIGN KEY (`move4`) REFERENCES `pokemon_moves` (`move_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `class_to_pokemon` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`pokemon_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
