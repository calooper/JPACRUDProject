-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema campsitedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `campsitedb` ;

-- -----------------------------------------------------
-- Schema campsitedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `campsitedb` DEFAULT CHARACTER SET utf8 ;
USE `campsitedb` ;

-- -----------------------------------------------------
-- Table `campsite`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `campsite` ;

CREATE TABLE IF NOT EXISTS `campsite` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NULL,
  `latitiude_decimal_degrees` DOUBLE NOT NULL,
  `longitude_decimal_degrees` DOUBLE NOT NULL,
  `state` VARCHAR(45) NULL,
  `mountain_range` VARCHAR(45) NULL,
  `date_visited` DATE NULL,
  `pics` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS camper@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'camper'@'localhost' IDENTIFIED BY 'camper';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'camper'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `campsite`
-- -----------------------------------------------------
START TRANSACTION;
USE `campsitedb`;
INSERT INTO `campsite` (`id`, `description`, `latitiude_decimal_degrees`, `longitude_decimal_degrees`, `state`, `mountain_range`, `date_visited`, `pics`) VALUES (1, 'fun place', 39.460907, -105.579836, 'Colorado', 'RMNP', '2019-10-10', NULL);
INSERT INTO `campsite` (`id`, `description`, `latitiude_decimal_degrees`, `longitude_decimal_degrees`, `state`, `mountain_range`, `date_visited`, `pics`) VALUES (2, 'cold ', 39.460000, -105.400000, 'Colorado', 'San Grio', '2019-09-08', NULL);
INSERT INTO `campsite` (`id`, `description`, `latitiude_decimal_degrees`, `longitude_decimal_degrees`, `state`, `mountain_range`, `date_visited`, `pics`) VALUES (3, 'in the mountains', 39.460907, -105.579836, 'New Mexico', 'RMNP', '2019-09-08', NULL);
INSERT INTO `campsite` (`id`, `description`, `latitiude_decimal_degrees`, `longitude_decimal_degrees`, `state`, `mountain_range`, `date_visited`, `pics`) VALUES (4, 'hot', 39.460907, -105.579836, 'Oklahoma', 'RMNP', '2019-09-08', NULL);
INSERT INTO `campsite` (`id`, `description`, `latitiude_decimal_degrees`, `longitude_decimal_degrees`, `state`, `mountain_range`, `date_visited`, `pics`) VALUES (5, 'dry', 39.460907, -105.579836, 'Colorado', 'RMNP', '2019-09-08', NULL);
INSERT INTO `campsite` (`id`, `description`, `latitiude_decimal_degrees`, `longitude_decimal_degrees`, `state`, `mountain_range`, `date_visited`, `pics`) VALUES (6, 'wet', 39.460907, -105.579836, 'Colorado', 'RMNP', '2019-09-08', NULL);
INSERT INTO `campsite` (`id`, `description`, `latitiude_decimal_degrees`, `longitude_decimal_degrees`, `state`, `mountain_range`, `date_visited`, `pics`) VALUES (7, 'test', 35.083021, -106.646247, 'NM', 'not sure', '2019-09-08', NULL);

COMMIT;

