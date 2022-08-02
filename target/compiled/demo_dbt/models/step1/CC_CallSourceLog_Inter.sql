
Select
	[CallSourceLogPK] [CallSourceLogPK],
	cast([IPAddress] as nvarchar(4000)) [IpAddress],
	cast([Message] as nvarchar(4000)) [Message],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([ADFDoc] as nvarchar(4000)) [AdfDoc],
	cast([IPAddress] as nvarchar(4000)) [IpAddress],
	cast([Message] as nvarchar(4000)) [Message],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([ADFDoc] as nvarchar(4000)) [AdfDoc],
	[CallSourceLogPK] [CallSourceLogPK],
	[CreateDateUTC] [CreateDateUTC],
	[CreateDateUTC] [CreateDateUTC],
	[Success] [Success],
	[Success] [Success]
From stg.[CC_CallSourceLog_Raw]