create view "stg"."Auct_ItemStatus_FinalView__dbt_tmp" as
    
Select
	[ItemStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ItemStatus_Incr] 
Where [dbt_valid_to] is null
