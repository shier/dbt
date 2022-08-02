create view "stg"."Auct_AuctionLocation_FinalView__dbt_tmp" as
    
Select
	[AuctionLocationID],[AuctionID],[City],[State],[County],[Created],[UpdateEventID] 
From stg.[Auct_AuctionLocation_Incr] 
Where [dbt_valid_to] is null
