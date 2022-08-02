create view "stg"."Auct_TireManufacturer_FinalView__dbt_tmp" as
    
Select
	[TireManufacturerID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_TireManufacturer_Incr] 
Where [dbt_valid_to] is null
