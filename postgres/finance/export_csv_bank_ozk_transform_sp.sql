CREATE OR REPLACE PROCEDURE exportBankOZKTransform()
LANGUAGE SQL
AS $$
COPY bankOZKTransform TO '/home/ec2-user/sql/bankOZKTransform.csv' DELIMITER ',' CSV HEADER;

$$;
