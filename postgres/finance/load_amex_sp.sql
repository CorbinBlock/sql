CREATE PROCEDURE loadAmex()
LANGUAGE SQL
AS $$
COPY amex(Date,Description,Amount) FROM '/home/ec2-user/sql/activity.csv' DELIMITER ',' CSV HEADER
$$;
