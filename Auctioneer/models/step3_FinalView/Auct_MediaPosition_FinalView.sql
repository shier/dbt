{{ config(materialized='view',schema='stg')}}
Select
	[MediaPositionID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_MediaPosition_Incr] 
Where [dbt_valid_to] is null