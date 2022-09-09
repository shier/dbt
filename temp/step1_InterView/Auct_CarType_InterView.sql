{{ config(materialized='view',schema='stg')}}
Select
	[CARTYPEID] [CarTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarType_Raw]
