create view "stg"."Auct_ProductServiceType_FinalView__dbt_tmp" as
    
Select
	[ProductServiceTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ProductServiceType_Incr] 
Where [dbt_valid_to] is null
