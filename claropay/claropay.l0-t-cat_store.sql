-- 
-- Inherit table from CLAROPAY database with store (brand) labels and ids.
-- 
-- Date:     Nov 14th, 2019.
-- Database: CLAROPAY
-- 
CREATE TABLE `CAT_STORE` (
  `STORE_ID` INT(11) NOT NULL AUTO_INCREMENT,
  `STORE`    VARCHAR(100) NOT NULL,
  PRIMARY KEY (`STORE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- 
-- Base registers. Uncomment if you need generate data from scratch.
-- 
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('DiamonFire');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Aqua Terra');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('The 54 th');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('LAS JUANAS');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Vapiano');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Blu Lagoon');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Asadero Beef');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('This and This');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Menta Florería');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Sushi Itto');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Jimmy Joe Chicken');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Enrique Tomás');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Costa a costa');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Sanborns');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Sears');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Telcel');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('OXXO');
# INSERT INTO `CAT_STORE` (`STORE`) VALUES('Inbursa');