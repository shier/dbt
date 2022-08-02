create view "stg"."Auct_IndustryType_FinalView__dbt_tmp" as
    
Select
	[IndustryTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_IndustryType_Incr] 
Where [dbt_valid_to] is null
