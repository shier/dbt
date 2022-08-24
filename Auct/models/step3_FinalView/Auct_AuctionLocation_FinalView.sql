{{ config(materialized='view',schema='stg')}}
Select
	[AuctionLocationID],[AuctionID],[City],[State],[County],[Created],[UpdateEventID] 
From stg.[Auct_AuctionLocation_Incr] 
Where [dbt_valid_to] is null