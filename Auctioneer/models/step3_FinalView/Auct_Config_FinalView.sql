{{ config(materialized='view',schema='stg')}}
Select
	[ConfigID],[Stub1],[Stub2],[Created],[UpdateEventID] 
From stg.[Auct_Config_Incr] 
Where [dbt_valid_to] is null