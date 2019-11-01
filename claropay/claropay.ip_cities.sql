
--
-- ip_cities table is created to store relations between IP address and
-- geolocation.
--
-- The table contents is available at ip2location website, follow the above
-- link to see more information. Once downloaded the content use the
-- instructions [1] and [2], to load and clean ip locations data.
--
-- Author:   Ricardo Bermúdez Bermúdez
-- Date:     Oct 31th, 2019.
-- Database: claropay
-- Table:    ip_cities
-- Link:     https://lite.ip2location.com/database/ip-country-region-city-latitude-longitude-zipcode
--
CREATE TABLE ip_cities(
	ip_from INT(10) UNSIGNED,
	ip_to INT(10)   UNSIGNED,
	country_code CHAR(2),
	country_name VARCHAR(64),
	region_name  VARCHAR(128),
	city_name    VARCHAR(128),
	latitude     DOUBLE,
	longitude    DOUBLE,
	zip_code     VARCHAR(30),
	INDEX idx_ip_from (ip_from),
	INDEX idx_ip_to (ip_to),
	INDEX idx_ip_from_to (ip_from, ip_to)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 
-- [1] SQL sentence to load data from CSV downloaded from ip2location.
-- 
# LOAD DATA LOCAL
# 	INFILE '<location-file>/IP2LOCATION-LITE-DB9.CSV'
# INTO TABLE
# 	`ip_cities`
# FIELDS TERMINATED BY ','
# ENCLOSED BY '"'
# LINES TERMINATED BY '\r\n'
# IGNORE 0 LINES;

--
-- [2] SQL sentence to delete international locations.
--
# DELETE FROM ip_cities where country_name not like 'Mexico%';