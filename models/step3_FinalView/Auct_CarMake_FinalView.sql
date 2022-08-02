{{ config(materialized='view',schema='stg')}}
Select
	[CarMakeID],[Active],[WebActive],[Name],[Created],[UpdateEventID] 
From stg.[Auct_CarMake_Incr] 
Where [dbt_valid_to] is null