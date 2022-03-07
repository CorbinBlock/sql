declare @dos varchar(800)

/*
,@filepath varchar(500) = 'C:\tmp\'

set @dos = 'pwsh.exe -c "Get-ACL"'
set @dos = 'pwsh.exe -c "Get-ChildItem $env:USERPROFILE"'
set @dos = 'pwsh.exe -c "Get-LastBootTime"'
set @dos = 'pwsh.exe -c "Get-Creds ad"'
set @dos = 'pwsh.exe -c "netsh advfirewall firewall add rule name = SQLPort dir = in protocol = tcp action = allow localport = 1433 remoteip = localsubnet profile = DOMAIN"'
set @dos = 'pwsh.exe -c "C:\Users"'
set @dos = 'pwsh.exe -c "Set-KeepassConfig "'

*/

set @dos = 'pwsh.exe -c "netsh advfirewall firewall add rule name = SQLPort dir = in protocol = tcp action = allow localport = 1433 remoteip = localsubnet profile = DOMAIN"'

print @dos

EXECUTE master..xp_cmdshell @dos