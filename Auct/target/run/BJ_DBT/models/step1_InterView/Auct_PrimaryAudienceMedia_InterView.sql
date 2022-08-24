create view "dbo_stg"."Auct_PrimaryAudienceMedia_InterView__dbt_tmp" as
    
Select
	[PRIMARYAUDIENCEMEDIAID] [PrimaryAudienceMediaID],
	[MEDIAID] [MediaID],
	[PRIMARYAUDIENCEID] [PrimaryAudienceID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PrimaryAudienceMedia_Raw]
