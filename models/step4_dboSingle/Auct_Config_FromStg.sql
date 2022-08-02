{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConfigID] as int) [ConfigID],
	cast([Stub1] as nvarchar(4000)) [Stub1],
	cast([Stub2] as nvarchar(4000)) [Stub2],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Config_FinalView]