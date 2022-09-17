
Select
	cast([SponsorLeadID] as int) [SPONSORLEADID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SponsorLead_FinalView]