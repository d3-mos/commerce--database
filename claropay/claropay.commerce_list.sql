
CREATE TABLE commerce_list(
  id         INT AUTO_INCREMENT,
  species    ENUM('OXXO','Inbursa','Telcel','Sanborns', 'Sears'),
  class_name ENUM('ACEPTA_PAGO','RETIRAR','AGREGA_FONDOS'),
  address    VARCHAR(300),
  lat        DOUBLE,
  lng        DOUBLE,
  pastId     VARCHAR(50),
  PRIMARY KEY(id),
  UNIQUE(species, pastId)
) Engine=InnoDB DEFAULT CHARSET='utf8';