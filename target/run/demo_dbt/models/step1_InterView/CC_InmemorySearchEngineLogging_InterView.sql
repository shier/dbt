create view "stg"."CC_InmemorySearchEngineLogging_InterView__dbt_tmp" as
    
Select
	[LogPK] [LogPK],
	cast([ServerName] as nvarchar(4000)) [ServerName],
	cast([Message] as nvarchar(4000)) [Message],
	[CreateDateUTC] [CreateDateUTC],
	[ThreadID] [ThReadID]
From stg.[CC_InmemorySearchEngineLogging_Raw]
