DROP DATABASE IF EXISTS sandbox;
CREATE DATABASE sandbox; 

DROP TABLE IF EXISTS netflix;
CREATE TABLE netflix
(
   stock_id SERIAL,
   price_date DATE,
   open_price VARCHAR(40) NOT NULL,
   high_price VARCHAR(40) NOT NULL,
   low_price VARCHAR(40) NOT NULL,
   close_price VARCHAR(40) NOT NULL,
   adj_close VARCHAR(40) NOT NULL,
   volume VARCHAR(40) NOT NULL,
   PRIMARY KEY ( stock_id )
);

LOAD DATA INFILE 'c:/tmp/netflix.csv' 
INTO TABLE sandbox.netflix 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- SQL Error [3948] [42000]: Loading local data is disabled; this must be enabled on both the client and server sides