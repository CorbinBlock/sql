COPY netflix
(
   price_date,
   open_price,
   high_price,
   low_price,
   close_price,
   adj_close,
   volume
) FROM 'c:/tmp/netflix.csv' DELIMITER ',' CSV HEADER;