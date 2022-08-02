{{ config(materialized='view',schema='stg')}}
Select
	[CARTRIMID] [CarTrimID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarTrim_Raw]
