CREATE OR REPLACE FUNCTION countDupesBankOZK()
RETURNS TABLE (dupeCount bigint)
AS $$
BEGIN
	RETURN query
	SELECT COUNT(recordid) AS DUPECOUNT 
	FROM 
	(SELECT recordid, ROW_NUMBER() OVER (partition BY amount, description, balance ORDER BY loaddate) AS rnum FROM bankozk) t 
	WHERE t.rnum > 1;
END;
$$ language plpgsql;
