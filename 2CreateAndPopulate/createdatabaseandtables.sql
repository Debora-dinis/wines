SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema wines
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `wines` DEFAULT CHARACTER SET utf8 ;
USE `wines` ;

-- -----------------------------------------------------
-- Table `wines`.`Ranking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wines`.`Ranking` (
  `ranking_id` INT NOT NULL AUTO_INCREMENT,
  `ranking` TINYTEXT NOT NULL,
  PRIMARY KEY (`ranking_id`),
  UNIQUE INDEX `ranking_id_UNIQUE` (`ranking_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wines`.`Regions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wines`.`Regions` (
  `region_id` INT NOT NULL AUTO_INCREMENT,
  `region` TINYTEXT NOT NULL,
  PRIMARY KEY (`region_id`),
  UNIQUE INDEX `region_id_UNIQUE` (`region_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wines`.`Varieties`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wines`.`Varieties` (
  `variety_id` INT NOT NULL AUTO_INCREMENT,
  `variety` TINYTEXT NOT NULL,
  PRIMARY KEY (`variety_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wines`.`Photos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wines`.`Photos` (
  `photo_id` INT NOT NULL AUTO_INCREMENT,
  `photoname` TINYTEXT NOT NULL,
  PRIMARY KEY (`photo_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wines`.`Producers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wines`.`Producers` (
  `producer_id` INT NOT NULL AUTO_INCREMENT,
  `producer` TINYTEXT NOT NULL,
  PRIMARY KEY (`producer_id`),
  UNIQUE INDEX `producer_id_UNIQUE` (`producer_id` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `wines`.`Wines`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `wines`.`Wines` (
  `wine_id` INT NOT NULL AUTO_INCREMENT,
  `wine_name` TINYTEXT NOT NULL,
  `year` YEAR NULL,
  `variety_id` INT NOT NULL,
  `producer_id` INT NOT NULL,
  `region_id` INT NOT NULL,
  `price` DECIMAL(5,2) NULL,
  `photo_id` INT NOT NULL,
  `ranking_id` INT NOT NULL,
  `alcoholpercentage` DECIMAL(3,1) NOT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`wine_id`),
  UNIQUE INDEX `wine_id_UNIQUE` (`wine_id` ASC) VISIBLE,
  INDEX `variety_id_idx` (`variety_id` ASC) VISIBLE,
  INDEX `producer_id_idx` (`producer_id` ASC) VISIBLE,
  INDEX `region_id_idx` (`region_id` ASC) VISIBLE,
  INDEX `ranking_id_idx` (`ranking_id` ASC) VISIBLE,
  INDEX `photo_id_idx` (`photo_id` ASC) VISIBLE,
  CONSTRAINT `variety_id`
    FOREIGN KEY (`variety_id`)
    REFERENCES `wines`.`Varieties` (`variety_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `producer_id`
    FOREIGN KEY (`producer_id`)
    REFERENCES `wines`.`Producers` (`producer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `region_id`
    FOREIGN KEY (`region_id`)
    REFERENCES `wines`.`Regions` (`region_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ranking_id`
    FOREIGN KEY (`ranking_id`)
    REFERENCES `wines`.`Ranking` (`ranking_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `photo_id`
    FOREIGN KEY (`photo_id`)
    REFERENCES `wines`.`Photos` (`photo_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
