{{ config(materialized='view',schema='stg')}}
Select
	[CONFIGID] [ConfigID],
	cast([STUB1] as nvarchar(4000)) [Stub1],
	cast([STUB2] as nvarchar(4000)) [Stub2],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Config_Raw]
