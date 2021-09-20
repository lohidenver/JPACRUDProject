-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema nes_db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `nes_db` ;

-- -----------------------------------------------------
-- Schema nes_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `nes_db` DEFAULT CHARACTER SET utf8 ;
USE `nes_db` ;

-- -----------------------------------------------------
-- Table `nes_game`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `nes_game` ;

CREATE TABLE IF NOT EXISTS `nes_game` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `year` INT NULL,
  `publisher` VARCHAR(45) NULL,
  `style` VARCHAR(45) NULL,
  `number_players` VARCHAR(200) NULL,
  `wikipedia` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO Mario@localhost;
 DROP USER Mario@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'Mario'@'localhost' IDENTIFIED BY 'Mario';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'Mario'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `nes_game`
-- -----------------------------------------------------
START TRANSACTION;
USE `nes_db`;
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (1, 'The Legend of Zelda', 1986, 'Nintendo', 'action adventure', 'single player', 'https://en.wikipedia.org/wiki/The_Legend_of_Zelda_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (2, 'Blaster Master', 1988, 'Sunsoft', 'run and gun', 'single player', 'https://en.wikipedia.org/wiki/Blaster_Master_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (3, 'Final Fantasy', 1990, 'Square', 'RPG', 'single player', 'https://en.wikipedia.org/wiki/Solomon%27s_Key_2');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (4, 'River City Ransom', 1990, 'Technos Japan', 'beat \'em up', 'multiplayer', 'https://en.wikipedia.org/wiki/River_City_Ransom');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (5, 'Faxandu', 1989, 'Hudson Soft', 'Action role-playing game', 'single player', 'https://en.wikipedia.org/wiki/Faxanadu');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (6, 'Dragon Warrior', 1989, 'Chunsoft/Nintendo', 'role playing', 'single player', 'https://en.wikipedia.org/wiki/Dragon_Quest_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (7, 'Super Mario Bros. 3', 1990, 'Nintendo', 'platformer', 'multiplayer', 'https://en.wikipedia.org/wiki/Super_Mario_Bros._3');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (8, 'Metroid', 1987, 'Nintendo', 'action adventure', 'single player', 'https://en.wikipedia.org/wiki/Metroid_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (9, 'Mega Man 2', 1989, 'Capcom', 'action, platformer', 'single player', 'https://en.wikipedia.org/wiki/Mega_Man_2');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (10, 'Castlevania III: Dracula\'s Curse', 1990, 'Konami', 'action, platformer', 'single player', 'https://en.wikipedia.org/wiki/Castlevania_III:_Dracula%27s_Curse');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (11, 'Metal Storm', 1991, 'Tamtex/Irem', 'action platformer', 'single player', 'https://en.wikipedia.org/wiki/Metal_Storm_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (12, 'Crystalis', 1990, 'SNK', 'action adventure', 'single player', 'https://en.wikipedia.org/wiki/Crystalis');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (13, 'Super Mario Bros. 2', 1988, 'Nintendo', 'platformer', 'multiplayer', 'https://en.wikipedia.org/wiki/Super_Mario_Bros._2');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (14, 'Zelda II: The Adventure of Link', 1988, 'Nintendo', 'action role playing, platform', 'single player', 'https://en.wikipedia.org/wiki/Zelda_II:_The_Adventure_of_Link');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (15, 'Maniac Mansion', 1990, 'Lucasfilm', 'graphic adventure', 'single player', 'https://en.wikipedia.org/wiki/Maniac_Mansion');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (16, 'Bubble Bobble', 1986, 'Taito', 'platformer', 'multiplayer', 'https://en.wikipedia.org/wiki/Bubble_Bobble');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (17, 'StarTropics', 1990, 'Nintendo', 'action adventure', 'single player', 'https://en.wikipedia.org/wiki/StarTropics');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (18, 'Super Dodge Ball', 1989, 'Technos Japan', 'sports', 'multiplayer', 'https://en.wikipedia.org/wiki/Super_Dodge_Ball_(NES_video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (19, 'DuckTales', 1989, 'Capcom', 'platformer', 'single player', 'https://en.wikipedia.org/wiki/DuckTales_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (20, 'Double Dragon', 1988, 'Taito', 'beat \'em up', 'multiplayer', 'https://en.wikipedia.org/wiki/Double_Dragon_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (21, 'Kickle Cubicle', 1990, 'Irem', 'puzzle', 'single player', 'https://en.wikipedia.org/wiki/Kickle_Cubicle');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (22, 'Bionic Commando', 1988, 'Capcom', 'platformer', 'single player', 'https://en.wikipedia.org/wiki/Bionic_Commando_(Nintendo_Entertainment_System)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (23, 'Ninja Gaiden', 1989, 'Tecmo', 'platformer', 'single player', 'https://en.wikipedia.org/wiki/Ninja_Gaiden_(Nintendo_Entertainment_System)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (24, 'Contra', 1987, 'Konami', 'run and gun', 'multiplayer', 'https://en.wikipedia.org/wiki/Contra_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (25, 'Metal Gear', 1988, 'Konami', 'action adventure', 'single player', 'https://en.wikipedia.org/wiki/Metal_Gear_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (26, 'Pac-Man', 1993, 'Namco', 'maze', 'multiplayer', 'https://en.wikipedia.org/wiki/Pac-Man');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (27, 'Duck Hunt', 1985, 'Nintendo', 'sports', 'multiplayer', 'https://en.wikipedia.org/wiki/Duck_Hunt');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (28, 'Mega Man 6', 1994, 'Capcom', 'action, platformer', 'single player', 'https://en.wikipedia.org/wiki/Mega_Man_6');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (29, 'Double Dragon II: The Revenge', 1988, 'Taito', 'beat \'em up', 'multiplayer', 'https://en.wikipedia.org/wiki/Double_Dragon_II:_The_Revenge');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (30, 'Galaga', 1988, 'Namco', 'shooter', 'multi player', 'https://en.wikipedia.org/wiki/Galaga');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (31, 'Mega Man 5', 1992, 'Capcom', 'action, platformer', 'single player', 'https://en.wikipedia.org/wiki/Mega_Man_5');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (32, 'Zoda\'s Revenge: StarTropics II', 1994, 'Nintendo', 'action adventure', 'single player', 'https://en.wikipedia.org/wiki/Zoda%27s_Revenge:_StarTropics_II');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (33, 'EarthBound Beginnings', 1989, 'Ape/Nintendo', 'role playing game', 'single player', 'https://en.wikipedia.org/wiki/Mother_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (34, 'Dr. Mario', 1990, 'Nintendo', 'puzzle', 'multiplayer', 'https://en.wikipedia.org/wiki/Dr._Mario');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (35, 'Ninja Gaiden III: The Ancient Ship of Doom', 1991, 'Tecmo', 'platformer', 'single player', 'https://en.wikipedia.org/wiki/Ninja_Gaiden_III:_The_Ancient_Ship_of_Doom');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (36, 'Blades of Steel', 1988, 'Konami', 'sports', 'multiplayer', 'https://en.wikipedia.org/wiki/Blades_of_Steel');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (37, 'Mega Man 4', 1992, 'Capcom', 'action, platformer', 'single player', 'https://en.wikipedia.org/wiki/Mega_Man_4');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (38, 'Teenage Mutant Ninja Turtles II: The Arcade Game', 1989, 'Konami', 'beat \'em up', 'multiplayer', 'https://en.wikipedia.org/wiki/Teenage_Mutant_Ninja_Turtles_(arcade_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (39, 'Fire \'n Ice', 1993, 'Tecmo', 'Puzzle', 'single player', 'https://en.wikipedia.org/wiki/Solomon%27s_Key_2');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (40, 'Life Force', 1986, 'Konami', 'shooter', 'multiplayer', 'https://en.wikipedia.org/wiki/Salamander_(video_game)#Nintendo_Entertainment_System');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (41, 'Battletoads & Double Dragon', 1993, 'Rare', 'beat \'em up', 'multiplayer', 'https://en.wikipedia.org/wiki/Battletoads_%26_Double_Dragon');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (42, 'Castlevania', 1986, 'Konami', 'platformer', 'single player', 'https://en.wikipedia.org/wiki/Castlevania_(1986_video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (43, 'Dragon Warrior III', 1992, 'Chunsoft/Enix', 'role playing', 'single player', 'https://en.wikipedia.org/wiki/Dragon_Quest_III');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (44, 'Adventure Island II', 1991, 'Hudson Soft', 'platformer', 'single player', 'https://en.wikipedia.org/wiki/Adventure_Island_II');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (45, 'Batman: The Video Game', 1990, 'Sunsoft', 'platformer', 'single player', 'https://en.wikipedia.org/wiki/Batman:_The_Video_Game#NES_version');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (46, 'Super C', 1990, 'Konami', 'run and gun', 'multiplayer', 'https://en.wikipedia.org/wiki/Super_C_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (47, 'Battletoads', 1991, 'Rare', 'beat \'em up', 'multiplayer', 'https://en.wikipedia.org/wiki/Battletoads_(video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (48, 'Dragon Warrior IV', 1990, 'Chunsoft/Enix', 'role playing', 'single player', 'https://en.wikipedia.org/wiki/Dragon_Quest_IV');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (49, 'Super Mario Bros.', 1985, 'Nintendo', 'platformer', 'multiplayer', 'https://en.wikipedia.org/wiki/Super_Mario_Bros.');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (50, 'Kirby\'s Adventure', 1993, 'HAL/Nintendo', 'platformer', 'single player', 'https://en.wikipedia.org/wiki/Kirby%27s_Adventure');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (51, 'Tetris', 1989, 'Nintendo', 'puzzle', 'multiplayer', 'https://en.wikipedia.org/wiki/Tetris_(NES_video_game)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (52, 'Punch-Out!! Featuring Mr. Dream', 1990, 'Nintendo', 'sports', 'single player', 'https://en.wikipedia.org/wiki/Punch-Out!!_(NES)');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (53, 'Gargoyle\'s Quest II: The Demon Darkness', 1992, 'Capcom', 'action adventure', 'single player', 'https://en.wikipedia.org/wiki/Gargoyle%27s_Quest_II');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (54, 'Teenage Mutant Ninja Turtles III: The Manhattan Project', 1992, 'Konami', 'beat \'em up', 'multiplayer', 'https://en.wikipedia.org/wiki/Teenage_Mutant_Ninja_Turtles_III:_The_Manhattan_Project');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (55, 'Mega Man 3', 1990, 'Capcom', 'action, platformer', 'single player', 'https://en.wikipedia.org/wiki/Mega_Man_3');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (56, 'Ninja Gaiden II: The Dark Sword of Chaos', 1990, 'Tecmo', 'platformer', 'single player', 'https://en.wikipedia.org/wiki/Ninja_Gaiden_II:_The_Dark_Sword_of_Chaos');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (57, 'Mighty Final Fight ', 1993, 'Capcom', 'beat em up', 'single player', 'https://en.wikipedia.org/wiki/Mighty_Final_Fight');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (58, 'Adventure Island III', 1992, 'Hudson Soft', 'platformer', 'single player', 'https://en.wikipedia.org/wiki/Adventure_Island_3');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (59, 'Tecmo Super Bowl', 1989, 'Tecmo', 'sports', 'multiplayer', 'https://en.wikipedia.org/wiki/Tecmo_Bowl');
INSERT INTO `nes_game` (`id`, `name`, `year`, `publisher`, `style`, `number_players`, `wikipedia`) VALUES (60, 'Mega Man ', 1987, 'Capcom', 'action, platformer', 'single player', 'https://en.wikipedia.org/wiki/Mega_Man_(1987_video_game)');

COMMIT;

