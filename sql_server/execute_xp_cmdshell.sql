declare @dos varchar(800)

/*
,@filepath varchar(500) = 'T:\TEMP\'
,@filename varchar(500) ='ALLYMRG_CUST_DETAIL_20220228_02_ADHOC.txt'

set @dos = 'pwsh.exe -c "Get-LastBootTime"'
set @dos = 'pwsh.exe -c "Get-Creds ad"'
set @dos = 'pwsh.exe -c "C:\Users"'
set @dos = 'pwsh.exe -c "Set-KeepassConfig "'

*/

set @dos = 'pwsh.exe -c "Get-Creds ad"'

print @dos

EXECUTE master..xp_cmdshell @dos