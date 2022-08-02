
Select
	[SponsorID],[CustomerAccountID],[SponsorStatusID],[SponsorLeadID],[UpdateEventID],[AddressID],[TermStart],[TermEnd],[Created] 
From stg.[Auct_Sponsor_Incr] 
Where [dbt_valid_to] is null