INSERT INTO sandbox_db.dbo.bank(age,job,marital,education,default_field,balance,housing,loan,contact,day_field,month_field,duration,campaign,pdays,previous,poutcome,deposit) 
   SELECT age,job,marital,education,default_field,balance,housing,loan,contact,day_field,month_field,duration,campaign,pdays,previous,poutcome,deposit
   FROM sandbox_db.dbo.bank_stage