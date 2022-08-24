{{ config(materialized='view',schema='stg')}}
Select
	[PRIMARYAUDIENCEID] [PrimaryAudienceID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PrimaryAudience_Raw]
