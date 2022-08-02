{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarOptionIncludeID] as int) [CarOptionIncludeID],
	cast([SourceCarOptionID] as int) [SourceCarOptionID],
	cast([TargetCarOptionID] as int) [TargetCarOptionID],
	cast([Include] as nvarchar(4000)) [Include],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarOptionInclude_FinalView]