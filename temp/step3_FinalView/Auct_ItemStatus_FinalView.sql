{{ config(materialized='view',schema='stg')}}
Select
	[ItemStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ItemStatus_Incr] 
Where [dbt_valid_to] is null