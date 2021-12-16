BULK INSERT sandbox_db..bank_stage
FROM 'C:\Users\Administrator\data_files\bank.csv'
WITH (
FIRSTROW = 2,
FIELDTERMINATOR=',',
CODEPAGE = 65001, -- utf-8
ROWTERMINATOR = '0x0a',
TABLOCK);