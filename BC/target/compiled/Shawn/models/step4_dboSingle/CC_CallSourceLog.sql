
Select
	cast([IpAddress] as nvarchar(4000)) [IPAddress],
	cast([Message] as nvarchar(4000)) [Message],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([AdfDoc] as nvarchar(4000)) [ADFDoc],
	cast([CallSourceLogPK] as int) [CallSourceLogPK],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([Success] as bit) [Success] 
From stg.[CC_CallSourceLog_FinalView]