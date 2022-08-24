create view "stg"."Auct_SponsorStatus_InterView__dbt_tmp" as
    
Select
	[SPONSORSTATUSID] [SponsorStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorStatus_Raw]
