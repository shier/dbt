create view "stg"."Auct_PrimaryAudience_InterView__dbt_tmp" as
    
Select
	[PRIMARYAUDIENCEID] [PrimaryAudienceID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PrimaryAudience_Raw]
