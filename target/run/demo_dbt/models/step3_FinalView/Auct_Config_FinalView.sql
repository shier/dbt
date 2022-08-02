create view "stg"."Auct_Config_FinalView__dbt_tmp" as
    
Select
	[ConfigID],[Stub1],[Stub2],[Created],[UpdateEventID] 
From stg.[Auct_Config_Incr] 
Where [dbt_valid_to] is null
