{{ config(materialized='view',schema='stg')}}
Select
	[MEDIAPOSITIONID] [MediaPositionID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaPosition_Raw]
