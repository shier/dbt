{{ config(materialized='view',schema='stg')}}
Select
	[SponsorID],[CustomerAccountID],[SponsorStatusID],[SponsorLeadID],[TermStart],[TermEnd],[Created],[UpdateEventID],[AddressID] 
From stg.[Auct_Sponsor_Incr] 
Where [dbt_valid_to] is null