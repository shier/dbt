{{ config(materialized='view',schema='stg')}}
Select
	[SPONSORLEADID] [SponsorLeadID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorLead_Raw]
