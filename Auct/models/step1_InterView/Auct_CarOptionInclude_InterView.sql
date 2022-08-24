{{ config(materialized='view',schema='stg')}}
Select
	[CAROPTIONINCLUDEID] [CarOptionIncludeID],
	[SOURCECAROPTIONID] [SourceCarOptionID],
	[TARGETCAROPTIONID] [TargetCarOptionID],
	cast([INCLUDE] as nvarchar(4000)) [Include],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarOptionInclude_Raw]
