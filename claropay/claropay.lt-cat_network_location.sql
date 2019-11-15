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
CREATE TABLE CAT_NETWORK_LOCATION (
  ip_from     INT(10) UNSIGNED,
  ip_to       INT(10) UNSIGNED,
  no_nodes    INT(10) UNSIGNED,
  latitude    DOUBLE,
  longitude   DOUBLE,
  zip_code    VARCHAR(30),
  datasource  VARCHAR(30),
  INDEX idx_ip_from (ip_from),
  INDEX idx_ip_to (ip_to),
  INDEX idx_ip_network (ip_from, ip_to),
  INDEX idx_no_nodes(no_nodes),
  INDEX idx_datasource( datasource )
) Engine=InnoDB charset=latin1;