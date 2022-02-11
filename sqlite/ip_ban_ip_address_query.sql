select 
IPAddress,
IPAddressText,
--strftime('%Y-%m-%d-%t', LastFailedLogin  / 1000, 'unixepoch') as 
LastFailedLogin,
FailedLoginCount,
BanDate,
State,
BanEndDate,
UserName,
Source
from IPAddresses i