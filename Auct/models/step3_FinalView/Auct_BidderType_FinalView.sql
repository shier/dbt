{{ config(materialized='view',schema='stg')}}
Select
	[BidderTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_BidderType_Incr] 
Where [dbt_valid_to] is null