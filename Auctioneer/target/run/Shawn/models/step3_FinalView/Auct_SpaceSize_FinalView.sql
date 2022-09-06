create view "stg"."Auct_SpaceSize_FinalView__dbt_tmp" as
    
Select
	[SpaceSizeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_SpaceSize_Incr] 
Where [dbt_valid_to] is null
