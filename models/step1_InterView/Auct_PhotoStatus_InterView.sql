{{ config(materialized='view',schema='stg')}}
Select
	[PHOTOSTATUSID] [PhotoStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PhotoStatus_Raw]
