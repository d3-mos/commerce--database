-- 
-- This table contents the definitions of operations availables with stores
-- partners of Claro Pay.
-- 
-- Author:   Ricardo Bermúdez Bermúdez
-- Date:     Nov 14th, 2019.
-- Database: CLAROPAY
-- 
CREATE TABLE CAT_STORE_OPERATION(
    `ID`            INT NOT NULL AUTO_INCREMENT,
    `OPERATION_KEY` VARCHAR(30),
    PRIMARY KEY(ID)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Base registers.
-- 
INSERT INTO `CAT_STORE_OPERATION` (`OPERATION_KEY`) VALUES('FONDOS');
INSERT INTO `CAT_STORE_OPERATION` (`OPERATION_KEY`) VALUES('PAGAR');
INSERT INTO `CAT_STORE_OPERATION` (`OPERATION_KEY`) VALUES('RETIRAR');