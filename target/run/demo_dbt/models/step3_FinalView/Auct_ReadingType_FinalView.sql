create view "stg"."Auct_ReadingType_FinalView__dbt_tmp" as
    
Select
	[ReadingTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ReadingType_Incr] 
Where [dbt_valid_to] is null
