SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema springdata
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `springdata` ;
CREATE SCHEMA IF NOT EXISTS `springdata` DEFAULT CHARACTER SET utf8 ;
USE `springdata` ;

-- -----------------------------------------------------
-- Table `springdata`.`tb_user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `springdata`.`tb_user` ;

CREATE TABLE IF NOT EXISTS `springdata`.`tb_user` (
  `PK_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` VARCHAR(30) NOT NULL,
  `PASSWORD` VARCHAR(127) NOT NULL,
  `REGISTER_DATE` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `AGE` INT(11) NOT NULL,
  PRIMARY KEY (`PK_ID`),
  UNIQUE INDEX `LOGIN_UNIQUE` (`LOGIN` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;