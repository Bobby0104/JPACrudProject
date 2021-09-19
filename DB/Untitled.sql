-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema street_fighterdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `street_fighterdb` ;

-- -----------------------------------------------------
-- Schema street_fighterdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `street_fighterdb` DEFAULT CHARACTER SET utf8 ;
USE `street_fighterdb` ;

-- -----------------------------------------------------
-- Table `Character`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Character` ;

CREATE TABLE IF NOT EXISTS `Character` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  `origin` VARCHAR(45) NOT NULL,
  `fight_style` VARCHAR(45) NOT NULL,
  `special_move` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `table2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `table2` ;

CREATE TABLE IF NOT EXISTS `table2` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `table1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `table1` ;

CREATE TABLE IF NOT EXISTS `table1` (
)
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS streetfightuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'streetfightuser'@'localhost' IDENTIFIED BY 'Bobby0104$';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'streetfightuser'@'localhost';
GRANT ALL ON * TO 'streetfightuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `Character`
-- -----------------------------------------------------
START TRANSACTION;
USE `street_fighterdb`;
INSERT INTO `Character` (`id`, `name`, `gender`, `origin`, `fight_style`, `special_move`) VALUES (1, 'Ryu', 'M', 'Japan', 'Shotokan-style Karate Martial art rooted in assassination arts', 'Shinku Hadoken');
INSERT INTO `Character` (`id`, `name`, `gender`, `origin`, `fight_style`, `special_move`) VALUES (2, 'Ken', 'M', 'USA', 'Shotokan-style Karate Martial art rooted in the assassination arts', 'Tatsumaki Senpuu Kyaku');
INSERT INTO `Character` (`id`, `name`, `gender`, `origin`, `fight_style`, `special_move`) VALUES (3, 'Chun_Li', 'F', 'China', 'Chūgoku Kenpō', 'Whirlwind Kick');
INSERT INTO `Character` (`id`, `name`, `gender`, `origin`, `fight_style`, `special_move`) VALUES (4, 'Guile', 'M', 'USA', 'Marine Corps Martial Arts Program; Martial arts infused with pro wrestling techniques', 'Sonic Boom');
INSERT INTO `Character` (`id`, `name`, `gender`, `origin`, `fight_style`, `special_move`) VALUES (5, 'Cammy', 'F', 'United Kingdom', 'Shadaloo assassin.', 'Cannon Spike');
INSERT INTO `Character` (`id`, `name`, `gender`, `origin`, `fight_style`, `special_move`) VALUES (6, 'Sagat', 'M', 'Thailand', 'Muay Thai', 'Tiger Swing');

COMMIT;

