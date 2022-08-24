{{ config(materialized='view',schema='stg')}}
Select
	[TireManufacturerID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_TireManufacturer_Incr] 
Where [dbt_valid_to] is null