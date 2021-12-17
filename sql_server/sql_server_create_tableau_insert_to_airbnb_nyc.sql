CREATE DATABASE tableau

SELECT TOP 1000 CATALOG_NAME FROM INFORMATION_SCHEMA.SCHEMATA

CREATE TABLE airbnb_nyc(
	file_id NOT NULL AUTO_INCREMENT,
	id BIGINT,
	name VARCHAR(200),
	host_id VARCHAR(50),
	host_name VARCHAR(50),
	neighbourhood_group VARCHAR(50),
	neighbourhood VARCHAR(50),
	latitude VARCHAR(50),
	longitude VARCHAR(50),
	room_type VARCHAR(75),
	price VARCHAR(75),
	minimum_nights VARCHAR(50),
	number_of_reviews VARCHAR(50),
	last_review VARCHAR(50),
	reviews_per_month VARCHAR(50),
	calculated_host_listings_count VARCHAR(50),
	availability_365 VARCHAR(50),
	)


--DROP TABLE tableau..airbnb_nyc

BULK INSERT  tableau..airbnb_nyc  
      FROM 'C:\Users\Corbin\OneDrive - Block Consulting\file_dump\datasets\airbnb_nyc\airbnb_nyc_dec_2019_no_comma.csv' 
	  WITH (
	  FIRSTROW = 2,
	--  FIELD_TERMINATOR = '\t',
	  CODEPAGE = 65001, --UTF-8
	  ROWTERMINATOR = '0X0a',
	  TABLOCK);

/*
CREATE LOGIN  WITH PASSWORD = '';

create user  for login 

USE tableau
GO
Grant select on airbnb_nyc to 
*/

