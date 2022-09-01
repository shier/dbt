create view "stg"."Auct_UserContactType_FinalView__dbt_tmp" as
    
Select
	[UserContactTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_UserContactType_Incr] 
Where [dbt_valid_to] is null
