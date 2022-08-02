{{ config(materialized='view',schema='stg')}}
Select
	[SpaceSizeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_SpaceSize_Incr] 
Where [dbt_valid_to] is null