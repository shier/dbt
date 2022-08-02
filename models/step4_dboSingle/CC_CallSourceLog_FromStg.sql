{{ config(materialized='table',schema='dbo')}}
Select
	cast([CallSourceLogPK] as int) [CallSourceLogPK],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([Message] as nvarchar(4000)) [Message],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([AdfDoc] as nvarchar(4000)) [AdfDoc],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([Success] as bit) [Success] 
From stg.[CC_CallSourceLog_FinalView]