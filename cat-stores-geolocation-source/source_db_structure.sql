GRANT ALL PRIVILEGES ON etl_source_simulation.* TO etlsource@'%' identified BY 'etlsource';
GRANT ALL PRIVILEGES ON etl_source_simulation.* TO etlsource@'localhost' identified BY 'etlsource';

FLUSH PRIVILEGES;

CREATE DATABASE etl_source_simulation;
USE etl_source_simulation;

--------
CREATE TABLE cat_emisores (
  consecutivo      int(11) NOT NULL,
  nom_sucursal     varchar(50) DEFAULT NULL,
  estado           varchar(30) DEFAULT NULL,
  ciudad_municipio varchar(50) DEFAULT NULL,
  domicilio        varchar(170) DEFAULT NULL,
  PRIMARY KEY (consecutivo)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table cat_emisores add insert_ts DATETIME DEFAULT CURRENT_TIMESTAMP;

--------
CREATE TABLE cat_oxxo (
  concatenado       varchar(11) NOT NULL,
  cr_plaza          varchar(5) DEFAULT NULL,
  nombre_plaza      varchar(40) DEFAULT NULL,
  cr_tienda         varchar(5) DEFAULT NULL,
  nombretienda      varchar(40) DEFAULT NULL,
  empresa_pertenece varchar(50) DEFAULT NULL,
  num_contrato      int(11) DEFAULT NULL,
  calle             varchar(70) DEFAULT NULL,
  numero            varchar(30) DEFAULT NULL,
  entre_calles      varchar(60) DEFAULT NULL,
  codigo            int(11) DEFAULT NULL,
  franja_front      char(1) DEFAULT NULL,
  colonia           varchar(60) DEFAULT NULL,
  minicipio_dele    varchar(50) DEFAULT NULL,
  ciudad            varchar(60) DEFAULT NULL,
  estado            varchar(60) DEFAULT NULL,
  codigo_area       int(11) DEFAULT NULL,
  telefono          varchar(10) DEFAULT NULL,
  op_con_venta      varchar(12) DEFAULT NULL,
  latitud           double(12,8) DEFAULT NULL,
  longitud          double(12,8) DEFAULT NULL,
  dolares           varchar(7) DEFAULT NULL,
  segmento          varchar(40) DEFAULT NULL,
  fecha_apertura   date DEFAULT NULL,
  PRIMARY KEY (concatenado)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table cat_oxxo add insert_ts DATETIME DEFAULT CURRENT_TIMESTAMP;

--------
CREATE TABLE cat_sanborns (
  no_sucursal         int(11) NOT NULL,
  nom_sucursal        varchar(20) DEFAULT NULL,
  calle_y_numero      varchar(80) DEFAULT NULL,
  colonia             varchar(30) DEFAULT NULL,
  delegacion          varchar(30) DEFAULT NULL,
  localidad_municipio varchar(60) DEFAULT NULL,
  estado              varchar(15) DEFAULT NULL,
  cp                  int(11) DEFAULT NULL,
  responsable         varchar(50) DEFAULT NULL,
  telefono            varchar(40) DEFAULT NULL,
  PRIMARY KEY (no_sucursal)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table cat_sanborns add insert_ts DATETIME DEFAULT CURRENT_TIMESTAMP;

--------
CREATE TABLE cat_sears (
  no_tienda int(11) NOT NULL,
  nombre    varchar(40) DEFAULT NULL,
  plaza     varchar(80) DEFAULT NULL,
  direccion varchar(80) DEFAULT NULL,
  telefono  varchar(30) DEFAULT NULL,
  PRIMARY KEY (no_tienda)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table cat_sears add insert_ts DATETIME DEFAULT CURRENT_TIMESTAMP;

--------
CREATE TABLE cat_telcel (
  id_corresponsal int(11) NOT NULL,
  region          int(11) NOT NULL,
  x               int(11) DEFAULT NULL,
  xx              varchar(6) DEFAULT NULL,
  nombre_cac      varchar(50) DEFAULT NULL,
  estado          varchar(20) DEFAULT NULL,
  ciudad          varchar(40) DEFAULT NULL,
  delegacion      varchar(20) DEFAULT NULL,
  colonia         varchar(60) DEFAULT NULL,
  calle           varchar(70) DEFAULT NULL,
  numero          varchar(65) DEFAULT NULL,
  cp              int(11) DEFAULT NULL,
  municipio       varchar(40) NOT NULL,
  horario         varchar(65) DEFAULT NULL,
  PRIMARY KEY (id_corresponsal, municipio)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

alter table cat_telcel add insert_ts DATETIME DEFAULT CURRENT_TIMESTAMP;

INSERT INTO cat_emisores(consecutivo, nom_sucursal, estado, ciudad_municipio, domicilio)
VALUES
  ('1', 'SUC. D AGUASCALIENTES', 'AGUASCALIENTES', 'AGUASCALIENTES', 'Av. De Las Americas No. 110 P.B Col. Fracc. Las Americas C.P 20230 Aguascalientes, Aguascalientes'),
  ('2', 'SUC. C AGUASCALIENTES PLAZA GALERIAS', 'AGUASCALIENTES', 'AGUASCALIENTES', 'Av. Independencia No. 1703 Centro Comercial Galerias Local 73 - B  Col. Trojes De Alonso C.P. 20116 Aguascalientes, Aguascalientes.'),
  ('3', 'SUC. B AGUASCALIENTES ARENAL', 'AGUASCALIENTES', 'AGUASCALIENTES', 'Av. Universidad No. 2229 - A , Col. San Jose El Arenal, Aguascalientes , Cp. 20130'),
  ('4', 'SUC. A AGUASCALIENTES ALTARIA', 'AGUASCALIENTES', 'AGUASCALIENTES', 'Blvd. A Zacatecas Norte 849 Local 1010 Col. Trojes De Alonso C.P. 20116 Aguascalientes. Ags.'),
  ('5', 'SUC. A AGUASCALIENTES FRANCIA', 'AGUASCALIENTES', 'AGUASCALIENTES', 'Fco. I. Madero No. 111 Col. Centro C.P. 20000 Aguascalientes, Ags.');

INSERT INTO cat_oxxo(concatenado, cr_plaza, nombre_plaza, cr_tienda, nombretienda, empresa_pertenece, num_contrato, calle, numero, entre_calles, codigo, franja_front, colonia, minicipio_dele, ciudad, estado, codigo_area, telefono, op_con_venta, latitud, longitud, dolares, segmento, fecha_apertura)
VALUES
  ('10AGC500NG', '10AGC', 'Aguascalientes', '500NG', 'Dorado AGU', 'CADENA COMERCIAL OXXO SA. DE CV.', '4156598', 'AV. LAS AMERICAS', 'LOCAL 33 C', 'DENTRO DEL CENTRO COMERCIAL EL DORADO', '20235', 'N', 'EL DORADO', 'AGUASCALIENTES', 'AGUASCALIENTES', 'AGUASCALIENTES', '0', '0', 'SI OPERATIVA', '21.86363553', '-102.30414901', 'NO', 'RECESO', '2018-09-16'),
  ('10AGC500TB', '10AGC', 'Aguascalientes', '500TB', 'Gas Villasuncion AGU', 'CADENA COMERCIAL OXXO SA. DE CV.', '4100373', 'AV. MAHATMA GANDHI', 'S/N', 'ABRAHAM GONZALEZ Y SIGLO XXI SUR', '20280', 'N', 'PRADOS DE VILLASUNCION', 'AGUASCALIENTES', 'AGUASCALIENTES', 'AGUASCALIENTES', '0', '0', 'SI OPERATIVA', '21.84812644', '-102.29349782', 'NO', 'RECESO', '2016-10-13'),
  ('10AGC500TM', '10AGC', 'Aguascalientes', '500TM', 'Puerta Norte AGU', 'CADENA COMERCIAL OXXO SA. DE CV.', '4141680', 'CARRETERA 45 NORTE', 'S/N', 'AGS-COSIO', '20460', 'N', 'COSIO', 'COSIO', 'COSIO', 'AGUASCALIENTES', '0', '0', 'SI OPERATIVA', '22.37220000', '-102.29860000', 'NO', 'RECESO', '2018-04-07'),
  ('10AGC501X9', '10AGC', 'Aguascalientes', '501X9', 'Geronimo de la Cueva AGU', 'CADENA COMERCIAL OXXO SA. DE CV.', '4100374', 'Geronimo de la Cueva', '1', 'Esquina Jose de Jesus Gonzalez', '20126', 'N', 'VILLA DE NUESTRA SEÑORA DE LA ASUNCION', 'AGUASCALIENTES', 'AGUASCALIENTES', 'AGUASCALIENTES', '0', '0', 'SI OPERATIVA', '21.93145191', '-102.26064275', 'NO', 'HOGAR', '2016-10-20'),
  ('10AGC5021I', '10AGC', 'Aguascalientes', '5021I', 'Artillero Mier AGU', 'CADENA COMERCIAL OXXO SA. DE CV.', '4106229', 'ARTILLERO MIER', 'S/N', 'ESQ. HEROE INMORTAL', '20140', 'N', 'MORELOS', 'AGUASCALIENTES', 'AGUASCALIENTES', 'AGUASCALIENTES', '0', '0', 'SI OPERATIVA', '21.85403308', '-102.26921861', 'NO', 'BASE', '2016-11-23');

INSERT INTO cat_sanborns(no_sucursal, nom_sucursal, calle_y_numero, colonia, delegacion, localidad_municipio, estado, cp, responsable, telefono)
VALUES
  ('1001', 'MADERO', 'AV. FCO I.  MADERO NO. 4 ', 'CENTRO', '', 'MEXICO', 'CDMX', '6500', '', '55-55121331 / 55127824'),
  ('1002', 'CHURUBUSCO', 'AV. COYOACAN NO. 2000', 'XOCO', '', 'MEXICO', 'CDMX', '3339', '', '55-56054044 / 56054224'),
  ('1003', 'REFORMA (CERRADA)', 'PASEO DE LA REFORMA No. 45', 'TABACALERA', '', 'MEXICO', 'CDMX', '6030', '', '55-57050032 / 57050206'),
  ('1006', 'INSURGENTES (CERRADA', 'INSURGENTES SUR NO 421', 'HIPODROMO CONDESA', '', 'MEXICO', 'CDMX', '6170', '', '55-55646197 / 55646300'),
  ('1007', 'TIBER  (CIERRA EL 31', 'PASEO DE LA REFORMA NO 333 ', 'CUAUHTEMOC', '', 'MEXICO', 'CDMX', '6500', '', '55-55257545 / 55258401');

INSERT INTO cat_sears(no_tienda, nombre, plaza, direccion, telefono)
VALUES
  ('51', 'RIO', 'Plaza Río', 'Paseo de los Héroes No. 95-C Gral. Anaya C.P. 22320  Tijuana Baja Cali', 'Tel. (664) 684-0424'),
  ('52', 'ENSENADA', 'Plaza Comercial', 'Av. Ruiz No. 328 Zona Centro C.P. 22800 Baja California Norte', 'Tel. (646) 178-3483'),
  ('53', 'EL PALACIO DE LOS PERFUMES', '', 'Av. López Mateos No. 911 Zona Centro C.P. 22800  Ensenada, Baja Califo', 'Tel. (646) 178-2270'),
  ('55', 'LA PAZ', '', 'Av. 16 de Septiembre No. 111 Zona Centro C.P. 23000  La Paz, Baja Cali', 'Tel. (612) 125-9373'),
  ('56', 'OTAY', 'CC Mesa de Otay', 'Carret. Aeropuerto No. 1900 L-21 Zona Centro C.P. 22380  Tijuana Baja ', 'Tel. (664) 623-2020');

INSERT INTO cat_telcel(id_corresponsal, region, x, xx, nombre_cac, estado, ciudad, delegacion, colonia, calle, numero, cp, municipio, horario)
VALUES
  ('101', '1', '1101', 'TELCEL', 'CAC RIO TIJUANA', 'BC', 'TIJUANA', '', 'COL. ZONA URBANA RIO TIJUANA', 'PASEO DE LOS HEROES', '9539', '22320', 'TIJUANA', 'L- V 8 A 19 HRS'),
  ('102', '1', '1102', 'TELCEL', 'CAC MEXICALI', 'BC', 'MEXICALI', '', 'COL. CUAUHTEMOC SUR', 'CALZADA JUSTO SIERRA', '#51 LOCAL 17', '21200', 'MEXICALI', 'L- V 9 A 19 HRS'),
  ('103', '1', '1103', 'TELCEL', 'CAC LA PAZ I', 'BCS', 'La Paz', '', 'SECTOR INALAPA', 'BLVD CONSTITUYENTES DE 1975', '#4120 LOC S-01 AL S-06', '23098', 'La Paz', 'L- V 9 A 19 HRS'),
  ('104', '1', '1104', 'TELCEL', 'CAC CABO SAN LUCAS', 'BCS', 'CABO SAN LUCAS ', '', 'COL. EL MEDANO', 'BLVD. LAZARO CARDENAS', 'S/N LOCAL 26', '23479', 'CABO SAN LUCAS', 'L-V 8 A 19 HRS'),
  ('105', '1', '1105', 'TELCEL', 'CAC ENSENADA', 'BC', 'ENSENADA', '', 'COL. ZONA CENTRO', 'Riveroll', 'No 425', '22800', 'ENSENADA', 'L- V 9 A 19 HRS');