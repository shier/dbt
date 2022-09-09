{{ config(materialized='view',schema='stg')}}
Select
	[PRIMARYAUDIENCEMEDIAID] [PrimaryAudienceMediaID],
	[MEDIAID] [MediaID],
	[PRIMARYAUDIENCEID] [PrimaryAudienceID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PrimaryAudienceMedia_Raw]
