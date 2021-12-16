CREATE DATABASE income_statement

CREATE TABLE income_statement..amex(
	Date DATE,
	Card_Member VARCHAR(50),
	Card_Zip VARCHAR(30),
	Amount VARCHAR(30),
	Category VARCHAR(30),
	Type VARCHAR(10),
	File_Year BIGINT,
	YTD_Flag CHAR,
	loaded_at DATETIME NOT NULL
                DEFAULT CURRENT_TIMESTAMP, 
	)

	BULK INSERT  income_statement..amex  
      FROM 'C:\Users\Corbin\scratchpad\amex\amex_combined.csv' 
	  WITH (
	  FIRSTROW = 2,
	  CODEPAGE = 65001, --UTF-8
	  ROWTERMINATOR = '0X0a',
	  TABLOCK);
	  GO

	  SELECT * FROM income_statement..amex 

	  SELECT * 
	  FROM tableau..airbnb_nyc a
	  WHERE price > 500
	 -- AND neighbourhood_group = 'Brooklyn'
	  ORDER BY ID DESC;

	  JOIN ON z.id = a.id

	  SELECT id, host_name, price_of_house, address
	 FROM tableau..zillow_nyc z
