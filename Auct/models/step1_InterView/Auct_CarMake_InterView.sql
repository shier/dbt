{{ config(materialized='view',schema='stg')}}
Select
	[CARMAKEID] [CarMakeID],
	[ACTIVE] [Active],
	[WEBACTIVE] [WebActive],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarMake_Raw]
