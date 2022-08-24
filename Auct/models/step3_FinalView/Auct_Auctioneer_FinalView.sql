{{ config(materialized='view',schema='stg')}}
Select
	[AuctioneerID],[Active],[ContactID],[Created],[UpdateEventID] 
From stg.[Auct_Auctioneer_Incr] 
Where [dbt_valid_to] is null