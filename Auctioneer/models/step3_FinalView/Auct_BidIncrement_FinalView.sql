{{ config(materialized='view',schema='stg')}}
Select
	[BidIncrementID],[IncrementValue],[Created],[UpdateEventID] 
From stg.[Auct_BidIncrement_Incr] 
Where [dbt_valid_to] is null