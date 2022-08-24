{{ config(materialized='view',schema='stg')}}
Select
	[BADGETYPEID] [BadgeTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_BadgeType_Raw]
