{{ config(materialized='view',schema='stg')}}
Select
	[SPACESIZEID] [SpaceSizeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SpaceSize_Raw]
