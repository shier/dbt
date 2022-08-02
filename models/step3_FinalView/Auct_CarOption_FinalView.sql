{{ config(materialized='view',schema='stg')}}
Select
	[CarOptionID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_CarOption_Incr] 
Where [dbt_valid_to] is null