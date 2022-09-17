{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarOptionIncludeID] as int) [CAROPTIONINCLUDEID],
	cast([SourceCarOptionID] as int) [SOURCECAROPTIONID],
	cast([TargetCarOptionID] as int) [TARGETCAROPTIONID],
	cast([Include] as nvarchar(4000)) [INCLUDE],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_CarOptionInclude_FinalView]