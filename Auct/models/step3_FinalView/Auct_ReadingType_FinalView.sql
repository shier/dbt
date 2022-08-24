{{ config(materialized='view',schema='stg')}}
Select
	[ReadingTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ReadingType_Incr] 
Where [dbt_valid_to] is null