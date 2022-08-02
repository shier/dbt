
Select
	[BlockBidID],[StartTime],[EndTime],[Created],[DocketID],[UpdateEventID],[AskingBID],[HighBID] 
From stg.[Auct_BlockBid_Incr] 
Where [dbt_valid_to] is null