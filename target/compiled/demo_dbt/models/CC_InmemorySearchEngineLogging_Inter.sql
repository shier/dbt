
Select
	CreateDateUTC CreateDateUTC,
	ThreadID ThReadID,
	LogPK Logpk,
	cast(ServerName as nvarchar(4000)) ServerName,
	cast(Message as nvarchar(4000)) Message
From CC_InmemorySearchEngineLogging_Raw