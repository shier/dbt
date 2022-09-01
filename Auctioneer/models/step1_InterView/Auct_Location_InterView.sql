{{ config(materialized='view',schema='stg')}}
Select
	[LOCATIONID] [LocationID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Location_Raw]
