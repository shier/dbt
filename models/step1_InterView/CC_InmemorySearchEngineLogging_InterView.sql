{{ config(materialized='view',schema='stg')}}
Select
	[LogPK] [LogPK],
	cast([ServerName] as nvarchar(4000)) [ServerName],
	cast([Message] as nvarchar(4000)) [Message],
	[CreateDateUTC] [CreateDateUTC],
	[ThreadID] [ThReadID]
From stg.[CC_InmemorySearchEngineLogging_Raw]
