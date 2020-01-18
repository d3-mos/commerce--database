--
-- This table contents the operations available by brand. 
-- 
-- Author:   Ricardo Bermúdez Bermúdez
-- Date:     Nov 14th, 2019.
-- Database: CLAROPAY
-- Compose:  CAT_STORE_OPERATION, CAT_STORE
--
CREATE TABLE `CAT_STORE_OPERATION_BY_BRAND` (
  `BRAND_ID`     INT NOT NULL,
  `OPERATION_ID` INT NOT NULL,
  PRIMARY KEY(`BRAND_ID`, `OPERATION_ID`),
  CONSTRAINT `CAT_STORE_OPERATION_BY_BRAND_OPERATION_FK`
    FOREIGN KEY (`OPERATION_ID`)
    REFERENCES  `CAT_STORE_OPERATION` (`ID`)
    ON UPDATE   CASCADE,
  CONSTRAINT `CAT_STORE_OPERATION_BY_BRAND_BRAND_FK`
    FOREIGN KEY (`BRAND_ID`)
    REFERENCES  `CAT_STORE` (`STORE_ID`)
    ON UPDATE   CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 
-- Base data, it requires CAT_STORE and CAT_STORE_OPERATION table are loaded.
-- Uncomment if you need generate data from scratch.
-- 
# INSERT INTO `CAT_STORE_OPERATION_BY_BRAND` (`BRAND_ID`, `OPERATION_ID`)
#   SELECT brand.STORE_ID, operation.ID 
#   FROM CAT_STORE brand
#   JOIN CAT_STORE_OPERATION operation
#   WHERE
#        (brand.STORE = 'Sanborns' and operation.OPERATION_KEY = 'FONDOS')
#     OR (brand.STORE = 'Inbursa'  and operation.OPERATION_KEY = 'FONDOS')
#     OR (brand.STORE = 'Telcel'   and operation.OPERATION_KEY = 'FONDOS')
#     OR (brand.STORE = 'Sanborns' and operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Sears'    and operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Telcel'   and operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'OXXO'     and operation.OPERATION_KEY = 'PAGAR')
#     OR (brand.STORE = 'Inbursa'  and operation.OPERATION_KEY = 'RETIRAR')
#     OR (brand.STORE = 'Telcel'   and operation.OPERATION_KEY = 'RETIRAR');