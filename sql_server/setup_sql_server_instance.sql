-- Allow Remote access

EXEC sp_configure 'remote access', 0 ;  
GO  
RECONFIGURE ;  
GO  

-- Change authentication method to mixed

USE [master]
GO
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', 
     N'Software\Microsoft\MSSQLServer\MSSQLServer',
     N'LoginMode', REG_DWORD, 1
GO

-- Enable SA login and set new password:

ALTER LOGIN sa ENABLE ;  
GO  
ALTER LOGIN sa WITH PASSWORD = '<enterStrongPasswordHere>' ;  
GO  

