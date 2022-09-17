
Select
	cast([SponsorID] as int) [SPONSORID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([SponsorStatusID] as int) [SPONSORSTATUSID],
	cast([SponsorLeadID] as int) [SPONSORLEADID],
	cast([TermStart] as datetime) [TERMSTART],
	cast([TermEnd] as datetime) [TERMEND],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([AddressID] as int) [ADDRESSID] 
From stg.[Auct_Sponsor_FinalView]