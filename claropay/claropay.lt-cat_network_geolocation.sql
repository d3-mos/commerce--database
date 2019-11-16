--
-- This table was created to store relations between an IP address and
-- one geolocation.
--
-- The table contents is available at ip2location and Geolite website, 
-- follow the above links to see more information. 
--
-- Author:   Ricardo Bermúdez Bermúdez
-- Date:     Oct 31th, 2019.
-- Database: CLAROPAY
-- Link:     https://lite.ip2location.com/database/ip-country-region-city-latitude-longitude-zipcode
-- Link:     https://dev.maxmind.com/geoip/geoip2/geolite2/
-- 

CREATE TABLE CAT_NETWORK_GEOLOCATION (
  `IP_TO`      bigint(20) NOT NULL,
  `IP_FROM`    bigint(20) NOT NULL,
  `DATASOURCE` varchar(255) NOT NULL,
  `LATITUDE`   double DEFAULT NULL,
  `LONGITUDE`  double DEFAULT NULL,
  `MODIFY_TS`  datetime DEFAULT NULL,
  `NO_NODES`   bigint(20) DEFAULT NULL,
  `ZIP_CODE`   varchar(255) DEFAULT NULL,
  INDEX `IDX_IP_FROM` (`IP_FROM`),
  INDEX `IDX_IP_TO` (`IP_TO`),
  INDEX `IDX_NETWORK_SEGMENT` (`IP_FROM`, `IP_TO`)
) Engine=InnoDB charset=latin1;