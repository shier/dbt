create view "stg"."Auct_PrimaryAudienceMedia_FinalView__dbt_tmp" as
    
Select
	[PrimaryAudienceMediaID],[MediaID],[PrimaryAudienceID],[Created],[UpdateEventID] 
From stg.[Auct_PrimaryAudienceMedia_Incr] 
Where [dbt_valid_to] is null
