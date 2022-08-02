create view "stg"."Auct_RequestType_FinalView__dbt_tmp" as
    
Select
	[RequestTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_RequestType_Incr] 
Where [dbt_valid_to] is null
