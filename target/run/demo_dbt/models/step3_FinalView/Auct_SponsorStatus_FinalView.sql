create view "stg"."Auct_SponsorStatus_FinalView__dbt_tmp" as
    
Select
	[SponsorStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_SponsorStatus_Incr] 
Where [dbt_valid_to] is null
