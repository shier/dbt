{{ config(materialized='view',schema='stg')}}
Select
	[CarTrimID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_CarTrim_Incr] 
Where [dbt_valid_to] is null