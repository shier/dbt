create view "stg"."Auct_CarOptioncar_FinalView__dbt_tmp" as
    
Select
	[CarOptioncarID],[CarOptionID],[CarID],[Created],[UpdateEventID] 
From stg.[Auct_CarOptioncar_Incr] 
Where [dbt_valid_to] is null
