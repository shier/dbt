{{ config(materialized='view',schema='stg')}}
Select
	[BoothID],[LocationID],[AuctionID],[AmpsRequired],[VoltsRequired],[Created],[UpdateEventID] 
From stg.[Auct_Booth_Incr] 
Where [dbt_valid_to] is null