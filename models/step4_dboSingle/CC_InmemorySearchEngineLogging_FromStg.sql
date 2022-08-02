{{ config(materialized='table',schema='dbo')}}
Select
	cast([LogPK] as int) [LogPK],
	cast([ServerName] as nvarchar(4000)) [ServerName],
	cast([Message] as nvarchar(4000)) [Message],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ThReadID] as int) [ThReadID] 
From stg.[CC_InmemorySearchEngineLogging_FinalView]