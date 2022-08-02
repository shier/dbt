create view "stg"."Auct_MediaType_FinalView__dbt_tmp" as
    
Select
	[MediaTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_MediaType_Incr] 
Where [dbt_valid_to] is null
