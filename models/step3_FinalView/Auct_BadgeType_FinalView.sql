{{ config(materialized='view',schema='stg')}}
Select
	[BadgeTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_BadgeType_Incr] 
Where [dbt_valid_to] is null