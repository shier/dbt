create view "stg"."Auct_SponsorLead_FinalView__dbt_tmp" as
    
Select
	[SponsorLeadID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_SponsorLead_Incr] 
Where [dbt_valid_to] is null
