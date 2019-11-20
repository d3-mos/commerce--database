--
-- On this table are registers with store properties (location, address, etc).
-- 
-- Author:   Ricardo Bermúdez Bermúdez
-- Date:     Nov 14th, 2019
-- Database: CLAROPAY
-- 
CREATE TABLE `CAT_STORE_LOCATION`(
  `ID`             INT NOT NULL AUTO_INCREMENT,
  `BRAND_ID`       INT NOT NULL,
  `ADDRESS`        VARCHAR(300),
  `LATITUDE`       DOUBLE DEFAULT 0.0,
  `LONGITUDE`      DOUBLE DEFAULT 0.0,
  `PAST_ID`        VARCHAR(50),
  `LAST_CHANGE_TS` DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY(`ID`),
  UNIQUE(`BRAND_ID`, `PAST_ID`),
  CONSTRAINT `CAT_STORE_BRAND_FK`
    FOREIGN KEY (`BRAND_ID`)
    REFERENCES `CAT_STORE` (`STORE_ID`)
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;