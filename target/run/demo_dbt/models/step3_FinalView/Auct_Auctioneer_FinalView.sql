create view "stg"."Auct_Auctioneer_FinalView__dbt_tmp" as
    
Select
	[AuctioneerID],[Active],[ContactID],[Created],[UpdateEventID] 
From stg.[Auct_Auctioneer_Incr] 
Where [dbt_valid_to] is null
