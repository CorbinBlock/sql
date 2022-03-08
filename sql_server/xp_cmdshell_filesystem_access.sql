declare @dos varchar(100) 
--set @dos = 'pwsh.exe -c "cd C:\Users\Corbin\vs_code_projects\documents_internal\util_powershell; ls; .\get_secrets.ps1 ad"'
set @dos = 'whoami'

EXECUTE master..xp_cmdshell @dos

/*

-- grant nt service\mssqlserver user full control to any folders which require access

xp_cmdshell 'pwsh -c "$KeePassDB = $env:keepass_db
$VParams = @{ Path    = $KeePassDB
Register-SecretVault -Name $VaultName -ModuleName SecretManagement.keepass -VaultParameters"'

--xp_cmdshell 'pwsh.exe -c "Get-ChildItem $env:USERPROFILE"'
*/