create view "stg"."Auct_ItemType_FinalView__dbt_tmp" as
    
Select
	[ItemTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ItemType_Incr] 
Where [dbt_valid_to] is null
