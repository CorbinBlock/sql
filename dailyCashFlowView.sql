CREATE VIEW cashFlowDaily AS
SELECT date, SUM(amount) AS dailycashflow FROM bankozk GROUP BY date ORDER BY date DESC;
