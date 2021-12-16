CREATE OR REPLACE PROCEDURE exportDateDimension()
LANGUAGE SQL
AS $$
COPY d_date TO '/home/ec2-user/sql/dateDimension.csv' DELIMITER ',' CSV HEADER;

$$;
