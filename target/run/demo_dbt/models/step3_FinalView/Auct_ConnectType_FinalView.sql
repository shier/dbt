create view "stg"."Auct_ConnectType_FinalView__dbt_tmp" as
    
Select
	[ConnectTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ConnectType_Incr] 
Where [dbt_valid_to] is null
