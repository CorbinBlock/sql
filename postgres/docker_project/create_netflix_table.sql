DROP DATABASE IF EXISTS sandbox;
CREATE DATABASE sandbox owner postgres; 

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