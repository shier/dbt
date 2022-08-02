
Select
	[AuctionLocationID],[Created],[AuctionID],[UpdateEventID],[City],[State],[County] 
From stg.[Auct_AuctionLocation_Incr] 
Where [dbt_valid_to] is null