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
  IP_FROM     INT(10) UNSIGNED,
  IP_TO       INT(10) UNSIGNED,
  NO_NODES    INT(10) UNSIGNED,
  LATITUDE    DOUBLE,
  LONGITUDE   DOUBLE,
  ZIP_CODE    VARCHAR(30),
  DATASOURCE  VARCHAR(30),
  INDEX IDX_IP_FROM (ip_from),
  INDEX IDX_IP_TO (ip_to),
  INDEX IDX_NETWORK_SEGMENT (ip_from, ip_to),
  INDEX IDX_NO_NODES (no_nodes)
) Engine=InnoDB charset=latin1;