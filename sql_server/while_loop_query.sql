DECLARE @RowNum int, @CustId nchar(5), @Name1 nchar(25), @Name2 nchar(25)

SELECT @CustId=MAX(record_id) FROM sandbox_db.dbo.bank     --start with the highest ID
SELECT @RowNum = COUNT(*) From sandbox_db.dbo.bank      --get total number of records
WHILE @RowNum > 0                          --loop until no more records
BEGIN   
    SELECT @Name1 = job, @Name2 = education FROM sandbox_db.dbo.bank WHERE record_id= @CustID    --get other info from that row
    PRINT CAST(@RowNum as char(12)) + ' ' + @CustId + ' ' + @Name1 + @Name2  --perform dynamic actions
    SELECT TOP 1 @CustId=record_id FROM sandbox_db.dbo.bank WHERE record_id < @CustID ORDER BY record_id DESC  --get the next one
    SET @RowNum = @RowNum - 1                               --decrease count
END

--00:01:32 runtime