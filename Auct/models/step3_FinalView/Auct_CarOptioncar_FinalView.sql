{{ config(materialized='view',schema='stg')}}
Select
	[CarOptioncarID],[CarOptionID],[CarID],[Created],[UpdateEventID] 
From stg.[Auct_CarOptioncar_Incr] 
Where [dbt_valid_to] is null