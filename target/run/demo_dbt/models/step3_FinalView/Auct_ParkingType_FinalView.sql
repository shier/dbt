create view "stg"."Auct_ParkingType_FinalView__dbt_tmp" as
    
Select
	[ParkingTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ParkingType_Incr] 
Where [dbt_valid_to] is null
