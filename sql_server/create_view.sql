CREATE VIEW vw_bank AS (
SELECT age,job,marital,education,default_field,balance,housing,loan,contact,day_field,month_field,duration,campaign,pdays,previous,poutcome,deposit
FROM sandbox_db.dbo.bank_stage
WHERE balance > 0)

--SELECT TOP 100 * FROM sandbox_db.dbo.vw_bank ORDER BY balance DESC