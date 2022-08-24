{{ config(materialized='view',schema='stg')}}
Select
	[UserContactTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_UserContactType_Incr] 
Where [dbt_valid_to] is null