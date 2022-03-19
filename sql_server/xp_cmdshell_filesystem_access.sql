DECLARE @shell varchar(50)
DECLARE @cmd varchar(500)
DECLARE @option varchar(5)
DECLARE @command_string varchar(500)

SET @cmd = '"Get-CimInstance -ClassName win32_operatingsystem | Select-Object csname, lastbootuptime"'

SET @shell = 'pwsh.exe'
SET @option = '-c' 
SET @command_string = @shell + ' ' + @option + ' ' + @cmd

EXECUTE master..xp_cmdshell @command_string

/*

-- grant nt service\mssqlserver user full control to any folders which require access

xp_cmdshell 'pwsh -c "$KeePassDB = $env:keepass_db
$VParams = @{ Path    = $KeePassDB
Register-SecretVault -Name $VaultName -ModuleName SecretManagement.keepass -VaultParameters"'

--xp_cmdshell 'pwsh.exe -c "Get-ChildItem $env:USERPROFILE"'
*/
