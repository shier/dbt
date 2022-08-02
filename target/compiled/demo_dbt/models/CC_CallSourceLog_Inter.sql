
Select
	CreateDateUTC CreateDateUTC,
	CallSourceLogPK CallSourceLogpk,
	Success Success,
	cast(IPAddress as nvarchar(4000)) IpAddress,
	cast(Message as nvarchar(4000)) Message,
	cast(UserAgent as nvarchar(4000)) UserAgent,
	cast(ADFDoc as nvarchar(4000)) AdfDoc
From CC_CallSourceLog_Raw