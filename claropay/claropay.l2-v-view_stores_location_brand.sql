--
-- Store view to genereta a join from CAT_STORE_LOCATION and CAT_STORE table.
--
-- Author: Ricardo Bermúdez Bermúde
-- Since:  Nov 20th, 2019.
--
CREATE ALGORITHM=MERGE VIEW VIEW_STORES_LOCATION_BRAND AS
  select 
  sl.ID,
  sl.BRAND_ID,
  s.STORE as BRAND_TOKEN,
  sl.ADDRESS,
  sl.LATITUDE,
  sl.LONGITUDE,
  sl.PAST_ID
  from CAT_STORE_LOCATION sl
  inner join CAT_STORE s on sl.BRAND_ID=s.STORE_ID;