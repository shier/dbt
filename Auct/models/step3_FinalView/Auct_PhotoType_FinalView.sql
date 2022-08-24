{{ config(materialized='view',schema='stg')}}
Select
	[PhotoTypeID],[Name],[Created],[UpdateEventID],[ItemTypeID],[PhotoFileName] 
From stg.[Auct_PhotoType_Incr] 
Where [dbt_valid_to] is null