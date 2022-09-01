{{ config(materialized='view',schema='stg')}}
Select
	[CallSourceLogPK] [CallSourceLogPK],
	cast([IPAddress] as nvarchar(4000)) [IpAddress],
	cast([Message] as nvarchar(4000)) [Message],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([ADFDoc] as nvarchar(4000)) [AdfDoc],
	[CreateDateUTC] [CreateDateUTC],
	[Success] [Success]
From stg.[CC_CallSourceLog_Raw]
