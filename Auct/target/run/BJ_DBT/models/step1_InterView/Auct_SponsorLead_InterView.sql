create view "dbo_stg"."Auct_SponsorLead_InterView__dbt_tmp" as
    
Select
	[SPONSORLEADID] [SponsorLeadID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorLead_Raw]
