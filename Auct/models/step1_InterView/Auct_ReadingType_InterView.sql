{{ config(materialized='view',schema='stg')}}
Select
	[READINGTYPEID] [ReadingTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ReadingType_Raw]
