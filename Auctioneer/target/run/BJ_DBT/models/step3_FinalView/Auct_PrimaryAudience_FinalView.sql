create view "stg"."Auct_PrimaryAudience_FinalView__dbt_tmp" as
    
Select
	[PrimaryAudienceID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_PrimaryAudience_Incr] 
Where [dbt_valid_to] is null
