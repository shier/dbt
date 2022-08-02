{{ config(materialized='view',schema='stg')}}
Select
	[CAROPTIONID] [CarOptionID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarOption_Raw]
