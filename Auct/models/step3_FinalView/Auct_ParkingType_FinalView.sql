{{ config(materialized='view',schema='stg')}}
Select
	[ParkingTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ParkingType_Incr] 
Where [dbt_valid_to] is null